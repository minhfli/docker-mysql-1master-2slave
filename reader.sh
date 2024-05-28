priv_stmt='CREATE USER "reader"@"%" IDENTIFIED BY "111"; GRANT SELECT ON *.* TO "reader"@"%"; FLUSH PRIVILEGES;'
docker exec mysql_master sh -c "export MYSQL_PWD=111; mysql -u root -e '$priv_stmt'"

sleep 10