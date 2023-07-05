*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER_NAME} =        Chrome
${URL} =                https://rahulshettyacademy.com/angularpractice/

*** Keywords ***
Begin Web Test
    [Arguments]    ${BROWSER_NAME}
    create webdriver     ${BROWSER_NAME}    executable_path=Resources/Web/Driver/${BROWSER_NAME}
    go to    ${URL}
    maximize browser window

#   to run in headless mode use the below code
#    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
#    Call Method    ${chrome_options}    add_argument    headless
#    Create Webdriver    ${BROWSER_NAME}    executable_path=Resources/Web/Driver/${BROWSER_NAME}    chrome_options=${chrome_options}
#    Go To    ${URL}


End Web Test
    close all browsers