*** Settings ***
Resource         ../Resources/Mobile/App-res.robot
Resource         ../Resources/Config/ConfigMobile.robot
Resource         ../Resources/Mobile/PO/HomeScreen.robot
Resource         ../Resources/Mobile/PO/AddContactScreen.robot
Test Setup       Start the Application
Test Teardown    Close the Application

# To run the test case with loglevel as TRACE
# robot -d Results --loglevel TRACE Tests/Open_Application.robot

*** Variables ***
${NAME} =   Abraham
${PHONE} =  0987654321
${EMAIL} =  abraham@gmail.com

*** Test Cases ***
Verify if user is able to Add contact to Contact Manager
    [Documentation]    Test case to Add contact to a gmail account using contact manager app
    [Tags]    MobileApp
    Bypass the alert messages if Android 9 and above    ${ANDROID09_CONTINUE_BUTTON}    ${ANDROID09_OK_BUTTON}
    Verify the Title of the screen    ${HOME_TITLE}    ${HOME_TITLE_TEXT}
    Click Add Contact Button   ${HOME_ADDCONTACT_BUTTON}
    Enter Contact Name   ${ADDCONTACT_CONTACTNAME}    ${NAME}
    Enter Contact Phone and select the label     ${ADDCONTACT_CONTACTPHONE}    ${PHONE}    ${ADDCONTACT_CONTACTPHONE_LABEL}  ${ADDCONTACT_CONTACTLABEL_WORK}
    Enter Contact Email and select the label     ${ADDCONTACT_CONTACTEMAIL}    ${EMAIL}    ${ADDCONTACT_CONTACTEMAIL_LABEL}   ${ADDCONTACT_CONTACTLABEL_WORK}
    Click Save Button    ${ADDCONTACT_SAVE_BUTTON}
    Verify the new contact name is listing in the Home Screen    ${HOME_CONTACT_NAMES}    ${NAME}



