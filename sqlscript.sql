REM   Script: Project in IM
REM   gotta save this

CREATE TABLE Borrowers 
( 
Borrower_Id Number(10) Primary Key, 
First_Name Varchar2(20) Not Null, 
Middle_Name Varchar2(20) Not Null, 
Last_Name Varchar2(20) Not Null, 
Birth_Date Date Not Null, 
Borrower_Email Varchar2(20) Unique Not Null, 
Borrower_Password Varchar2(20) Not Null, 
Phone_Number Number(11) Unique Not Null, 
unreturned_books Number(10) Not Null 
);

CREATE TABLE Books 
( 
Book_Id Number(10) Primary Key, 
Book_Title Varchar2(50) Not Null, 
Author_Id Number Not Null, 
Publication_Date Date Not Null, 
Book_Copies Number(20) Not Null, 
Category_Id Number Not Null, 
CONSTRAINT fk_books_authors FOREIGN KEY (author_id) REFERENCES Authors (author_id), 
CONSTRAINT fk_books_categories FOREIGN KEY (category_id) REFERENCES Categories (category_id) 
);

CREATE TABLE Categories 
( 
Category_Id Number(10) Primary Key, 
Category_Name Varchar2(20) Not Null 
);

CREATE TABLE Authors 
( 
Author_Id Number(10) PRIMARY KEY, 
Author_Name Varchar2(30) NOT NULL 
);

CREATE TABLE Transactions 
( 
Transaction_Id Number(10) Primary Key, 
Book_Id Number Not Null, 
Borrower_Id Number Not Null, 
borrower_copies Number(20) NOT NULL, 
transaction_date Date NOT NULL, 
Due_Date Date Not Null, 
CONSTRAINT fk_transactions_books FOREIGN KEY (book_id) REFERENCES Books (book_id), 
CONSTRAINT fk_transactions_borrowers FOREIGN KEY (borrower_id) REFERENCES Borrowers (borrower_id) 
);

CREATE TABLE Return 
( 
Return_Id Number(10) Primary Key, 
Transaction_Id Number Not Null, 
Return_Date Date Not Null, 
Bill_Id Number Not Null, 
Amount_Paid Number(20) Not Null, 
CONSTRAINT fk_return_transactions FOREIGN KEY (transaction_id) REFERENCES Transactions (transaction_id), 
CONSTRAINT fk_return_bills FOREIGN KEY (bill_id) REFERENCES Bills (bill_id) 
);

CREATE TABLE Bills 
( 
Bill_Id Number(10) Primary Key, 
Borrower_Fee Number(20) Not Null, 
Penalty_Fee Number(20) Not Null 
);

CREATE TABLE Borrowers 
( 
Borrower_Id Number(10) Primary Key, 
First_Name Varchar2(20) Not Null, 
Middle_Name Varchar2(20) Not Null, 
Last_Name Varchar2(20) Not Null, 
Birth_Date Date Not Null, 
Borrower_Email Varchar2(20) Unique Not Null, 
Borrower_Password Varchar2(20) Not Null, 
Phone_Number Number(11) Unique Not Null, 
unreturned_books Number(10) Not Null 
);

CREATE TABLE Books 
( 
Book_Id Number(10) Primary Key, 
Book_Title Varchar2(50) Not Null, 
Author_Id Number Not Null, 
Publication_Date Date Not Null, 
Book_Copies Number(20) Not Null, 
Category_Id Number Not Null, 
CONSTRAINT fk_books_authors FOREIGN KEY (author_id) REFERENCES Authors (author_id), 
CONSTRAINT fk_books_categories FOREIGN KEY (category_id) REFERENCES Categories (category_id) 
);

CREATE TABLE Categories 
( 
Category_Id Number(10) Primary Key, 
Category_Name Varchar2(20) Not Null 
);

CREATE TABLE Authors 
( 
Author_Id Number(10) PRIMARY KEY, 
Author_Name Varchar2(30) NOT NULL 
);

