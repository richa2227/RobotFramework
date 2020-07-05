*** Settings ***
Library    SeleniumLibrary    
Resource    OrderCheckoutKeywords.robot

*** Keywords ***
Order checkout flow
    Click on Logo
    Click on women tab to get all woment items
    Wait until firt item is visible
    Hover on the first item displayed
    Click on quickview
    # Wait until item popup
    Switch the item ppoup frame
    Select the quantity of the item you want
    Add items to the cart
    Switch to main frame
    Procced to checkout page 1
    Procced to checkout page 2
    Procced to checkout page 3
    Check the checkbox to agree the policy
    Procced to checkout page 4
    Get the total price at the checkout
    Select the payment method
    Confirm your order
    Go to your account
    GO to order history
    Get price of your recent order from the order history
