*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${fruits}    apple    banana    mango
${USERNAME}    standard_user
${PASSWORD}    secret_sauce
${URL}    https://www.saucedemo.com/
${BROWSER}    firefox
*** Test Cases ***
for loop example1
    FOR        ${item}    IN    ${fruits}
        Log To Console    ${item}
    END
for loop example2
    FOR    ${i}    IN RANGE    0    6
        Log To Console    ${i}
    END
count links in a webpage
    Open Browser    ${URL}    ${BROWSER}   
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Input Text    //input[@id='user-name']    ${USERNAME}
    Input Password    //input[@id='password']    ${PASSWORD}
    Click Button    //input[@id='login-button']
    Sleep    3s
    ${links}=    Get Webelements    //a
    ${count}=    Get Length    ${links}
    Log To Console    Number of links:${count}
    FOR    ${link}   IN    @{links}
        ${text}=    Get Text    ${link}
        Log To Console    ${text}
    END
    Close Browser
*** Keywords ***


    
