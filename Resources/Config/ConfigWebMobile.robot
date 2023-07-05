*** Settings ***
Library      SeleniumLibrary
Library         AppiumLibrary


*** Variables ***
#    Web Variables
${BROWSER_NAME} =        Chrome
${URL} =                https://www.ncbs.res.in/telephone-directory

#    App variables
${REMOTE_URL} =     http://localhost:4723/wd/hub
${DEVICE_NAME} =    emulator-5554
${APP_PACKAGE} =    com.example.android.contactmanager
${APP_ACTIVITY} =   com.example.android.contactmanager.ContactManager


*** Keywords ***
Begin Web and App
    [Arguments]    ${BROWSER_NAME}
    Begin Web Test  ${BROWSER_NAME}
    Start the Application

Close Web and App
    End Web Test
    Close the Application

Begin Web Test
    [Arguments]    ${BROWSER_NAME}
    create webdriver     ${BROWSER_NAME}    executable_path=Resources/Web_Mobile/Drivers/${BROWSER_NAME}
    go to    ${URL}


End Web Test
    close all browsers


Start the Application
    open application    ${REMOTE_URL}    platformName=Android    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=Uiautomator2


Close the Application
    close all applications