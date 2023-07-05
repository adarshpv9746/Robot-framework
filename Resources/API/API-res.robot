*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Library     Collections
Resource    InputDataAPI.robot
Resource    ../Config/ConfigAPI.robot

*** Variables ***
${URL}


*** Keywords ***

## Session creation depends on the authentication method used for the respective project
Create APISession
        IF                  "${Environment}"=="QA"
            ${URL} =    set variable        ${qa_base_url}
         ELSE IF             "${Environment}"=="UAT"
            ${URL} =    set variable        ${uat_base_url}
         ELSE IF             "${Environment}"=="DEV"
            ${URL} =    set variable        ${dev_base_url}
        END
        Create Session  mysession   ${URL}

Post request to add new book
        [Arguments]    ${jsonpath}
        Create APISession
        ${json_obj}=    load json from file     ${jsonpath}
        ${req_body}=    convert to dictionary    ${json_obj}
        ${response}=    POST On Session    mysession      ${Addbook_url}       json=${req_body}    expected_status=200
        [Return]    ${response}

Validate response message is successful
    [Arguments]    ${response}  ${success_message}
    Should Be Equal as Strings      successfully added      ${response.json()}[Msg]

Validate status code
    [Arguments]    ${response}  ${expected_status_code}
    Status should be    ${expected_status_code}     ${response}

Get book details
    [Arguments]    ${bookid}
    ${get_response}=    GET On Session    mysession     ${Getbook_url}     params=ID=${bookid}       expected_status=200
    [Return]    ${get_response}

Validate book name
    [Arguments]    ${getresponse}   ${bookname}
    Should be equal as Strings      ${bookname}    ${getresponse.json()}[0][book_name]


