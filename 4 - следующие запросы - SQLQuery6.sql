
Use Library;  -- �������������  �� � �������� ������� 
GO  --����� ������


--1) ������� ����� , �������� � ������ 2000-2010�� ��� ����� 2020; 

SELECT 
    NameBook AS [�����],
    YEAR(YPublic) AS [��� �������],
    CONCAT(a.NameAuthor, ' ', a.SurnameAuthor) AS [�����]
FROM Books b
JOIN Author a ON b.AuthorBookID = a.ID
WHERE (YEAR(YPublic) BETWEEN 2000 AND 2010) 
   OR (YEAR(YPublic) > 2020)
ORDER BY YPublic; -- ��� �������� ��������� �� �����




--2) �������� ��� ����������� ��� �����, ������� ���� ������ �� �� ���������� (ReturnDate IS NULL),  �������� ���������� � ����������� ����.
--2.1. �������� ����� ��� �����������
UPDATE Books 
SET Availabil = 0 
WHERE ID IN (
			-- �������� id ���� � ������� ReturnDate IS NULL
				SELECT ib.BookId 
				FROM IssuedBook ib 
				WHERE ib.ReturnDate IS NULL
			);

--2.2) ������� ���������� � ����������� ����. 
SELECT 
    b.NameBook AS �����,
    CONCAT(a.NameAuthor, ' ', a.SurnameAuthor) AS �����,
    
	-- ��������� ������� '������' ��������� ���������� � ����������� �����
	CASE 
        WHEN b.Availabil = 1 
			THEN '��������' 
			ELSE '����������'
    END AS ������,

    g.NameOfGenre AS ����,
    YEAR(b.YPublic) AS [��� �������]
FROM Books b
JOIN Author a ON b.AuthorBookID = a.ID
JOIN Genre g ON b.GenreId = g.Id
ORDER BY b.Availabil DESC, b.NameBook;





--3) ��� ����� ����� "������� ����������", �������������� �� 2000 ���� �������� ��� �����������, 
UPDATE Books 
SET Availabil = 0 
WHERE GenreId = (SELECT Id FROM Genre WHERE NameOfGenre = '������� ����������')
  AND YEAR(YPublic) < 2000;




--4) ������ 5 ��������� ����, �������� ������� ���������� �� "����������������" , � ������������� �� ���� ���������� �� ��������.
SELECT TOP 5
    NameBook AS [�������� �����],
    CONCAT(a.NameAuthor, ' ', a.SurnameAuthor) AS [����� �����],
    YEAR(YPublic) AS [��� �������],
    g.NameOfGenre AS [���� �����]
FROM Books b
JOIN Author a ON b.AuthorBookID = a.ID
JOIN Genre g ON b.GenreId = g.Id
WHERE b.NameBook LIKE '����������������%'
ORDER BY b.YPublic DESC;



--5) ����� ���� ������� ������� �������� � ������, �����, � ������� �������� ���� ����� 1950 ���� ���� ��������� �� � ������
-- ����������
-- �� ����� ����, � ��� � ������� ������� ������ ���� ������ - ����� ��������, ������� ���������� � "����������" ���,
-- ����� ��� ����������� ����� �������� ����� ��������

SELECT 
    CONCAT(a.NameAuthor, ' ', a.SurnameAuthor) AS [��� ������],
    c.Country AS ������,
    a.Birthday AS [���� ��������],
    
	--��������� ������� � �����������
	CASE 
        WHEN a.Birthday > '1950-01-01' THEN '������� ����� 1950'
        WHEN c.Country != '������' THEN '�� �� ������'
        ELSE '������' -- �� ������ ������ 
    END AS [���������� ��� �������] 

FROM Author a
JOIN Country c ON a.CountryID = c.Id
WHERE c.Country IN ('������', '�����')
  AND (a.Birthday > '1950-01-01' OR c.Country != '������')
ORDER BY c.Country, a.Birthday;