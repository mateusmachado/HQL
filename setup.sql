DROP TABLE IF EXISTS address;
DROP TABLE IF EXISTS employee;

CREATE TABLE employee(
   id INTEGER PRIMARY KEY
 , name VARCHAR(20) NOT NULL
 , salary NUMERIC(15,2) NOT NULL DEFAULT 0)

CREATE TABLE address(
   id INTEGER PRIMARY KEY 
 , address VARCHAR(50) NOT NULL DEFAULT ''
 , zipCode VARCHAR(10) DEFAULT 0
 , city VARCHAR(20) DEFAULT NULL
 , FOREIGN KEY (id) REFERENCES employee(id)
)

INSERT INTO employee 
VALUES(1, 'Nina', 100)
    , (2, 'David', 200)
    , (3, 'Jack', 300)
    , (4, 'Dude', 400);
    
INSERT INTO address
VALUES(1, 'Bino', '123456', 'San Jose')
    , (2, 'Brenda', '147258', 'Santa Clara')
    , (3, 'lilo', '987654', 'Malvinas')
    , (4, 'foo', '789456', 'New Delhi');    

