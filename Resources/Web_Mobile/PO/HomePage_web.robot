*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOMEPAGE_TITLE} =          //div[@id='block-progressive-cms-page-title']/div/header/div/h3/span
${TABLE_ELEMENTS_NAME} =     //div[@id='block-system-main']/div/div/table/tbody/tr/td[1]
${TABLE_ELEMENTS_PHONE} =    //div[@id='block-system-main']/div/div/table/tbody/tr/td[4]