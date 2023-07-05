*** Settings ***
Library          AppiumLibrary


*** Keywords ***
Bypass the alert messages if Android 9 and above
    [Arguments]    ${ANDROID09_CONTINUE_BUTTON}    ${ANDROID09_OK_BUTTON}
    ${Alert1} =    run keyword and return status    page should contain element    ${ANDROID09_CONTINUE_BUTTON}
    run keyword if    '${Alert1}' == 'True'      Click Continue Button   ${ANDROID09_CONTINUE_BUTTON}
    ${Alert2} =    run keyword and return status    page should contain element    ${ANDROID09_OK_BUTTON}
    run keyword if    '${Alert2}' == 'True'      Click OK Button    ${ANDROID09_OK_BUTTON}


Click Continue Button
    [Arguments]    ${CONTINUE_BUTTON}
    wait until page contains element    ${CONTINUE_BUTTON}
    click element    ${CONTINUE_BUTTON}


Click OK Button
    [Arguments]   ${OK_BUTTON}
    wait until page contains element    ${OK_BUTTON}
    click element    ${OK_BUTTON}


Verify the Title of the Screen
    [Arguments]    ${TITLE}    ${TITLE_TEXT}
    wait until page contains element    ${TITLE}
    element text should be    ${TITLE}    ${TITLE_TEXT}


Click Add Contact Button
    [Arguments]    ${ADDCONTACT_BUTTON}
    wait until page contains element    ${ADDCONTACT_BUTTON}
    click element    ${ADDCONTACT_BUTTON}


Enter Contact Name
    [Arguments]    ${CONTACTNAME}    ${NAME}
    wait until page contains element   ${CONTACTNAME}
    input text    ${CONTACTNAME}    ${NAME}


Enter Contact Phone and select the label
     [Arguments]    ${CONTACTPHONE}    ${PHONE}    ${CONTACTPHONE_LABEL}    ${CONTACTLABEL_WORK}
     wait until page contains element    ${CONTACTPHONE}
     input text    ${CONTACTPHONE}    ${PHONE}
     click element    ${CONTACTPHONE_LABEL}
     wait until page contains element    ${CONTACTLABEL_WORK}
     click element    ${CONTACTLABEL_WORK}


Enter Contact Email and select the label
    [Arguments]    ${CONTACTEMAIL}    ${EMAIL}    ${CONTACTEMAIL_LABEL}   ${CONTACTLABEL_WORK}
    wait until page contains element    ${CONTACTEMAIL}
    input text    ${CONTACTEMAIL}    ${EMAIL}
    click element    ${CONTACTEMAIL_LABEL}
    wait until page contains element    ${CONTACTLABEL_WORK}
    click element    ${CONTACTLABEL_WORK}


Click Save Button
    [Arguments]     ${SAVE_BUTTON}
    wait until page contains element  ${SAVE_BUTTON}
    click element    ${SAVE_BUTTON}


Verify the new contact name is listing in the Home Screen
    [Arguments]     ${HOME_CONTACT_NAMES}    ${NAME}
    wait until page contains element     ${HOME_CONTACT_NAMES}
    page should contain text    ${NAME}