



Use Library;  
GO 
INSERT INTO Country (Country) 
VALUES 
    ('Франция'),
    ('СССР'),
    ('Россия'),
    ('Грузия'),
    ('Китай'),
    ('США'),
    ('Великобритания'),
    ('Болгария'),

	('Барбадос'),
	('Канада'),
	('Габон'),
	('Индия'),
	('Италия');
	GO

	
INSERT INTO Genre (NameOfGenre) 
VALUES 
    ('детектив'),
    ('триллер'),
    ('роман'),
    ('научная фантастика'),
    ('философский роман'),
    ('роман-эпопея'),
    ('сатирический роман-антиутопия'),
    ('реализм'),
    ('готический роман'),
    ('шпионский детектив'),
    ('зарубежный детектив'),
    ('психологический триллер'),
    ('современная зарубежная литература'),
    ('психологическая проза'),
    ('трагикомедия'),
    ('образование'),
    ('программирование'),
	
	('сказка'),
	('ода'),
	('драмма'),
	('трагедия'),
	('эпос');
	GO

	
INSERT INTO Author (NameAuthor, SurnameAuthor, CountryID, Birthday) 
VALUES 
    ('Мишель', 'Бюсси', (SELECT Id FROM Country WHERE Country = 'Франция'), '1965-04-29'),
    ('Жан-Кристоф', 'Гранже', (SELECT Id FROM Country WHERE Country = 'Франция'), '1961-07-15'),
    ('Виктор', 'Пелевин', (SELECT Id FROM Country WHERE Country = 'СССР'), '1962-11-22'),
    ('Михаил', 'Булгаков', (SELECT Id FROM Country WHERE Country = 'Россия'), '1891-05-03'),
    ('Жюль', 'Верн', (SELECT Id FROM Country WHERE Country = 'Франция'), '1828-02-08'),
    ('Аркадий и Борис', 'Стругацкие', (SELECT Id FROM Country WHERE Country = 'Россия'), '1925-01-01'),
    ('Виктор', 'Гюго', (SELECT Id FROM Country WHERE Country = 'Франция'), '1802-02-26'),
    ('Лао', 'Шэ', (SELECT Id FROM Country WHERE Country = 'Китай'), '1899-02-03'),
    ('Мао', 'Дун', (SELECT Id FROM Country WHERE Country = 'Китай'), '1896-07-04'),
    ('Герман', 'Мелвилл', (SELECT Id FROM Country WHERE Country = 'США'), '1819-08-01'),
    ('Оскар', 'Уайльд', (SELECT Id FROM Country WHERE Country = 'Великобритания'), '1854-10-16'),
    ('Джером', 'Сэлинджер', (SELECT Id FROM Country WHERE Country = 'США'), '1919-01-01'),
    ('Борис', 'Акунин', (SELECT Id FROM Country WHERE Country = 'СССР'), '1956-05-20'),
    ('Грэм', 'Барнет', (SELECT Id FROM Country WHERE Country = 'Великобритания'), '1967-01-01'),
    ('Фредрик', 'Бакман', (SELECT Id FROM Country WHERE Country = 'Великобритания'), '1981-01-01'),
    ('Светлин', 'Наков', (SELECT Id FROM Country WHERE Country = 'Болгария'), '1980-01-01'),
    ('Уолтер', 'Шилдс', (SELECT Id FROM Country WHERE Country = 'Великобритания'), '1979-01-01'),
	
	('Кир', 'Булычёв', (SELECT Id FROM Country WHERE Country = 'СССР'), '1934-10-18'),
	('Валерий', 'Брюсов', (SELECT Id FROM Country WHERE Country = 'СССР'), '1873-12-13'),
	('Эдуард', 'Асадов', (SELECT Id FROM Country WHERE Country = 'СССР'), '1923-09-07'),
	('Агния', 'Барто', (SELECT Id FROM Country WHERE Country = 'СССР'), '1901-02-17'),
	('Аркадий', 'Гайдар', (SELECT Id FROM Country WHERE Country = 'СССР'), '1904-01-22'),
	('Александр', 'Пушкин', (SELECT Id FROM Country WHERE Country = 'Россия'), '1799-05-26'),
	
	('Рагим', 'Джафаров', (SELECT Id FROM Country WHERE Country = 'Россия'), '1992-08-21'),
	('Алексей', 'Поляринов', (SELECT Id FROM Country WHERE Country = 'Россия'), '1986-12-27'),
	('Вера', 'Богданова', (SELECT Id FROM Country WHERE Country = 'Россия'), '1986-07-26');