CREATE TABLE Transactions 
( 
Transaction_Id Number(10) Primary Key, 
Book_Id Number Not Null, 
Borrower_Id Number Not Null, 
borrower_copies Number(20) NOT NULL, 
transaction_date Date NOT NULL, 
Due_Date Date Not Null, 
CONSTRAINT fk_transactions_books FOREIGN KEY (book_id) REFERENCES Books (book_id), 
CONSTRAINT fk_transactions_borrowers FOREIGN KEY (borrower_id) REFERENCES Borrowers (borrower_id) 
);

CREATE TABLE Return 
( 
Return_Id Number(10) Primary Key, 
Transaction_Id Number Not Null, 
Return_Date Date Not Null, 
Bill_Id Number Not Null, 
Amount_Paid Number(20) Not Null, 
CONSTRAINT fk_return_transactions FOREIGN KEY (transaction_id) REFERENCES Transactions (transaction_id), 
CONSTRAINT fk_return_bills FOREIGN KEY (bill_id) REFERENCES Bills (bill_id) 
);

CREATE TABLE Bills 
( 
Bill_Id Number(10) Primary Key, 
Borrower_Fee Number(20) Not Null, 
Penalty_Fee Number(20) Not Null 
);

select * from borrowers;

select * from Borrowers;

select * from Borrowers;

select * from Books;

select * from Books;

select * from Books;

CREATE TABLE Borrowers 
( 
Borrower_Id Number(10) Primary Key, 
First_Name Varchar2(20) Not Null, 
Middle_Name Varchar2(20) Not Null, 
Last_Name Varchar2(20) Not Null, 
Birth_Date Date Not Null, 
Borrower_Email Varchar2(20) Unique Not Null, 
Borrower_Password Varchar2(20) Not Null, 
Phone_Number Number(11) Unique Not Null, 
unreturned_books Number(10) Not Null 
);

CREATE TABLE Books 
( 
Book_Id Number(10) Primary Key, 
Book_Title Varchar2(50) Not Null, 
Author_Id Number Not Null, 
Publication_Date Date Not Null, 
Book_Copies Number(20) Not Null, 
Category_Id Number Not Null, 
CONSTRAINT fk_books_authors FOREIGN KEY (author_id) REFERENCES Authors (author_id), 
CONSTRAINT fk_books_categories FOREIGN KEY (category_id) REFERENCES Categories (category_id) 
);

CREATE TABLE Categories 
( 
Category_Id Number(10) Primary Key, 
Category_Name Varchar2(20) Not Null 
);

CREATE TABLE Authors 
( 
Author_Id Number(10) PRIMARY KEY, 
Author_Name Varchar2(30) NOT NULL 
);

CREATE TABLE Transactions 
( 
Transaction_Id Number(10) Primary Key, 
Book_Id Number Not Null, 
Borrower_Id Number Not Null, 
borrower_copies Number(20) NOT NULL, 
transaction_date Date NOT NULL, 
Due_Date Date Not Null, 
CONSTRAINT fk_transactions_books FOREIGN KEY (book_id) REFERENCES Books (book_id), 
CONSTRAINT fk_transactions_borrowers FOREIGN KEY (borrower_id) REFERENCES Borrowers (borrower_id) 
);

CREATE TABLE Return 
( 
Return_Id Number(10) Primary Key, 
Transaction_Id Number Not Null, 
Return_Date Date Not Null, 
Bill_Id Number Not Null, 
Amount_Paid Number(20) Not Null, 
CONSTRAINT fk_return_transactions FOREIGN KEY (transaction_id) REFERENCES Transactions (transaction_id), 
CONSTRAINT fk_return_bills FOREIGN KEY (bill_id) REFERENCES Bills (bill_id) 
);

CREATE TABLE Bills 
( 
Bill_Id Number(10) Primary Key, 
Borrower_Fee Number(20) Not Null, 
Penalty_Fee Number(20) Not Null 
);

select firstname, lastname 
from Borrowers;

select firstname 
from Borrowers;

select firstname 
from Borrowers;

select firstname from Employees;

select * from bills;

select * from bills;

desc bills


