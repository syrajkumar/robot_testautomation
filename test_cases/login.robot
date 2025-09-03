*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${USERNAME}    standard_user
${PASSWORD}    secret_sauce
${URL}    https://www.saucedemo.com/ 
${BROWSR1}    safari
${BROWSR2}    firefox
*** Test Cases ***
Login To NopCommerce APP in Safari browser
    Open Browser    ${URL}        ${BROWSR1}   ${BROWSR2}
    Maximize Browser Window
    Set Selenium Implicit Wait    10s    
    Input Text    //input[@id='user-name']    ${USERNAME}        
    Input Password    //input[@id='password']    ${PASSWORD}
    Click Button    //input[@id='login-button']
    Click Button   //button[@id='react-burger-menu-btn']
    Sleep    5s
    Click Link    //a[@id='logout_sidebar_link']
    Sleep    5s
    Close Browser
Login To NopCommerce APP in firefox browser
    Open Browser    ${URL}        ${BROWSR2}
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Input Text    //input[@id='user-name']    ${USERNAME}
    Input Password    //input[@id='password']    ${PASSWORD}
    Click Button    //input[@id='login-button']
    Click Button   //button[@id='react-burger-menu-btn']
    Sleep    5s
    Click Link    //a[@id='logout_sidebar_link']
    Sleep    5s
    Close Browser

*** Keywords ***