GO


INSERT INTO Readers (NameaReader, SurnameReader, Email, RegDate) 
VALUES 
    ('Алексей', 'Макаров', 'makaroff@gmail.com', GETDATE()), -- используем для RegDate текущую дату
    ('Денис', 'Володин', 'volodindi@mail.ru', GETDATE()),
    ('Ольга', 'Александрова', 'olyaa@mail.ru', GETDATE()),
    ('Федор', 'Ушков', 'uxo@yandex.ru', GETDATE()),
    ('Евгений', 'Коршунов', 'johny@mail.ru', GETDATE());
	GO

	
INSERT INTO Books (NameBook, AuthorBookID, GenreId, YPublic, Availabil) 
VALUES 
    ('Черные кувшинки', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Мишель' AND SurnameAuthor = 'Бюсси'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'детектив'), '2016-01-01', 1),

    
	
    ('Под опасным солнцем', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Мишель' AND SurnameAuthor = 'Бюсси'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'детектив'), '2021-01-01', 1),
    
    ('Багровые реки', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Жан-Кристоф' AND SurnameAuthor = 'Гранже'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'детектив'), '1998-01-01', 1),
    
    ('Лонтано', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Жан-Кристоф' AND SurnameAuthor = 'Гранже'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'триллер'), '2016-01-01', 1),
    
    ('Омон Ра', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Виктор' AND SurnameAuthor = 'Пелевин'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'триллер'), '1991-01-01', 1),
    
    ('Чапаев и пустота', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Виктор' AND SurnameAuthor = 'Пелевин'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'роман'), '1996-01-01', 1),
    
    ('A Sinistra', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Виктор' AND SurnameAuthor = 'Пелевин'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'роман'), '2025-01-01', 1),
    
    ('Мастер и Маргарита', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Михаил' AND SurnameAuthor = 'Булгаков'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'роман'), '1973-01-01', 1),
    
    ('Белая гвардия', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Михаил' AND SurnameAuthor = 'Булгаков'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'роман'), '1925-01-01', 1),
    
    ('Двадцать тысяч лье под водой', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Жюль' AND SurnameAuthor = 'Верн'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'научная фантастика'), '1869-01-01', 1),
    
    ('Трудно быть богом', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Аркадий и Борис' AND SurnameAuthor = 'Стругацкие'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'научная фантастика'), '1964-01-01', 1),
    
    ('Пикник на обочине', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Аркадий и Борис' AND SurnameAuthor = 'Стругацкие'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'научная фантастика'), '1972-01-01', 1),
    
    ('Собор Парижской Богоматери', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Виктор' AND SurnameAuthor = 'Гюго'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'роман-эпопея'), '1831-01-01', 1),
    
    ('Записки о кошачьем городе', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Лао' AND SurnameAuthor = 'Шэ'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'сатирический роман-антиутопия'), '1932-01-01', 1),
    
    ('Полночь', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Мао' AND SurnameAuthor = 'Дун'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'роман'), '1933-01-01', 1),
    
    ('Моби Дик', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Герман' AND SurnameAuthor = 'Мелвилл'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'роман'), '1851-01-01', 1),
    
    ('Портрет Дориана Грея', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Оскар' AND SurnameAuthor = 'Уайльд'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'готический роман'), '1890-01-01', 1),
    
    ('Над пропастью во ржи', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Джером' AND SurnameAuthor = 'Сэлинджер'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'роман'), '1951-01-01', 1),
    
    ('Турецкий Гамбит', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Борис' AND SurnameAuthor = 'Акунин'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'шпионский детектив'), '1998-01-01', 1),
    
    ('Случай из практики', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Грэм' AND SurnameAuthor = 'Барнет'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'зарубежный детектив'), '2023-01-01', 1),
    
    ('Вторая жизнь Уве', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Фредрик' AND SurnameAuthor = 'Бакман'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'современная зарубежная литература'), '2012-01-01', 1),
    
    ('Тревожные люди', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Фредрик' AND SurnameAuthor = 'Бакман'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'психологическая проза'), '2019-01-01', 1),
    
    ('C++ Основы программирования', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Светлин' AND SurnameAuthor = 'Наков'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'образование'), '2024-01-01', 1),
    
    ('SQL: быстрое погружение', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Уолтер' AND SurnameAuthor = 'Шилдс'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'образование'), '2022-01-01', 1),
	 

	 ('Программирование на VBasic', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Светлин' AND SurnameAuthor = 'Наков'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'образование'), '2021-04-03', 1),
    
    ('Программирование для начинающих', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Уолтер' AND SurnameAuthor = 'Шилдс'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'образование'), '2024-07-02', 1),
	 
	 ('Программирование это просто', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Светлин' AND SurnameAuthor = 'Наков'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'образование'), '2019-03-04', 1),
    
    ('Программирование на SQL', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Уолтер' AND SurnameAuthor = 'Шилдс'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'образование'), '2023-05-04', 1),

	 ('Программирование на C#', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Светлин' AND SurnameAuthor = 'Наков'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'образование'), '2009-02-01', 1),
    
    ('Программирование баз данных', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Уолтер' AND SurnameAuthor = 'Шилдс'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'образование'), '2025-02-04', 1),

	 ('Программирование сайтов на Blazor', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Светлин' AND SurnameAuthor = 'Наков'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'образование'), '2025-04-12', 1),
    
    ('Программирование в MSSQL', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Уолтер' AND SurnameAuthor = 'Шилдс'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'образование'), '2019-03-22', 1),



	 ('Будущее начинается сегодня', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Кир' AND SurnameAuthor = 'Булычёв'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'научная фантастика'), '1982-01-01', 1),

	 ('Золушка на рынке', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Кир' AND SurnameAuthor = 'Булычёв'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'научная фантастика'), '1999-01-01', 1),

	 ('Гений и злодейство', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Кир' AND SurnameAuthor = 'Булычёв'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'научная фантастика'), '2000-01-01', 1),
	 
	 ('Евгений Онегин', 
     (SELECT ID FROM Author WHERE NameAuthor = 'Александр' AND SurnameAuthor = 'Пушкин'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = 'драмма'), '1831-01-01', 1);

	GO


	
INSERT INTO IssuedBook (BookId, ReaderId, IssuedDate, ReturnDate) 
VALUES 
    -- Книги, которые уже возвращены
    ((SELECT ID FROM Books WHERE NameBook = 'Черные кувшинки'), 
     (SELECT ID FROM Readers WHERE SurnameReader = 'Макаров'), 
     '2024-01-15', '2024-02-01'),
    
    ((SELECT ID FROM Books WHERE NameBook = 'Турецкий Гамбит'), 
     (SELECT ID FROM Readers WHERE SurnameReader = 'Володин'), 
     '2024-02-10', '2024-03-05'),
    
    ((SELECT ID FROM Books WHERE NameBook = 'Мастер и Маргарита'), 
     (SELECT ID FROM Readers WHERE SurnameReader = 'Александрова'), 
     '2024-03-01', '2024-03-20'),
    
    ((SELECT ID FROM Books WHERE NameBook = 'Портрет Дориана Грея'), 
     (SELECT ID FROM Readers WHERE SurnameReader = 'Ушков'), 
     '2024-04-05', '2024-04-25'),
    
    -- Книги, которые еще не возвращены (ReturnDate null)
    ((SELECT ID FROM Books WHERE NameBook = 'Под опасным солнцем'), 
     (SELECT ID FROM Readers WHERE SurnameReader = 'Коршунов'), 
     '2024-05-10', NULL),
    
    ((SELECT ID FROM Books WHERE NameBook = 'C++ Основы программирования'), 
     (SELECT ID FROM Readers WHERE SurnameReader = 'Макаров'), 
     '2024-05-15', NULL),
    
    -- Книги с просроченным возвратом
    ((SELECT ID FROM Books WHERE NameBook = 'Над пропастью во ржи'), 
     (SELECT ID FROM Readers WHERE SurnameReader = 'Володин'), 
     '2024-04-01', NULL), 
    
    ((SELECT ID FROM Books WHERE NameBook = 'Тревожные люди'), 
     (SELECT ID FROM Readers WHERE SurnameReader = 'Александрова'), 
     '2024-04-20', NULL); 

GO

