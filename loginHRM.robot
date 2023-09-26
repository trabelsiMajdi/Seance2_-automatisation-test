*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}=       https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}=    edge
${username}=   Admin
${password}=  admin123


*** Test Cases ***
tc01 Login test 
    Open Browser     ${url}    ${browser} 
    Maximize Browser Window
    Sleep    4
    Input Text    name:username    ${username}
    Input Password    name:password    ${password} 
    Click Button    class:oxd-button 
    Sleep    4
    Element Text Should Be    XPath://*[@id="app"]/div[1]/div[1]/header/div[1]/div[1]/span/h6     Dashboard
    Click Element    xpath://p[@class="oxd-userdropdown-name"]
    Sleep    4
    Click Element    link:Logout
    Sleep   4
    Element Should Be Visible    class:oxd-button 
    Sleep    4
    Close Browser
    


*** Keywords ***