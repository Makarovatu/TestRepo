
Use Library;  
GO  

--1) вывести названия всех книг, изданных после 2010 года; 
SELECT NameBook FROM Books 
WHERE YEAR(YPublic) > 2010;



--2) вывести ФИО авторов из России или Франции; 
SELECT CONCAT(NameAuthor, ' ', SurnameAuthor) AS [ФИО автора], 
		c.Country AS [Страна]
FROM Author a
JOIN Country c ON a.CountryID = c.Id
WHERE c.Country IN ('Россия', 'Франция');



--3) вывести самые старые книги по году издания; 
SELECT NameBook AS [Название],
    YEAR(YPublic) AS [Год издания],
    CONCAT(a.NameAuthor, ' ', a.SurnameAuthor) AS [Автор]
FROM Books b
JOIN Author a ON b.AuthorBookID = a.ID
WHERE YEAR(YPublic) = (SELECT MIN(YEAR(YPublic)) FROM Books);




--4) вывести уникальные жанры книг, имеющихся в библиотеке; 

SELECT DISTINCT g.NameOfGenre AS [Уникальные жанры]
FROM Genre g
JOIN Books b ON g.Id = b.GenreId
ORDER BY g.NameOfGenre; 



--5) вывести читателей, E-mail которых заканчивается на @mail.ru;
SELECT 
    CONCAT(NameaReader, ' ', SurnameReader) AS [Читатель],
    Email AS [e-mail]
FROM Readers 
WHERE Email LIKE '%@mail.ru'
ORDER BY SurnameReader; 