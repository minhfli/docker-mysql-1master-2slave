docker exec mysql_master sh -c "export MYSQL_PWD=111; mysql -u root mydb -e 'create table if not exists code(code int); insert into code values (100), (200)'"

sleep 2

docker exec mysql_slave_1 sh -c "export MYSQL_PWD=111; mysql -u root mydb -e 'select * from code \G'"

sleep 2

docker exec mysql_master sh -c "export MYSQL_PWD=111; mysql -u root mydb -e 'source create_db.sql'"

sleep 2

docker exec mysql_slave_2 sh -c "export MYSQL_PWD=111; mysql -u root mydb -e 'show tables'"

sleep 10