CREATE TABLE Borrowers 
( 
Borrower_Id Number(10) Primary Key, 
First_Name Varchar2(20) Not Null, 
Middle_Name Varchar2(20) Not Null, 
Last_Name Varchar2(20) Not Null, 
Birth_Date Date Not Null, 
Borrower_Email Varchar2(20) Unique Not Null, 
Borrower_Password Varchar2(20) Not Null, 
Phone_Number Number(11) Unique Not Null, 
unreturned_books Number(10) Not Null 
);

CREATE TABLE Books 
( 
Book_Id Number(10) Primary Key, 
Book_Title Varchar2(50) Not Null, 
Author_Id Number Not Null, 
Publication_Date Date Not Null, 
Book_Copies Number(20) Not Null, 
Category_Id Number Not Null, 
CONSTRAINT fk_books_authors FOREIGN KEY (author_id) REFERENCES Authors (author_id), 
CONSTRAINT fk_books_categories FOREIGN KEY (category_id) REFERENCES Categories (category_id) 
);

CREATE TABLE Categories 
( 
Category_Id Number(10) Primary Key, 
Category_Name Varchar2(20) Not Null 
);

CREATE TABLE Authors 
( 
Author_Id Number(10) PRIMARY KEY, 
Author_Name Varchar2(30) NOT NULL 
);

CREATE TABLE Transactions 
( 
Transaction_Id Number(10) Primary Key, 
Book_Id Number Not Null, 
Borrower_Id Number Not Null, 
borrower_copies Number(20) NOT NULL, 
transaction_date Date NOT NULL, 
Due_Date Date Not Null, 
CONSTRAINT fk_transactions_books FOREIGN KEY (book_id) REFERENCES Books (book_id), 
CONSTRAINT fk_transactions_borrowers FOREIGN KEY (borrower_id) REFERENCES Borrowers (borrower_id) 
);

CREATE TABLE Return 
( 
Return_Id Number(10) Primary Key, 
Transaction_Id Number Not Null, 
Return_Date Date Not Null, 
Bill_Id Number Not Null, 
Amount_Paid Number(20) Not Null, 
CONSTRAINT fk_return_transactions FOREIGN KEY (transaction_id) REFERENCES Transactions (transaction_id), 
CONSTRAINT fk_return_bills FOREIGN KEY (bill_id) REFERENCES Bills (bill_id) 
);

CREATE TABLE Bills 
( 
Bill_Id Number(10) Primary Key, 
Borrower_Fee Number(20) Not Null, 
Penalty_Fee Number(20) Not Null 
);

INSERT INTO borrowers (borrower_id, first_name, middle_name, last_name, birth_date, borrower_email, borrower_password, phone_number, unreturned_books) 
VALUES (1, 'Tristan', 'Goie', 'Dar', '1-JAN-2001', 'dar@gmail.com', 'Peter_Parker', 09999999999, 0);

INSERT INTO borrowers (borrower_id, first_name, middle_name, last_name, birth_date, borrower_email, borrower_password, phone_number, unreturned_books) 
VALUES (2, 'Ranilo', 'Justine', 'Dejumo', '2-FEB-2002', 'jas@gmail.com', 'Captain_Barbel', 09888888888, 1);

INSERT INTO borrowers (borrower_id, first_name, middle_name, last_name, birth_date, borrower_email, borrower_password, phone_number, unreturned_books) 
VALUES (3, 'Gabriel', 'Allen', 'Eustaquio', '3-MAR-2003', 'gab@gmail.com', 'Lastikman', 09777777777, 2);

INSERT INTO borrowers (borrower_id, first_name, middle_name, last_name, birth_date, borrower_email, borrower_password, phone_number, unreturned_books) 
VALUES (4, 'Joshua', 'Aljhen', 'Andaya', '4-APR-2004', 'alj@gmail.com', 'Zoro', 09111111111, 3);

INSERT INTO borrowers (borrower_id, first_name, middle_name, last_name, birth_date, borrower_email, borrower_password, phone_number, unreturned_books) 
VALUES (5, 'Aedrian', 'Joy', 'Serrano', '5-MAY-2005', 'aed@gmail.com', 'Darna', 09000000000, 4);

