*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    https://www.knowledgeware.in/Automation/practiceform.html
${BROWSER}    Chrome
*** Test Cases ***
Test timeout scenarios
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    KnowledgeWare - Forms - Practice Form
    Input Text    id:fname    Rajkumar
    Input Text    id:lname    Subramanian
    Sleep    5s
    Close Browser
*** Keywords ***
