﻿USE [WebStor];
GO

CREATE SCHEMA Prots; 

GO

CREATE TABLE Prots.DATATYPES (

ID BIGINT, 

AGE TINYINT 

);

INSERT INTO Prots.DATATYPES(ID, AGE)

VALUES(10000, 34);

INSERT INTO Prots.DATATYPES(ID, AGE)

VALUES(10001, 32);


INSERT INTO Prots.DATATYPES(ID, AGE)

VALUES('10002', 32);


INSERT INTO Prots.DATATYPES(ID, AGE)

VALUES('10003', '35');


INSERT INTO Prots.DATATYPES(ID, AGE)

VALUES('19700101', '35');


INSERT INTO Prots.DATATYPES(ID, AGE)

VALUES('1970-01-01', '35');
SELECT *

FROM Prots.DATATYPES;