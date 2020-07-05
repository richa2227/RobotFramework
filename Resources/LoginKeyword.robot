*** Settings ***
Library    SeleniumLibrary  
Resource    LoginResources.robot
Variables    ../Variable/variables.py  

*** Keywords ***
Successfull Login
    [Arguments]       ${username}    ${pwd}
    Wait Until Element Is Visible    ${signIn_btn}    
    Click signIn button
    Wait Until Element Is Visible    ${loginEmail_txb}    
    Enter Username    ${username}
    Enter Password    ${pwd}
    Click LoginIn Buton
    Wait Until Location Is    ${url}/index.php?controller=my-account    
    Verify Successfull Login
