
Use Library;  
GO  

--1) ������� �������� ���� ����, �������� ����� 2010 ����; 
SELECT NameBook FROM Books 
WHERE YEAR(YPublic) > 2010;



--2) ������� ��� ������� �� ������ ��� �������; 
SELECT CONCAT(NameAuthor, ' ', SurnameAuthor) AS [��� ������], 
		c.Country AS [������]
FROM Author a
JOIN Country c ON a.CountryID = c.Id
WHERE c.Country IN ('������', '�������');



--3) ������� ����� ������ ����� �� ���� �������; 
SELECT NameBook AS [��������],
    YEAR(YPublic) AS [��� �������],
    CONCAT(a.NameAuthor, ' ', a.SurnameAuthor) AS [�����]
FROM Books b
JOIN Author a ON b.AuthorBookID = a.ID
WHERE YEAR(YPublic) = (SELECT MIN(YEAR(YPublic)) FROM Books);




--4) ������� ���������� ����� ����, ��������� � ����������; 

SELECT DISTINCT g.NameOfGenre AS [���������� �����]
FROM Genre g
JOIN Books b ON g.Id = b.GenreId
ORDER BY g.NameOfGenre; 



--5) ������� ���������, E-mail ������� ������������� �� @mail.ru;
SELECT 
    CONCAT(NameaReader, ' ', SurnameReader) AS [��������],
    Email AS [e-mail]
FROM Readers 
WHERE Email LIKE '%@mail.ru'
ORDER BY SurnameReader; 