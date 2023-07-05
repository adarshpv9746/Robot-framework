*** Settings ***
Library         AppiumLibrary

*** Variables ***
${REMOTE_URL} =     http://localhost:4723/wd/hub
${DEVICE_NAME} =    emulator-5554
${APP_PACKAGE} =    com.example.android.contactmanager
${APP_ACTIVITY} =   com.example.android.contactmanager.ContactManager


*** Keywords ***
Start the Application
    open application    ${REMOTE_URL}    platformName=Android    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=Uiautomator2


Close the Application
    close all applications
