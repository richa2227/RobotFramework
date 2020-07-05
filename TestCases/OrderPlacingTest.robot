*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resources/OrderCheckoutKeywords.robot
Resource    ../Resources/LoginKeyword.robot
Resource    ../Resources/CheckOutFunction.robot
Variables    ../Variable/variables.py

Suite Setup    LoginResources.Open my Browser    ${url}    ${browser}
Suite Teardown    Close All Browsers

*** Test Cases ***
Login into browser
    [Template]    Successfull Login
    ${username}    ${pwd}
    

Place the order
    Order checkout flow
    