*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    https://practice.expandtesting.com/dropdown
${URL1}    https://testautomationpractice.blogspot.com
${BROWSER}    chrome

*** Test Cases ***
Automate dropdown and List Box
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    5s
    Select From List By Value    id:country    US
    Sleep    5s
    Close Browser
Automate multiselect list
    Open Browser    ${URL1}    ${BROWSER}
     Maximize Browser Window
     Sleep    5s
     Select From List By Value    id:animals    cat    deer    dog
     Sleep    5s
     Unselect All From List    id:animals
     Select From List By Index    id:animals    0    1    2
     Sleep    5s
     Unselect All From List    id:animals
     Sleep    5s
     Close Browser
     


*** Keywords ***
