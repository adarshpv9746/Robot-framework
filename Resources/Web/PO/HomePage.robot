*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${NAME_FIELD} =         name:name
${EMAIL_FIELD} =        name:email
${PASSWORD_FIELD} =     id:exampleInputPassword1
${ICE_CHECKBOX} =       id:exampleCheck1
${GENDER_DROPDOWN} =    id:exampleFormControlSelect1
${GENDER} =             Female
${EMPLOYMENT_STATUS} =  id:inlineRadio2
${DOB_FIELD} =          name:bday
${SUBMIT_BUTTON} =      class:btn-success
${ALERT} =              class:alert