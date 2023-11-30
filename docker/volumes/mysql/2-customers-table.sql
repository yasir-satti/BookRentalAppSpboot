\! echo "Create DB tables ...";
USE `bookRental`;
-- SOURCE /docker-entrypoint-initdb.d/seeds/products.sql;
--

\! echo "Populate customers table ...";
CREATE TABLE customers (
                          `firstName` varchar(50) NOT NULL,
                          `middleNames` varchar(50),
                          `surName` varchar(50) NOT NULL,
                          `email` varchar(50) UNIQUE,
                          `address1` varchar(50) NOT NULL,
                          `address2` varchar(50) NOT NULL,
                          `cityTown` varchar(50) NOT NULL,
                          `postcode` varchar(50) NOT NULL,
                          `password` varchar(50) NOT NULL,
                          `id` INT primary key NOT NULL AUTO_INCREMENT
);
SET GLOBAL local_infile=1;
\! echo "Done.";