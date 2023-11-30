# mysql -uroot -ppassword
mysql --local-infile=1 -uroot -ppassword < ./docker-entrypoint-initdb.d/seeds/populate_db.sql