INSERT INTO borrowers (borrower_id, first_name, middle_name, last_name, birth_date, borrower_email, borrower_password, phone_number, unreturned_books) 
VALUES (6, 'Jhoseph', 'Bigas', 'Familara', '6-JUN-2006', 'jho@gmail.com', 'Robinhood', 0966666666, 5);

INSERT INTO borrowers (borrower_id, first_name, middle_name, last_name, birth_date, borrower_email, borrower_password, phone_number, unreturned_books) 
VALUES (7, 'Jasper', 'Audri', 'Aviles', '7-JUL-2007', 'per@gmail.com', 'Gagamboy', 09555555555, 6);

INSERT INTO borrowers (borrower_id, first_name, middle_name, last_name, birth_date, borrower_email, borrower_password, phone_number, unreturned_books) 
VALUES (8, 'David', 'Jerrano', 'Benitez', '8-AUG-2008', 'dav@gmail.com', 'Superman', 09444444444, 7);

INSERT INTO borrowers (borrower_id, first_name, middle_name, last_name, birth_date, borrower_email, borrower_password, phone_number, unreturned_books) 
VALUES (9, 'John', 'Kirth', 'Castillon', '9-SEP-2009', 'jam@gmail.com', 'Magneto', 09333333333, 8);

INSERT INTO borrowers (borrower_id, first_name, middle_name, last_name, birth_date, borrower_email, borrower_password, phone_number, unreturned_books) 
VALUES (10, 'Cathleen', 'Dianne', 'Deleon', '10-OCT-2010', 'cat@gmail.com', 'Wonder Woman', 09222222222, 9);

select * from borrowers;

select * firstname, lastname 
from borrowers;

select * firstname, lastname from borrowers;

select firstname, lastname 
from borrowers;

select firstname, lastname 
from borrowers;

select firstname, middlename 
from borrowers;

select firstname 
from borrowers;

select first_name, last_name 
from borrowers;

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (1, 'Romantic Baboy', 1, '1-JAN-1991', 5, 1);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (2, 'Kawhni Fun Guy', 2, '2-FEB-1954', 5, 2);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (3, 'Iron Man', 3, '3-MAR-1956', 5, 3);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (4, 'Sherlock', 4, '4-APR-1992', 5, 4);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (5, 'Black Clover', 5, '5-MAY-1957', 5, 5);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (6, 'Your Face', 6, '6-JUN-1990', 5, 6);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (7, 'World War Zero', 7, '7-JUL-1999', 5, 7);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (8, 'Jan Week', 8, '8-AUG-2000', 5, 8);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (9, 'I Mess U', 9, '9-SEP-2002', 5, 9);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (10, 'Zombabe', 10, '10-OCT-2008', 5, 10);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (1, 'Romantic Baboy', 1, '1-JAN-1991', 5, 1);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (2, 'Kawhni Fun Guy', 2, '2-FEB-1954', 5, 2);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (3, 'Iron Man', 3, '3-MAR-1956', 5, 3);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (4, 'Sherlock', 4, '4-APR-1992', 5, 4);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (5, 'Black Clover', 5, '5-MAY-1957', 5, 5);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (6, 'Your Face', 6, '6-JUN-1990', 5, 6);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (7, 'World War Zero', 7, '7-JUL-1999', 5, 7);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (8, 'Jan Week', 8, '8-AUG-2000', 5, 8);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (9, 'I Mess U', 9, '9-SEP-2002', 5, 9);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (10, 'Zombabe', 10, '10-OCT-2008', 5, 10);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (1, 'Romantic Baboy', 1, '1-JAN-1991', 5, 1);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (2, 'Kawhni Fun Guy', 2, '2-FEB-1954', 5, 2);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (3, 'Iron Man', 3, '3-MAR-1956', 5, 3);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (4, 'Sherlock', 4, '4-APR-1992', 5, 4);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (5, 'Black Clover', 5, '5-MAY-1957', 5, 5);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (6, 'Your Face', 6, '6-JUN-1990', 5, 6);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (7, 'World War Zero', 7, '7-JUL-1999', 5, 7);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (8, 'Jan Week', 8, '8-AUG-2000', 5, 8);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (9, 'I Mess U', 9, '9-SEP-2002', 5, 9);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (10, 'Zombabe', 10, '10-OCT-2008', 5, 10);

