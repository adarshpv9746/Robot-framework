*** Settings ***
Resource       ../../Config/ConfigMobile.robot


*** Variables ***
${ANDROID09_CONTINUE_BUTTON} =    id=com.android.permissioncontroller:id/continue_button
${ANDROID09_OK_BUTTON} =          //android.widget.Button[contains(@resource-id,'button1') and @text='OK']
${HOME_TITLE} =              //android.widget.TextView[@text='Contact Manager']
${HOME_TITLE_TEXT} =         Contact Manager
${HOME_ADDCONTACT_BUTTON} =    id=${APP_PACKAGE}:id/addContactButton
${HOME_CONTACT_NAMES} =        //android.widget.TextView[contains(@resource-id,'contactEntryText')]
