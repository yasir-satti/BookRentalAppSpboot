SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

\! echo "create DB books rental...";
DROP database if EXISTS `bookRental`;
CREATE database `bookRental`;
USE `bookRental`;
\! echo "Done.";

\! echo "create DB bookRental user and privilege...";
DROP USER if exists booksuser;
CREATE USER booksuser IDENTIFIED BY 'password';
ALTER USER booksuser REQUIRE SSL;

GRANT ALL PRIVILEGES ON `bookRental`.* TO 'booksuser'@'%'  WITH GRANT OPTION;
FLUSH PRIVILEGES;
\! echo "Done.";

