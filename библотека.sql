вркаенроанонгопр сиичп


Use Were;

Create Table Genre
(Id Int Primary key identity (1, 1),
NameOfGenre Nvarchar(30) Not Null,
)

Create Table Country
(Id Int Primary key identity (1, 1),
Country Nvarchar (50) Not Null,
)

Create Table Author
(ID Int Primary key identity (1, 1),
NameAuthor Nvarchar (50) Not Null,
SurnameAuthor Nvarchar (50) Not Null,
CountryID INT Not Null,
FOREIGN KEY (CountryId) REFERENCES Country (Id),
Birthday Date Not Null 
)


Create Table Readers
(ID Int Primary key identity (1, 1),
NameaReader Nvarchar (50) Not Null,
SurnameReader Nvarchar (50) Not Null,
Email VARCHAR(100) Not Null,
RegDate Date Not Null
)

Create Table Books
(ID Int Primary key identity (1, 1),
NameBook Nvarchar (200) Not Null,
AuthorBookID INT,
FOREIGN KEY (AuthorBookID) References Author (ID),
GenreId INT,
FOREIGN KEY (GenreID) References Genre (ID),
YPublic Date Not Null,
Availabil Bit Not Null
)

Create Table IssuedBook
(ID Int Primary key identity (1, 1),
BookId INT Not Null,
FOREIGN KEY (BookID) References Books (ID),
ReaderId Int Not Null,
FOREIGN KEY (ReaderID) References Readers (ID),
IssuedDate Date Not Null,
ReturnDate Date Not Null
);
Insert Into Author (Id, Nameauthor, Surnameauthor, Country, Birthday)
Values (Artur, ConanDoil, GreatBritan, 18590522);
Insert Into Author (Nameauthor, Surnameauthor, Country, Birthday)
Values (Mikhail, Bulgakov, TheRussianEmpire, 18910515);
Insert Into Readers (NameRaeder, SurnameReader, Email, Regdate) 
Values (Ivanov, Aleksey, ivanov@mail.ru);
Insert Into Readers (NameRaeder, SurnameReader, Email, Regdate)
Values (Petrov, Oleg, petrovoleg@gmail.com);
Insert Into Books (Id, NameBook, AuthorBook, Genre, YPublic, Availabil)
Values (978-3-16-148410-0, The MasterandMargarita, Mikhail Bulgakov, Novel, 1967, Null);
Insert Into Books (NameBook, AuthorBook, Genre, YPublic, Availabil)
Values (Sherlock Holmes Adventures The Hound ofthe Baskervilles, Artur ConanDoil, Detective, 1901, Null);
Insert Into IssuedBook (BookId, RaederId, IssuedDate, ReturnDate)

Values ()

