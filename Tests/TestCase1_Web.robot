*** Settings ***
Resource         ../Resources/Config/ConfigWeb.robot
Resource         ../Resources/Web/PO/HomePage.robot
Resource         ../Resources/Web/Web-res.robot
Test Setup       Begin Web Test    ${BROWSER_NAME}
Test Teardown    End Web Test

# To run the test case
# robot -d Results Tests/TestCase1_Web.robot
# robot -d Results -v BROWSER_NAME:Firefox Tests/TestCase1_Web.robot
# robot -d Results -i Web Tests/TestCase1_Web.robot

*** Variables ***
${TITLE} =           ProtoCommerce
${NAME} =            Abraham
${EMAIL} =           abraham@gmail.com
${PASSWORD} =        abraham@123
${DOB} =             12/04/1990
${SUCCESS_MSG} =     Success! The Form has been submitted successfully!.


*** Test Cases ***
Verify able to submit the form after entering all the details
    [Documentation]    Test case to open the webpage url https://rahulshettyacademy.com/angularpractice/ and enter the details in the fields and able to Submit the details
    [Tags]             Web
    Verify the Homepage title is correct    ${TITLE}
    Enter Name in the "Name" field   ${NAME}
    Enter Email in the "Email" field   ${EMAIL_FIELD}  ${EMAIL}
    Enter Password      ${PASSWORD_FIELD}    ${PASSWORD}
    Enable the check box "Check me out if you Love IceCreams!"    ${ICE_CHECKBOX}
    Select Gender as Female    ${GENDER_DROPDOWN}    ${GENDER}
    Select the Employment Status as "Employed"    ${EMPLOYMENT_STATUS}
    Enter DOB    ${DOB}
    Click Submit Button    ${SUBMIT_BUTTON}
    Verify the Success message    ${SUCCESS_MSG}