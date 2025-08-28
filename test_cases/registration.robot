*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    https://demo.nopcommerce.com
${browser}    firefox
${firstname}    John
${lastname}    Doe
${Email}    john.doe@nextininnovation.com
${Password}    Winter#33
*** Test Cases ***
Login To NopCommerce App
    Open Browser    ${URL}    ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Title Should Be    nopCommerce demo store. Home page title
    Click Link    //a[@class='ico-register']
    Set Selenium Implicit Wait    5s
    Select Radio Button    Gender    gender-male
    Clear Element Text    id:FirstName        
    Input Text     id:FirstName    ${firstname}
    Clear Element Text    id:LastName
    Input Text    id:LastName    ${lastname}
    Clear Element Text    id:Email
    Input Text    id:Email    ${Email}
    Unselect Checkbox    Newsletter
    Clear Element Text    id:Password
    Input Password    id:Password    ${Password}
    Clear Element Text    id:ConfirmPassword
    Input Password    id:ConfirmPassword    ${Password} 
    Click Button    id:register-button
    Set Selenium Implicit Wait    5s
    Close Browser
*** Keywords ***

