*** Settings ***
Library    SeleniumLibrary
Library    Screenshot    screenshot_directory=../Screenshots
*** Variables ***
${URL}    https://demo.nopcommerce.com
${browser}    headlessfirefox
${username}    john.doe@nextininnovation.com
${password}    Winter#33
*** Keywords ***
Open my browser
    Open Browser    ${URL}    ${browser}
    Maximize Browser Window
Close browsers
    Close All Browsers
Click login link
    Click Link    //a[@class='ico-login']
Input username
    [Arguments]    ${username}
    Input Text    //input[@id='Email']    ${username}
Input password
    [Arguments]    ${password}
    Input Text    //input[@id='Password']    ${password}
Click login button
    Click Button    //button[@class='button-1 login-button']
Error message is visible
    Page Should Contain    Login was unsuccessful
Screenshots
    Set Screenshot Directory    ./Screenshots
Click logout button
    Click Link    //a[@class='ico-logout']



