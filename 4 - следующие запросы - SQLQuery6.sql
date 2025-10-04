
Use Library;  -- установливаем  БД в качестве текущей 
GO  --Конец пакета


--1) вывести книги , изданные в период 2000-2010гг или после 2020; 

SELECT 
    NameBook AS [Книга],
    YEAR(YPublic) AS [Год издания],
    CONCAT(a.NameAuthor, ' ', a.SurnameAuthor) AS [Автор]
FROM Books b
JOIN Author a ON b.AuthorBookID = a.ID
WHERE (YEAR(YPublic) BETWEEN 2000 AND 2010) 
   OR (YEAR(YPublic) > 2020)
ORDER BY YPublic; -- для удобства сортируем по годам




--2) пометить как недоступные все книги, которые были выданы но не возвращены (ReturnDate IS NULL),  обновить информацию о доступности книг.
--2.1. Помечаем книги как недоступные
UPDATE Books 
SET Availabil = 0 
WHERE ID IN (
			-- Выбираем id книг у которых ReturnDate IS NULL
				SELECT ib.BookId 
				FROM IssuedBook ib 
				WHERE ib.ReturnDate IS NULL
			);

--2.2) Выводим информацию о доступности книг. 
SELECT 
    b.NameBook AS Книга,
    CONCAT(a.NameAuthor, ' ', a.SurnameAuthor) AS Автор,
    
	-- добавляем столбец 'Статус' выводящий информацию о доступности книги
	CASE 
        WHEN b.Availabil = 1 
			THEN 'Доступна' 
			ELSE 'Недоступна'
    END AS Статус,

    g.NameOfGenre AS Жанр,
    YEAR(b.YPublic) AS [Год издания]
FROM Books b
JOIN Author a ON b.AuthorBookID = a.ID
JOIN Genre g ON b.GenreId = g.Id
ORDER BY b.Availabil DESC, b.NameBook;





--3) Все книги жанра "научная фантастика", опубликованные до 2000 года пометить как недоступные, 
UPDATE Books 
SET Availabil = 0 
WHERE GenreId = (SELECT Id FROM Genre WHERE NameOfGenre = 'научная фантастика')
  AND YEAR(YPublic) < 2000;




--4) ввести 5 последних книг, название которых начинается на "Программирование" , и отсортировать по году публикации по убыванию.
SELECT TOP 5
    NameBook AS [Название книги],
    CONCAT(a.NameAuthor, ' ', a.SurnameAuthor) AS [Автор книги],
    YEAR(YPublic) AS [Год издания],
    g.NameOfGenre AS [Жанр книги]
FROM Books b
JOIN Author a ON b.AuthorBookID = a.ID
JOIN Genre g ON b.GenreId = g.Id
WHERE b.NameBook LIKE 'Программирование%'
ORDER BY b.YPublic DESC;



--5) Найти всех авторов которые родились в России, Китае, и которые родились либо после 1950 года либо проживают не в России
-- примечание
-- на самом деле, у нас в таблице Авторов только одна Страна - место рождения, поэтому информации о "Проживании" нет,
-- здесь под Проживанием будем понимать метсо рождения

SELECT 
    CONCAT(a.NameAuthor, ' ', a.SurnameAuthor) AS [ФИО Автора],
    c.Country AS Страна,
    a.Birthday AS [Дата рождения],
    
	--добавляем столбец с информацией
	CASE 
        WHEN a.Birthday > '1950-01-01' THEN 'Родился после 1950'
        WHEN c.Country != 'Россия' THEN 'Не из России'
        ELSE 'Другое' -- на всякий случай 
    END AS [Информация для условия] 

FROM Author a
JOIN Country c ON a.CountryID = c.Id
WHERE c.Country IN ('Россия', 'Китай')
  AND (a.Birthday > '1950-01-01' OR c.Country != 'Россия')
ORDER BY c.Country, a.Birthday;