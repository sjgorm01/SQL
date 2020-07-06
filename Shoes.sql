CREATE TABLE Shoes
(
    Id      char(10)        PRIMARY KEY,
    Brand   char(10)        NOT NULL,
    Type    char(250)       NOT NULL,
    Color   char(250)       NOT NULL,
    Price   decimal(8,2)    NOT NULL,
    Descr   Varchar(750)    NULL
);

INSERT INTO Shoes
    (Id,
    Brand,
    Type,
    Color,
    Price,
    Descr)
VALUES
    ('1'
    ,'Gucci'
    ,'Dress'
    ,'Pink'
    ,'695.00'
    ,NULL
    );
INSERT INTO Shoes
    (Id,
    Brand,
    Type,
    Color,
    Price,
    Descr)
VALUES
    ('2'
    ,'Prada'
    ,'Dress'
    ,'Red'
    ,'495.00'
    ,NULL
    );    
INSERT INTO Shoes
    (Id,
    Brand,
    Type,
    Color,
    Price,
    Descr)
VALUES
    ('3'
    ,'Nike'
    ,'Sneaker'
    ,'Blue'
    ,'195.00'
    ,'FlyKnit'
    );
INSERT INTO Shoes
    (Id,
    Brand,
    Type,
    Color,
    Price,
    Descr)
VALUES
    ('4'
    ,'Adidas'
    ,'Sneaker'
    ,'White'
    ,'125.00'
    ,NULL
    );   
    
INSERT INTO Shoes
    (Id,
    Brand,
    Type,
    Color,
    Price,
    Descr)
VALUES
    ('6'
    ,'Reebok'
    ,'Sneaker'
    ,'Green'
    ,'95.00'
    ,NULL
    );
    
    
SELECT * FROM Shoes;
    
CREATE TEMPORARY TABLE Sneaker AS
    SELECT *
    FROM Shoes
    WHERE Type= 'Sneaker'




SELECT * FROM Sneaker;

/*   Filtering   */

--    Comment out a single line

SELECT Id
    ,Brand
    ,Price
FROM Shoes
WHERE Type = 'Sneaker';

SELECT Id
    ,Brand
    ,Price
FROM Shoes
WHERE Type <> 'Sneaker' ;


SELECT Id
    ,Brand
    ,Price
FROM Shoes
WHERE Price  >=200;

SELECT Id
    ,Brand
    ,Price
FROM Shoes
WHERE Id  BETWEEN 2 AND 4;

SELECT Id
    ,Brand
    ,Price
FROM Shoes
WHERE Id IN (2,4,5);

SELECT Id
    ,Brand
    ,Price
FROM Shoes
WHERE NOT Id IN (2,4,5);

SELECT Id
    ,Brand
    ,Price
FROM Shoes
WHERE Descr IS NULL;

SELECT Id
    ,Brand
    ,Price
FROM Shoes
WHERE NOT (Type = 'Sneaker') AND Price < '500';


/*  Wildcards */

SELECT Id
    ,Brand
    ,Type
    ,Price
FROM Shoes
WHERE Type LIKE  'S%';


SELECT Id
    ,Brand
    ,Type
    ,Price
FROM Shoes
WHERE Brand LIKE  '_eebok';





/*    ORDER BY  */

SELECT *
FROM Shoes
ORDER BY Brand;

SELECT *
FROM Shoes
ORDER BY 2 DESC;



/*  Math   */
SELECT Id * (Price + Id)
AS Number
From Shoes;


/* AVG() MIN() MAX() COUNT() SUM()   DISTINCT  */

SELECT COUNT(Id)
AS Total
From Shoes;

SELECT COUNT(DISTINCT Id)
AS Total
From Shoes;

SELECT MAX(Price) 
AS maxprice 
FROM Shoes;

SELECT SUM(Price) 
AS a_price 
FROM Shoes
WHERE ID > '2';

/* Grouping */

SELECT COUNT(Id)
AS Total
From Shoes
GROUP BY Type;

SELECT COUNT(Id)
AS Total
FROM Shoes
GROUP BY Type
HAVING Price > '100';

/* Above, since one of the sneakers is not above 100, it does not count no of sneakers */
/*  Below counts correctly */

SELECT COUNT(Id)
AS Total
FROM Shoes
WHERE Price > '100'
GROUP BY Type;



