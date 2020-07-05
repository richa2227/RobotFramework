*** Settings ***
Library    SeleniumLibrary    
Variables    ../Variable/variables.py
Resource    ../Resources/LoginKeyword.robot
Test Template    Successfull Login

Suite Setup    Open my Browser    ${url}    ${browser}
    
Test Teardown    Close All Browsers

*** Test Cases ***
User login with valid credentials
        ${username}    ${pwd}
    
 
    

    