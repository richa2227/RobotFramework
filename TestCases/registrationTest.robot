*** Settings ***
Library     SeleniumLibrary    
Library    DataDriver    ../TestDataFiles/TestData.xls    
Resource    ../Resources/LoginResources.robot
Resource    ../Resources/RegistartionKeywords.robot
Variables    ../Variable/variables.py
Test Template    RegistartionForm

Suite Setup    Open my Browser    ${url}    ${browser}
Suite Teardown    Close All Browsers

*** Test Case *** 
Filling registration form using dataDriver library by generating random email_ID
    firstName    lastName    password    A_firstName    A_lastName    address    city    state    zipcode    mobileNumber
         


*** Keywords ***
RegistartionForm
    [Arguments]    ${firstName}    ${lastName}    ${password}    ${A_firstName}    ${A_lastName}    ${address}    ${city}    ${state}    ${zipcode}    ${mobileNumber}
    Click signIn button
    Enter email to create new account 
    Click Submit button to register new email
    Wait Until Location Contains    ${url}/index.php?controller=authentication&back=my-account#account-creation        
    Enter firstname    ${firstName}
    Enter Lastname    ${lastName}
    RegistartionKeywords.Enter Password    ${password}
    Enter AddressFirstName    ${A_firstName}
    Enter AddressLastName    ${A_lastName}
    Enter Address    ${address}
    Enter city    ${city}
    Enter zipcode    ${zipcode}
    Enter MobileNumber    ${mobileNumber}
    Select State from the dropdown    ${state}
    Click Registartion Button
    Verify URL    /index.php?controller=my-account
       
    

      
          

