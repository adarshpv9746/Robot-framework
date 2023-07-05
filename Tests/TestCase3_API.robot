*** Settings ***

Library     Collections
Library     RequestsLibrary
Library     JSONLibrary
Resource    ../Resources/Config/ConfigAPI.robot
Resource    ../Resources/API/API-res.robot
Resource    ../Resources/API/InputDataAPI.robot

Test Setup    Create APISession

*** Variables ***

${base_url}     https://rahulshettyacademy.com

${baseAPI_url}      http://resapi.demoqa.com
${book_name}    test
${book_id}


${username}     ToolsQA
${passwordtoken}        TestPassword

*** Test Cases ***

Add new book to library
    [Tags]      API
    [Documentation]    To validate
    ${response}=     Post request to add new book        ${AddBook_jsonpath}
    Validate response message is successful     ${response}     successfully added
    Validate status code        ${response}     200

Get book details using book id
    [Tags]      API
    [Documentation]    To validate
    ${get_response}=        Get book details    9844909353322492211
    Validate book name      ${get_response}     vijinrobotframework
