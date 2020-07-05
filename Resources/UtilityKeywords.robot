*** Settings ***
Library    SeleniumLibrary   
Variables    ../Variable/variables.py 


*** Keywords ***
Open my Browser
    [Arguments]    ${siteUrl}    ${browser}
    Open Browser    ${siteUrl}    ${browser}
    Maximize Browser Window
    
Enter data
    [Arguments]    ${locator}    ${value}
    Wait Until Element Is Visible    ${locator}    
    Input Text    ${locator}    ${value}    
    
Enter data in password format
    [Arguments]    ${locator}    ${pwd}
    Wait Until Element Is Visible    ${locator}    
    Input Password    ${locator}    ${pwd}
    
Select data from the dropdown by label
    [Arguments]    ${locator}    ${value}
    Wait Until Element Is Visible    ${locator}
    Select From List By Label    ${locator}    ${value}
    
Click web element
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}   
    
Click button element
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Button    ${locator} 
    
Verify current url with expected url
    [Arguments]    ${expectedUrl}
    Location Should Be    ${url}${expectedUrl}       
     