*** Settings ***
Library    SeleniumLibrary    
Variables    ../PageElements/LoginLocator.py

*** Keywords ***

Open my Browser
    [Arguments]    ${siteUrl}    ${browser}
    Open Browser    ${siteUrl}    ${browser}
    Maximize Browser Window
    
Click signIn button
    Page Should Contain Element      ${signIn_btn}    
    Click Element    ${signIn_btn}    
    # Click Button    ${signIn_btn}    
    
Enter Username
    [Arguments]    ${username}
    Input Text    ${loginEmail_txb}    ${username}
    
Enter Password
    [Arguments]    ${pwd}
    Input Password    ${loginPwd_txb}    ${pwd}
    
Click LoginIn Buton
    Click Button    ${login_btn}  
    
Verify Successfull Login
    Title Should Be    My account - My Store      
    
Close my browser
    Close All Browsers    