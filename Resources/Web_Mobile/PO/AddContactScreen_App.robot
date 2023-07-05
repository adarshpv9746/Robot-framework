*** Settings ***
Resource       ../../Config/ConfigWebMobile.robot


*** Variables ***
${ADDCONTACT_CONTACTNAME} =          id=${APP_PACKAGE}:id/contactNameEditText
${ADDCONTACT_CONTACTPHONE} =         id=${APP_PACKAGE}:id/contactPhoneEditText
${ADDCONTACT_CONTACTPHONE_LABEL} =    id=${APP_PACKAGE}:id/contactPhoneTypeSpinner
${ADDCONTACT_CONTACTEMAIL} =         id=${APP_PACKAGE}:id/contactEmailEditText
${ADDCONTACT_CONTACTEMAIL_LABEL} =    id=${APP_PACKAGE}:id/contactEmailTypeSpinner
${ADDCONTACT_SAVE_BUTTON} =          id=${APP_PACKAGE}:id/contactSaveButton
${ADDCONTACT_CONTACTLABEL_WORK} =     //android.widget.CheckedTextView[@text='Work']
