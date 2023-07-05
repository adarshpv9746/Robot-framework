*** Settings ***
Resource         ../Resources/Config/ConfigWebMobile.robot
Resource         ../Resources/Web_Mobile/PO/HomePage_web.robot
Resource         ../Resources/Web_Mobile/PO/HomeScreen_App.robot
Resource         ../Resources/Web_Mobile/PO/AddContactScreen_App.robot
Resource         ../Resources/Web_Mobile/Keyword_res.robot
Suite Setup      Begin Web and App    ${BROWSER_NAME}
Suite Teardown    Close Web and App

# To run the test case
# robot -d Results Tests/TestCase5_Web_Mobile.robot

*** Test Cases ***
Get Name and Phone number from the webpage and add those contacts to the Contact Manager App
    [Documentation]    Test case to verify if its possible to add contacts in Contact Manager App by taking the details from ncbs Telephone Directory webpage
    [Tags]      Web-App
    Check if the webpage is opened   ${HOMEPAGE_TITLE}
    Bypass the alert messages if Android 9 and above    ${ANDROID09_CONTINUE_BUTTON}    ${ANDROID09_OK_BUTTON}
    Verify the Title of the App screen    ${HOME_TITLE}    ${HOME_TITLE_TEXT}
    Get the first 5 contacts from the webpage and add the contacts in the App   ${TABLE_ELEMENTS_NAME}    ${TABLE_ELEMENTS_PHONE}
