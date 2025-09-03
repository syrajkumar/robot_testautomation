*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Login_data.robot
Library    Screenshot    screenshot_directory=../Screenshots
Library    DataDriver    ../Test_data/Login_data.xlsx    Sheet_name=Sheet1
Suite Setup    Open My Browser
Suite Teardown    Close Browsers
Test Template    Invalid Login
*** Variables ***
*** Test Cases ***
Login NopCommerce app with data from excel    ${username}    ${password}
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