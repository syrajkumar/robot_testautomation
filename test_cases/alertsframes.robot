*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    https://testautomationpractice.blogspot.com/
${BROWSER}    Chrome
*** Test Cases ***
Test timeout scenarios
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Button    id:alertBtn
    Sleep    2s
    Handle Alert    ACCEPT
    Sleep    2s
    Click Button    id:confirmBtn
    Sleep    2s
    Handle Alert    DISMISS
    Sleep    2s
    Click Button    id:promptBtn
    Sleep    2s
    Input Text Into Alert    Python
    Sleep    2s
    Handle Alert    ACCEPT
    Close Browser


    Input Text    id:fname    Rajkumar
    Input Text    id:lname    Subramanian
    Sleep    5s
    Close Browser
*** Keywords ***