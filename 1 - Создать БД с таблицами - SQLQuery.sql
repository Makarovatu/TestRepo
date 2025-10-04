
USE [master] 
GO 

Create Database Library;
GO 

Use Library;  
GO 


Create Table Genre (Id Int Primary key identity (1, 1),
					NameOfGenre Nvarchar(40) Not Null);
GO 

Create Table Country (Id Int Primary key identity (1, 1),
						Country Nvarchar (50) Not Null);

GO 
Create Table Author (ID Int Primary key identity (1, 1),
						NameAuthor Nvarchar (50) Not Null,
						SurnameAuthor Nvarchar (50) Not Null,
						CountryID INT Not Null,
						FOREIGN KEY (CountryId) REFERENCES Country (Id),
						Birthday Date Not Null );
GO 

Create Table Readers (ID Int Primary key identity (1, 1),
						NameaReader Nvarchar (50) Not Null,
						SurnameReader Nvarchar (50) Not Null,
						Email VARCHAR(100) Not Null,
						RegDate Date Not Null);

GO 

Create Table Books (ID Int Primary key identity (1, 1),
					NameBook Nvarchar (200) Not Null,
					AuthorBookID INT,
					FOREIGN KEY (AuthorBookID) References Author (ID),
					GenreId INT,
					FOREIGN KEY (GenreID) References Genre (ID),
					YPublic Date Not Null,
					Availabil Bit Not Null);

GO 

Create Table IssuedBook	(ID Int Primary key identity (1, 1),
							BookId INT Not Null,
							FOREIGN KEY (BookID) References Books (ID),
							ReaderId Int Not Null,
							FOREIGN KEY (ReaderID) References Readers (ID),
							IssuedDate Date Not Null,
							ReturnDate Date Null --не возвращены (когда ReturnDate IS NULL)
						);
GO 
