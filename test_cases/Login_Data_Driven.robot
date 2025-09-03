*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Login_data.robot
Library    Screenshot    screenshot_directory=../Screenshots
Suite Setup    Open My Browser    
Suite Teardown    Close Browsers
Test Template    Invalid Login
*** Variables ***
*** Test Cases ***
correct username and empty password    ${username}    ${EMPTY}
correct username and wrong password    ${username}     asdf
incorrect username and correct password    usernames    ${password}
correct username and correct password    ${username}    ${password}
*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Click Login Link
    Sleep    2s
    Input Username    ${username}
    Sleep    2s
    Input password    ${password}
    Sleep    2s
    Click Login Button
    Sleep    2s
    Screenshots
    Error Message Should Be Visible

    
