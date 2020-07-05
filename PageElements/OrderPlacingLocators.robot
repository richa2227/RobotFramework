*** Variables ***

${women_btn}    xpath://a[@title = 'Women']
${firstItem}    xpath:/html[1]/body[1]/div[1]/div[2]/div[1]/div[3]/div[2]/ul[1]/li[1]/div[1]/div[1]/div[1]/a[1]/img[1]
# ${quickView_btn}    class:button ajax_add_to_cart_button btn btn-default
${quickView_btn}    class:quick-view
${addToCart_btn}    name : Submit
${totalAmountInCart}    xpath : //span[@class='ajax_block_cart_total']
${ProceedToCheckOut_btn1}    xpath : //span[contains(text(),'Proceed to checkout')]
${ProceedToCheckOut_btn2}    xpath : //a[@class='button btn btn-default standard-checkout button-medium']
${ProceedToCheckOut_btn3}    xpath : //button[@name='processAddress']
${ProceedToCheckOut_btn4}    xpath : //button[@name='processCarrier']
${totalPriceAtCheckOut}    xpath : //td[@id='total_price_container']
${agree_checkBox}    id : cgv
${bankWirePaymentOption}    class : bankwire
${confirmOrder_btn}    xpath : //span[contains(text(),'I confirm my order')]
${orderComplete_txt}    class : cheque-indent
${orderHistory_btn}    xpath : //span[contains(text(),'Order history and details')]
${priceOfFirstItemInHistory}    xpath : //tr[contains(@class,'first_item')]//td[@class:'history_price']
${logo}    xpath : //img[@class='logo img-responsive']
${itemPopUp}    xpath : //body[@id='product']/div
${frame}    tag : iframe
${addQuantity}    class : icon-plus
${loggedInUserName}    class : account






