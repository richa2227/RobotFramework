*** Settings ***
Library    SeleniumLibrary 
Library    DataDriver    file=TestData.xls    sheet_name=rgistrationData   
Library    String    
Variables   ../PageElements/RegistrationLocators.py
Variables   ../Variable/variables.py

*** Keywords ***

Enter email to create new account
    ${random_email}    Generate Random String    4    [LETTERS][NUMBERS]
    ${email_id}    Set Variable    ${random_email}@yopmail.com
    Input Text    ${createEmail_txb}    ${email_id}  
    
Click Submit button to register new email
    Click Button    ${submit_btn}
    
Enter firstname
    [Arguments]    ${fn}
    Input Text    ${firstName_txb}    ${fn} 
    
Enter Lastname
    [Arguments]    ${ln}
    Input Text    ${lastName_txb}   ${ln}
    
Enter Password
    [Arguments]    ${pwd}
    Input Text    ${pwd_txb}    ${pwd}    
    
Enter AddressFirstName
    [Arguments]    ${addfn}
    Input Text    ${addressFirstName_txb}    ${addfn}

Enter AddressLastName
    [Arguments]    ${addln}
    Input Text    ${addressLastName_txb}   ${addln}  
  
Enter Address
    [Arguments]    ${address}
    Input Text    ${address_txb}    ${address}    
    
Enter city
    [Arguments]    ${city}
    Input Text    ${city_txb}    ${city}
    
Enter zipcode
    [Arguments]    ${zip}
    Input Text    ${postCode_txb}    ${zip}    
    
Enter MobileNumber
    [Arguments]    ${mob}
    Input Text    ${mob_txb}    ${mob}    
    
Select State from the dropdown
    [Arguments]    ${state}
    Select From List By Label    ${state_dropDown}    ${state}
    
Click Registartion Button
    Click Button    ${registration_btn}    
    
Verify URL
    [Arguments]    ${expectedURL}
    Get Location
    Location Should Be    ${url}${expectedURL}
    

          