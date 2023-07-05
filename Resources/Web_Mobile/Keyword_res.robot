*** Settings ***
Library          Collections
Library          SeleniumLibrary
Library          AppiumLibrary
Resource         PO/HomePage_web.robot
Resource         PO/HomeScreen_App.robot
Resource         PO/AddContactScreen_App.robot


*** Keywords ***
Check if the webpage is opened
    [Arguments]    ${WEBPAGE_TITLE}
    SeleniumLibrary.wait until page contains element    ${WEBPAGE_TITLE}


Bypass the alert messages if Android 9 and above
    [Arguments]    ${ANDROID09_CONTINUE_BUTTON}    ${ANDROID09_OK_BUTTON}
    ${Alert1} =    run keyword and return status    AppiumLibrary.page should contain element    ${ANDROID09_CONTINUE_BUTTON}
    run keyword if    '${Alert1}' == 'True'      Click Continue Button   ${ANDROID09_CONTINUE_BUTTON}
    sleep    1s
    ${Alert2} =    run keyword and return status    AppiumLibrary.page should contain element     ${ANDROID09_OK_BUTTON}
    run keyword if    '${Alert2}' == 'True'      Click OK Button    ${ANDROID09_OK_BUTTON}

Click Continue Button
    [Arguments]    ${CONTINUE_BUTTON}
    AppiumLibrary.wait until page contains element    ${CONTINUE_BUTTON}
    AppiumLibrary.click element    ${CONTINUE_BUTTON}

Click OK Button
    [Arguments]   ${OK_BUTTON}
    AppiumLibrary.wait until page contains element    ${OK_BUTTON}
    AppiumLibrary.click element    ${OK_BUTTON}

Verify the Title of the App Screen
    [Arguments]    ${TITLE}    ${TITLE_TEXT}
    AppiumLibrary.wait until page contains element    ${TITLE}
    AppiumLibrary.element text should be    ${TITLE}    ${TITLE_TEXT}

Get the first 5 contacts from the webpage and add the contacts in the App
    [Arguments]    ${TABLE_ELEMENTS_NAME}    ${TABLE_ELEMENTS_PHONE}
    ${ELEMENTS_NAMES} =    SeleniumLibrary.get webelements    ${TABLE_ELEMENTS_NAME}
    ${ELEMENTS_PHONES} =    SeleniumLibrary.get webelements    ${TABLE_ELEMENTS_PHONE}
    FOR    ${i}    IN RANGE    5
         Click Add Contact Button   ${HOME_ADDCONTACT_BUTTON}
         Enter Contact Name    ${ADDCONTACT_CONTACTNAME}    ${ELEMENTS_NAMES[${i}].text}
         Enter Contact Phone    ${ADDCONTACT_CONTACTPHONE}    ${ELEMENTS_PHONES[${i}].text}
         Click Save Button    ${ADDCONTACT_SAVE_BUTTON}
         Verify the new contact name is listing in the Home Screen    ${HOME_CONTACT_NAMES}    ${ELEMENTS_NAMES[${i}].text}
    END


Click Add Contact Button
    [Arguments]    ${ADDCONTACT_BUTTON}
    AppiumLibrary.wait until page contains element    ${ADDCONTACT_BUTTON}
    AppiumLibrary.click element    ${ADDCONTACT_BUTTON}


Enter Contact Name
    [Arguments]    ${CONTACTNAME}    ${NAME}
    AppiumLibrary.wait until page contains element   ${CONTACTNAME}
    AppiumLibrary.input text    ${CONTACTNAME}    ${NAME}


Enter Contact Phone
     [Arguments]    ${CONTACTPHONE}    ${PHONE}
     AppiumLibrary.wait until page contains element    ${CONTACTPHONE}
     AppiumLibrary.input text    ${CONTACTPHONE}    ${PHONE}


Click Save Button
    [Arguments]     ${SAVE_BUTTON}
    AppiumLibrary.wait until page contains element  ${SAVE_BUTTON}
    AppiumLibrary.click element    ${SAVE_BUTTON}


Verify the new contact name is listing in the Home Screen
    [Arguments]     ${HOME_CONTACT_NAMES}    ${NAME}
    AppiumLibrary.wait until page contains element     ${HOME_CONTACT_NAMES}
    AppiumLibrary.page should contain text    ${NAME}