INSERT INTO Authors(author_id, author_name) 
VALUES (1, 'Tristan Dar');

INSERT INTO Authors(author_id, author_name) 
VALUES (2, 'Gabbi Eustaquio');

INSERT INTO Authors(author_id, author_name) 
VALUES (3, 'Jass Dejumo');

INSERT INTO Authors(author_id, author_name) 
VALUES (4, 'Joy Serrano');

INSERT INTO Authors(author_id, author_name) 
VALUES (5, 'Joseph Familara');

INSERT INTO Authors(author_id, author_name) 
VALUES (6, 'Villar Billiard');

INSERT INTO Authors(author_id, author_name) 
VALUES (7, 'Rachelle Azores');

INSERT INTO Authors(author_id, author_name) 
VALUES (8, 'Jose Rizal');

INSERT INTO Authors(author_id, author_name) 
VALUES (9, 'Kclyn Merza');

INSERT INTO Authors(author_id, author_name) 
VALUES (10, 'Jasper Pagkatipunan');

INSERT INTO Categories (category_id, category_name) 
VALUES (1, 'Romance');

INSERT INTO Categories (category_id, category_name) 
VALUES (2, 'Comedy');

INSERT INTO Categories (category_id, category_name) 
VALUES (3, 'Sci-fi');

INSERT INTO Categories (category_id, category_name) 
VALUES (4, 'Mystery');

INSERT INTO Categories (category_id, category_name) 
VALUES (5, 'Romance');

INSERT INTO Categories (category_id, category_name) 
VALUES (6, 'Horror');

INSERT INTO Categories (category_id, category_name) 
VALUES (7, 'Historical');

INSERT INTO Categories (category_id, category_name) 
VALUES (8, 'Action');

INSERT INTO Categories (category_id, category_name) 
VALUES (9, 'Drama');

INSERT INTO Categories (category_id, category_name) 
VALUES (10, 'Thriller');

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (1, 'Romantic Baboy', 1, '1-JAN-1991', 5, 1);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (2, 'Kawhni Fun Guy', 2, '2-FEB-1954', 5, 2);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (3, 'Iron Man', 3, '3-MAR-1956', 5, 3);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (4, 'Sherlock', 4, '4-APR-1992', 5, 4);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (5, 'Black Clover', 5, '5-MAY-1957', 5, 5);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (6, 'Your Face', 6, '6-JUN-1990', 5, 6);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (7, 'World War Zero', 7, '7-JUL-1999', 5, 7);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (8, 'Jan Week', 8, '8-AUG-2000', 5, 8);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (9, 'I Mess U', 9, '9-SEP-2002', 5, 9);

INSERT INTO books (book_id, book_title, author_id, publication_date, book_copies, category_id) 
VALUES (10, 'Zombabe', 10, '10-OCT-2008', 5, 10);

INSERT INTO bills (bill_id, borrower_fee, penalty_fee) 
VALUES (1, 100, 0);

INSERT INTO bills (bill_id, borrower_fee, penalty_fee) 
VALUES (2, 200, 0);

INSERT INTO bills (bill_id, borrower_fee, penalty_fee) 
VALUES (3, 300, 0);

INSERT INTO bills (bill_id, borrower_fee, penalty_fee) 
VALUES (4, 400, 0);

INSERT INTO bills (bill_id, borrower_fee, penalty_fee) 
VALUES (5, 500, 0);

INSERT INTO bills (bill_id, borrower_fee, penalty_fee) 
VALUES (6, 100, 0);

INSERT INTO bills (bill_id, borrower_fee, penalty_fee) 
VALUES (7, 200, 0);

INSERT INTO bills (bill_id, borrower_fee, penalty_fee) 
VALUES (8, 300, 0);

