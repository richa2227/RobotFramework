*** Settings ***
Library    SeleniumLibrary    
Resource    ../PageElements/OrderPlacingLocators.robot
Resource    UtilityKeywords.robot 

*** Keywords ***
 Click on Logo
    Click web element    ${logo}
    
Click on women tab to get all woment items
    Click web element    ${women_btn}
    
Wait until firt item is visible
    Wait Until Element Is Visible    ${firstItem}    
    
Hover on the first item displayed
    Mouse Over    ${firstItem}
    
Click on quickview
    Click Element    ${quickView_btn}

# Wait until item popup
    # Wait Until Element Is Visible    ${itemPopUp}    
    
Switch the item ppoup frame
    Select Frame    ${frame}
    
Select the quantity of the item you want
    Click web element    ${addQuantity}    
    
Add items to the cart
    Click web element    ${addToCart_btn}    
    
Switch to main frame
    Unselect Frame
    
Procced to checkout page 1
    Click web element    ${ProceedToCheckOut_btn1}
    
Procced to checkout page 2
    Click web element    ${ProceedToCheckOut_btn2}
    
Procced to checkout page 3
    Click web element    ${ProceedToCheckOut_btn3}
    
Check the checkbox to agree the policy
    Select Checkbox    ${agree_checkBox}
    
Verify that checkbox is checked
    Checkbox Should Be Selected    ${agree_checkBox}
    
Procced to checkout page 4
    Click web element    ${ProceedToCheckOut_btn4}
    
Get the total price at the checkout
    ${a}    Get Text    ${totalPriceAtCheckOut}
    ${priceAtCheckOut}    Set Global Variable    ${a}
    Log    ${priceAtCheckOut}    
    Return From Keyword    ${priceAtCheckOut}
    
Select the payment method
    Click web element    ${bankWirePaymentOption}
    
Confirm your order
    Click web element    ${confirmOrder_btn} 
    
Go to your account
    Click web element    ${loggedInUserName}
    
GO to order history
    Click web element    ${orderHistory_btn}
    
Get price of your recent order from the order history
    ${b}    Get Text    ${priceOfFirstItemInHistory}
    ${priceInOrderHIstory}    Set Global Variable    ${b} 
    Log    ${priceInOrderHIstory}    
    Return From Keyword    ${priceInOrderHIstory}
    
      
    
   
    


