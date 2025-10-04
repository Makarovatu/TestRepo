



Use Library;  
GO 
INSERT INTO Country (Country) 
VALUES 
    ('�������'),
    ('����'),
    ('������'),
    ('������'),
    ('�����'),
    ('���'),
    ('��������������'),
    ('��������'),

	('��������'),
	('������'),
	('�����'),
	('�����'),
	('������');
	GO

	
INSERT INTO Genre (NameOfGenre) 
VALUES 
    ('��������'),
    ('�������'),
    ('�����'),
    ('������� ����������'),
    ('����������� �����'),
    ('�����-������'),
    ('������������ �����-����������'),
    ('�������'),
    ('���������� �����'),
    ('��������� ��������'),
    ('���������� ��������'),
    ('��������������� �������'),
    ('����������� ���������� ����������'),
    ('��������������� �����'),
    ('������������'),
    ('�����������'),
    ('����������������'),
	
	('������'),
	('���'),
	('������'),
	('��������'),
	('����');
	GO

	
INSERT INTO Author (NameAuthor, SurnameAuthor, CountryID, Birthday) 
VALUES 
    ('������', '�����', (SELECT Id FROM Country WHERE Country = '�������'), '1965-04-29'),
    ('���-�������', '������', (SELECT Id FROM Country WHERE Country = '�������'), '1961-07-15'),
    ('������', '�������', (SELECT Id FROM Country WHERE Country = '����'), '1962-11-22'),
    ('������', '��������', (SELECT Id FROM Country WHERE Country = '������'), '1891-05-03'),
    ('����', '����', (SELECT Id FROM Country WHERE Country = '�������'), '1828-02-08'),
    ('������� � �����', '����������', (SELECT Id FROM Country WHERE Country = '������'), '1925-01-01'),
    ('������', '����', (SELECT Id FROM Country WHERE Country = '�������'), '1802-02-26'),
    ('���', '��', (SELECT Id FROM Country WHERE Country = '�����'), '1899-02-03'),
    ('���', '���', (SELECT Id FROM Country WHERE Country = '�����'), '1896-07-04'),
    ('������', '�������', (SELECT Id FROM Country WHERE Country = '���'), '1819-08-01'),
    ('�����', '������', (SELECT Id FROM Country WHERE Country = '��������������'), '1854-10-16'),
    ('������', '���������', (SELECT Id FROM Country WHERE Country = '���'), '1919-01-01'),
    ('�����', '������', (SELECT Id FROM Country WHERE Country = '����'), '1956-05-20'),
    ('����', '������', (SELECT Id FROM Country WHERE Country = '��������������'), '1967-01-01'),
    ('�������', '������', (SELECT Id FROM Country WHERE Country = '��������������'), '1981-01-01'),
    ('�������', '�����', (SELECT Id FROM Country WHERE Country = '��������'), '1980-01-01'),
    ('������', '�����', (SELECT Id FROM Country WHERE Country = '��������������'), '1979-01-01'),
	
	('���', '�������', (SELECT Id FROM Country WHERE Country = '����'), '1934-10-18'),
	('�������', '������', (SELECT Id FROM Country WHERE Country = '����'), '1873-12-13'),
	('������', '������', (SELECT Id FROM Country WHERE Country = '����'), '1923-09-07'),
	('�����', '�����', (SELECT Id FROM Country WHERE Country = '����'), '1901-02-17'),
	('�������', '������', (SELECT Id FROM Country WHERE Country = '����'), '1904-01-22'),
	('���������', '������', (SELECT Id FROM Country WHERE Country = '������'), '1799-05-26'),
	
	('�����', '��������', (SELECT Id FROM Country WHERE Country = '������'), '1992-08-21'),
	('�������', '���������', (SELECT Id FROM Country WHERE Country = '������'), '1986-12-27'),
	('����', '���������', (SELECT Id FROM Country WHERE Country = '������'), '1986-07-26');
GO


INSERT INTO Readers (NameaReader, SurnameReader, Email, RegDate) 
VALUES 
    ('�������', '�������', 'makaroff@gmail.com', GETDATE()), -- ���������� ��� RegDate ������� ����
    ('�����', '�������', 'volodindi@mail.ru', GETDATE()),
    ('�����', '������������', 'olyaa@mail.ru', GETDATE()),
    ('�����', '�����', 'uxo@yandex.ru', GETDATE()),
    ('�������', '��������', 'johny@mail.ru', GETDATE());
	GO

	
