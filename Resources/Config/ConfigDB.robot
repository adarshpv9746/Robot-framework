*** Settings ***
Library    DatabaseLibrary

*** Variables ***
${MYSQL_DB_MODULE} =  pymysql
${DB_NAME} =  TESTDB2
${DB_USER_NAME} =  root
${DB_USER_PASSWORD} =  password
${DB_HOST} =  localhost
${DB_PORT} =  3306


*** Keywords ***
Connect DB
    connect to database    ${MYSQL_DB_MODULE}  ${DB_NAME}  ${DB_USER_NAME}  ${DB_USER_PASSWORD}  ${DB_HOST}  ${DB_PORT}


Disconnect DB
    Disconnect from Database