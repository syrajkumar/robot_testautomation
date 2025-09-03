*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    https://demo.nopcommerce.com/
${BROWSER}    chrome
${USERNAME}    john.doe@nextininnovation.com
${PASSWORD}    Winter#33
*** Test Cases ***
Login to Nopcommerce app
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    LoginApp
    Click Link    //a[@class='ico-logout']
    Close Browser
Add a desktop to cart
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    LoginApp
    Click Link    css:a[href*='/computers']
    Click Link  //li[@class='active last']//a[normalize-space()='Desktops']
    Click Button    //button[@class='button-2 product-box-add-to-cart-button']
    Sleep    2s
    Click Link    //a[@class='ico-logout']
    Close Browser
*** Keywords ***
LoginApp
    Title Should Be    nopCommerce demo store. Home page title
    Click Link    //a[@class='ico-login']
    Input Text    //input[@id='Email']    ${USERNAME}
    Input Text    //input[@id='Password']    ${PASSWORD}
    Click Button    //button[@class='button-1 login-button']
    Sleep    2s
    
