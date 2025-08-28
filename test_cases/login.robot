*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${USERNAME}    standard_user
${PASSWORD}    secret_sauce
*** Test Cases ***
Login To NopCommerce APP
    Open Browser    https://www.saucedemo.com/     safari    firefox
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

