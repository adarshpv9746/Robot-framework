*** Settings ***
Resource        ../Resources/Config/ConfigDB.robot
Resource        ../Resources/DB/Queries.robot
Test Setup      Connect DB
Test Teardown   Disconnect DB

# To run the test case
# robot -d Results Tests/TestCase2_DB.robot

*** Test Cases ***
Create Table
    [Documentation]    Test case to create a table
    [Tags]    DB
    TRY
        execute sql string    ${CREATE_TABLE_QUERY}
    EXCEPT
        log    "Table already exists"
        log to console    "Table already exists"
    END


Execute SQL Script - Insert Data to table
    [Documentation]    Test case to insert data to table by executing the SQL script
    [Tags]    DB
    TRY
        Execute SQL Script    Resources/DB/insertData.sql
    EXCEPT
        log    "Duplicate Entry"
        log to console    "Duplicate Entry"
    END

Insert Data to table
    [Documentation]    Test case to insert a data to table using a single insert query
    [Tags]    DB
    TRY
        execute sql string    ${INSERT_QUERY}
    EXCEPT
        log    "Duplicate Entry"
        log to console    "Duplicate Entry"
    END
    ${queryResults} =  query    ${SELECT_ALL_QUERY}
    Log Many    ${queryResults}
    log to console     ${queryResults}


Update Value
    [Documentation]    Test case to update the data
    [Tags]    DB
    execute sql string    ${UPDATE_QUERY}
    ${queryResults} =  query    ${SELECT_ALL_QUERY}
    Log Many    ${queryResults}
    log to console     ${queryResults}


Delete Data
    [Documentation]    Test case to delete data from table
    [Tags]    DB
    execute sql string    ${DELETE_QUERY}
    ${queryResults} =  query    ${SELECT_ALL_QUERY}
    Log Many    ${queryResults}
    log to console     ${queryResults}