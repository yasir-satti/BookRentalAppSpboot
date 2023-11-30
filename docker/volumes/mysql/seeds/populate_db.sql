\! echo "Populating customers data....";

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/seeds/customers.csv'
INTO TABLE bookRental.customers
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

\! echo "Done.";