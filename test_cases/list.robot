*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    https://practice.expandtesting.com/dropdown
${BROWSER}    chrome

*** Test Cases ***
Automate dropdown and List Box
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    5s
    Select From List By Value    id:country    US
    Sleep    5s
    Close Browser
*** Keywords ***
