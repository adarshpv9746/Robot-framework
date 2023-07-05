*** Settings ***
Library     SeleniumLibrary
Resource    PO/HomePage.robot

*** Keywords ***
Verify the Homepage title is correct
    [Arguments]    ${TITLE}
    title should be    ${TITLE}


Enter Name in the "Name" field
    [Arguments]    ${NAME}
    input text    ${NAME_FIELD}    ${NAME}


Enter Email in the "Email" field
    [Arguments]    ${EMAIL_FIELD}    ${EMAIL}
    input text    ${EMAIL_FIELD}    ${EMAIL}


Enter Password
    [Arguments]    ${PASSWORD_FIELD}    ${PASSWORD}
    input password    ${PASSWORD_FIELD}    ${PASSWORD}


Enable the check box "Check me out if you Love IceCreams!"
    [Arguments]    ${ICE_CHECKBOX}
    select checkbox    ${ICE_CHECKBOX}


Select Gender as Female
    [Arguments]     ${GENDER_DROPDOWN}    ${GENDER}
    select from list by label  ${GENDER_DROPDOWN}    ${GENDER}


Select the Employment Status as "Employed"
    [Arguments]    ${EMPLOYMENT_STATUS}
    click element    ${EMPLOYMENT_STATUS}


Enter DOB
    [Arguments]    ${DOB}
    input text      ${DOB_FIELD}    ${DOB}


Click Submit button
    [Arguments]    ${SUBMIT_BUTTON}
    click element    ${SUBMIT_BUTTON}


Verify the Success message
    [Arguments]    ${SUCCESS_MSG}
    ${Alert_msg} =    get text    ${ALERT}
    log    ${Alert_msg}
    element should contain    ${ALERT}      ${SUCCESS_MSG}
    sleep    2s