INSERT INTO Books (NameBook, AuthorBookID, GenreId, YPublic, Availabil) 
VALUES 
    ('������ ��������', 
     (SELECT ID FROM Author WHERE NameAuthor = '������' AND SurnameAuthor = '�����'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '��������'), '2016-01-01', 1),

    
	
    ('��� ������� �������', 
     (SELECT ID FROM Author WHERE NameAuthor = '������' AND SurnameAuthor = '�����'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '��������'), '2021-01-01', 1),
    
    ('�������� ����', 
     (SELECT ID FROM Author WHERE NameAuthor = '���-�������' AND SurnameAuthor = '������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '��������'), '1998-01-01', 1),
    
    ('�������', 
     (SELECT ID FROM Author WHERE NameAuthor = '���-�������' AND SurnameAuthor = '������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�������'), '2016-01-01', 1),
    
    ('���� ��', 
     (SELECT ID FROM Author WHERE NameAuthor = '������' AND SurnameAuthor = '�������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�������'), '1991-01-01', 1),
    
    ('������ � �������', 
     (SELECT ID FROM Author WHERE NameAuthor = '������' AND SurnameAuthor = '�������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����'), '1996-01-01', 1),
    
    ('A Sinistra', 
     (SELECT ID FROM Author WHERE NameAuthor = '������' AND SurnameAuthor = '�������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����'), '2025-01-01', 1),
    
    ('������ � ���������', 
     (SELECT ID FROM Author WHERE NameAuthor = '������' AND SurnameAuthor = '��������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����'), '1973-01-01', 1),
    
    ('����� �������', 
     (SELECT ID FROM Author WHERE NameAuthor = '������' AND SurnameAuthor = '��������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����'), '1925-01-01', 1),
    
    ('�������� ����� ��� ��� �����', 
     (SELECT ID FROM Author WHERE NameAuthor = '����' AND SurnameAuthor = '����'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '������� ����������'), '1869-01-01', 1),
    
    ('������ ���� �����', 
     (SELECT ID FROM Author WHERE NameAuthor = '������� � �����' AND SurnameAuthor = '����������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '������� ����������'), '1964-01-01', 1),
    
    ('������ �� �������', 
     (SELECT ID FROM Author WHERE NameAuthor = '������� � �����' AND SurnameAuthor = '����������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '������� ����������'), '1972-01-01', 1),
    
    ('����� ��������� ����������', 
     (SELECT ID FROM Author WHERE NameAuthor = '������' AND SurnameAuthor = '����'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����-������'), '1831-01-01', 1),
    
    ('������� � �������� ������', 
     (SELECT ID FROM Author WHERE NameAuthor = '���' AND SurnameAuthor = '��'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '������������ �����-����������'), '1932-01-01', 1),
    
    ('�������', 
     (SELECT ID FROM Author WHERE NameAuthor = '���' AND SurnameAuthor = '���'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����'), '1933-01-01', 1),
    
    ('���� ���', 
     (SELECT ID FROM Author WHERE NameAuthor = '������' AND SurnameAuthor = '�������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����'), '1851-01-01', 1),
    
    ('������� ������� ����', 
     (SELECT ID FROM Author WHERE NameAuthor = '�����' AND SurnameAuthor = '������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '���������� �����'), '1890-01-01', 1),
    
    ('��� ��������� �� ���', 
     (SELECT ID FROM Author WHERE NameAuthor = '������' AND SurnameAuthor = '���������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����'), '1951-01-01', 1),
    
    ('�������� ������', 
     (SELECT ID FROM Author WHERE NameAuthor = '�����' AND SurnameAuthor = '������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '��������� ��������'), '1998-01-01', 1),
    
    ('������ �� ��������', 
     (SELECT ID FROM Author WHERE NameAuthor = '����' AND SurnameAuthor = '������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '���������� ��������'), '2023-01-01', 1),
    
    ('������ ����� ���', 
     (SELECT ID FROM Author WHERE NameAuthor = '�������' AND SurnameAuthor = '������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '����������� ���������� ����������'), '2012-01-01', 1),
    
    ('��������� ����', 
     (SELECT ID FROM Author WHERE NameAuthor = '�������' AND SurnameAuthor = '������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '��������������� �����'), '2019-01-01', 1),
    
    ('C++ ������ ����������������', 
     (SELECT ID FROM Author WHERE NameAuthor = '�������' AND SurnameAuthor = '�����'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����������'), '2024-01-01', 1),
    
    ('SQL: ������� ����������', 
     (SELECT ID FROM Author WHERE NameAuthor = '������' AND SurnameAuthor = '�����'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����������'), '2022-01-01', 1),
	 

	 ('���������������� �� VBasic', 
     (SELECT ID FROM Author WHERE NameAuthor = '�������' AND SurnameAuthor = '�����'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����������'), '2021-04-03', 1),
    
    ('���������������� ��� ����������', 
     (SELECT ID FROM Author WHERE NameAuthor = '������' AND SurnameAuthor = '�����'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����������'), '2024-07-02', 1),
	 
	 ('���������������� ��� ������', 
     (SELECT ID FROM Author WHERE NameAuthor = '�������' AND SurnameAuthor = '�����'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����������'), '2019-03-04', 1),
    
    ('���������������� �� SQL', 
     (SELECT ID FROM Author WHERE NameAuthor = '������' AND SurnameAuthor = '�����'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����������'), '2023-05-04', 1),

	 ('���������������� �� C#', 
     (SELECT ID FROM Author WHERE NameAuthor = '�������' AND SurnameAuthor = '�����'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����������'), '2009-02-01', 1),
    
    ('���������������� ��� ������', 
     (SELECT ID FROM Author WHERE NameAuthor = '������' AND SurnameAuthor = '�����'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����������'), '2025-02-04', 1),

	 ('���������������� ������ �� Blazor', 
     (SELECT ID FROM Author WHERE NameAuthor = '�������' AND SurnameAuthor = '�����'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����������'), '2025-04-12', 1),
    
    ('���������������� � MSSQL', 
     (SELECT ID FROM Author WHERE NameAuthor = '������' AND SurnameAuthor = '�����'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '�����������'), '2019-03-22', 1),



	 ('������� ���������� �������', 
     (SELECT ID FROM Author WHERE NameAuthor = '���' AND SurnameAuthor = '�������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '������� ����������'), '1982-01-01', 1),

	 ('������� �� �����', 
     (SELECT ID FROM Author WHERE NameAuthor = '���' AND SurnameAuthor = '�������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '������� ����������'), '1999-01-01', 1),

	 ('����� � ����������', 
     (SELECT ID FROM Author WHERE NameAuthor = '���' AND SurnameAuthor = '�������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '������� ����������'), '2000-01-01', 1),
	 
	 ('������� ������', 
     (SELECT ID FROM Author WHERE NameAuthor = '���������' AND SurnameAuthor = '������'), 
     (SELECT Id FROM Genre WHERE NameOfGenre = '������'), '1831-01-01', 1);

	GO


	
INSERT INTO IssuedBook (BookId, ReaderId, IssuedDate, ReturnDate) 
VALUES 
    -- �����, ������� ��� ����������
    ((SELECT ID FROM Books WHERE NameBook = '������ ��������'), 
     (SELECT ID FROM Readers WHERE SurnameReader = '�������'), 
     '2024-01-15', '2024-02-01'),
    
    ((SELECT ID FROM Books WHERE NameBook = '�������� ������'), 
     (SELECT ID FROM Readers WHERE SurnameReader = '�������'), 
     '2024-02-10', '2024-03-05'),
    
    ((SELECT ID FROM Books WHERE NameBook = '������ � ���������'), 
     (SELECT ID FROM Readers WHERE SurnameReader = '������������'), 
     '2024-03-01', '2024-03-20'),
    
    ((SELECT ID FROM Books WHERE NameBook = '������� ������� ����'), 
     (SELECT ID FROM Readers WHERE SurnameReader = '�����'), 
     '2024-04-05', '2024-04-25'),
    
    -- �����, ������� ��� �� ���������� (ReturnDate null)
    ((SELECT ID FROM Books WHERE NameBook = '��� ������� �������'), 
     (SELECT ID FROM Readers WHERE SurnameReader = '��������'), 
     '2024-05-10', NULL),
    
    ((SELECT ID FROM Books WHERE NameBook = 'C++ ������ ����������������'), 
     (SELECT ID FROM Readers WHERE SurnameReader = '�������'), 
     '2024-05-15', NULL),
    
    -- ����� � ������������ ���������
    ((SELECT ID FROM Books WHERE NameBook = '��� ��������� �� ���'), 
     (SELECT ID FROM Readers WHERE SurnameReader = '�������'), 
     '2024-04-01', NULL), 
    
    ((SELECT ID FROM Books WHERE NameBook = '��������� ����'), 
     (SELECT ID FROM Readers WHERE SurnameReader = '������������'), 
     '2024-04-20', NULL); 

GO

