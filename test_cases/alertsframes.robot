*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    https://testautomationpractice.blogspot.com/
${URL1}    https://ui.vision/demo/webtest/frames/
${BROWSER}    Chrome
${BROWSER2}    Firefox
*** Test Cases ***
Test alerts scenarios
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
    Handle Alert    ACCEPT
    Sleep    5s
    Close Browser
Test Frames scenario
    Open Browser    ${URL1}    ${BROWSER2}
    Maximize Browser Window
    Select Frame    xpath://frame[@src='frame_1.html']
    Input Text    name:mytext1    python
    Unselect Frame
    Sleep    2s
    Select Frame    xpath://frame[@src='frame_2.html']
    Input Text    name:mytext2    Hello
    Unselect Frame
    Sleep    2s
    Close Browser
*** Keywords ***