INSERT INTO bills (bill_id, borrower_fee, penalty_fee) 
VALUES (9, 400, 0);

INSERT INTO bills (bill_id, borrower_fee, penalty_fee) 
VALUES (10, 500, 0);

INSERT INTO transactions (transaction_id, book_id, borrower_id, borrower_copies, transaction_date, due_date) 
VALUES (1, 1, 1, 1, '1-JAN-2001', '1-FEB-2001');

INSERT INTO transactions (transaction_id, book_id, borrower_id, borrower_copies, transaction_date, due_date) 
VALUES (2, 2, 2, 2, '2-JAN-2002', '2-FEB-2002');

INSERT INTO transactions (transaction_id, book_id, borrower_id, borrower_copies, transaction_date, due_date) 
VALUES (3, 3, 3, 3, '3-JAN-2003', '3-FEB-2003');

INSERT INTO transactions (transaction_id, book_id, borrower_id, borrower_copies, transaction_date, due_date) 
VALUES (4, 4, 4, 4, '4-JAN-2004', '4-FEB-2004');

INSERT INTO transactions (transaction_id, book_id, borrower_id, borrower_copies, transaction_date, due_date) 
VALUES (5, 5, 5, 5, '5-JAN-2005', '5-FEB-2005');

INSERT INTO transactions (transaction_id, book_id, borrower_id, borrower_copies, transaction_date, due_date) 
VALUES (6, 6, 6, 1, '6-JAN-2006', '6-FEB-2006');

INSERT INTO transactions (transaction_id, book_id, borrower_id, borrower_copies, transaction_date, due_date) 
VALUES (7, 7, 7, 2, '7-JAN-2007', '7-FEB-2007');

INSERT INTO transactions (transaction_id, book_id, borrower_id, borrower_copies, transaction_date, due_date) 
VALUES (8, 8, 8, 3, '8-JAN-2008', '8-FEB-2008');

INSERT INTO transactions (transaction_id, book_id, borrower_id, borrower_copies, transaction_date, due_date) 
VALUES (9, 9, 9, 4, '9-JAN-2009', '9-FEB-2009');

INSERT INTO transactions (transaction_id, book_id, borrower_id, borrower_copies, transaction_date, due_date) 
VALUES (10, 10, 10, 5, '10-JAN-2010', '1-FEB-2010');

INSERT INTO Return (return_id, transaction_id, return_date, bill_id, amount_paid) 
VALUES (1, 1, '21-JAN-2001', 1, 100);

INSERT INTO Return (return_id, transaction_id, return_date, bill_id, amount_paid) 
VALUES (2, 2, '22-JAN-2002', 2, 200);

INSERT INTO Return (return_id, transaction_id, return_date, bill_id, amount_paid) 
VALUES (3, 3, '23-JAN-2003', 3, 300);

INSERT INTO Return (return_id, transaction_id, return_date, bill_id, amount_paid) 
VALUES (4, 4, '24-JAN-2004', 4, 400);

INSERT INTO Return (return_id, transaction_id, return_date, bill_id, amount_paid) 
VALUES (5, 5, '25-JAN-2005', 5, 500);

INSERT INTO Return (return_id, transaction_id, return_date, bill_id, amount_paid) 
VALUES (6, 6, '26-JAN-2006', 6, 100);

INSERT INTO Return (return_id, transaction_id, return_date, bill_id, amount_paid) 
VALUES (7, 7, '27-JAN-2007', 7, 200);

INSERT INTO Return (return_id, transaction_id, return_date, bill_id, amount_paid) 
VALUES (8, 8, '28-JAN-2008', 8, 300);

INSERT INTO Return (return_id, transaction_id, return_date, bill_id, amount_paid) 
VALUES (9, 9, '29-JAN-2009', 9, 400);

INSERT INTO Return (return_id, transaction_id, return_date, bill_id, amount_paid) 
VALUES (10, 10, '30-JAN-2010', 10, 500);

select book_title, publication_date 
from books 
where publication_date LIKE '%91';

select book_title, publication_date 
from books 
where publication_date LIKE '%00';

