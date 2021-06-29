*** Settings ***
Library           Selenium2Library

*** Variables ***
${Email}          id=email
${Password}       id=passwd
${ButtonCheckout}    ${EMPTY}
${ButtonCart}     ${EMPTY}
${ButtonSubscribe}    ${EMPTY}
${ButtonMenuList}    ${EMPTY}
${ButtonSearchNow}    ${EMPTY}
${ButtonLogin}    ${EMPTY}
${ButtonRegister}    ${EMPTY}

*** Test Cases ***
Account_Register_InvalidEmailFormat
    [Documentation]    I want to Register my account on Hotel SekolahQA with Invalid Data
    Open Browser    http://103.226.139.66:8080/en/
    Click Link    //*[@id="header"]/div[3]/div/div/div[7]/ul/li/a
    Sleep    2
    Input Text    email_create    dsdjf
    Sleep    2
    Press Keys    SubmitCreate    RETURN
    Sleep    2
    Clear Element Text    email_create
    Sleep    2

Account_Register_InvalidRegisteredEmail
    [Documentation]    I want to Register my account on Hotel SekolahQA with Registered Email
    Input Text    email_create    ekki.andro@gmail.com
    Sleep    2
    Press Keys    SubmitCreate    RETURN
    Sleep    2
    Clear Element Text    email_create
    Sleep    2

Account_Register_ValidData
    [Documentation]    I want to Register my account on Hotel SekolahQA with Valid Data
    Input Text    email_create    ekki.androhhh@gmail.com
    Sleep    2
    Press Keys    SubmitCreate    RETURN
    Sleep    2
    Input Text    customer_firstname    Ekki
    Sleep    2
    Input Text    customer_lastname    Permana
    Sleep    2
    Input Text    email    ekki.androhhh@gmail.com
    Sleep    2
    Input Password    passwd    12345@@@X
    Sleep    2
    Select From List By Value    days    8
    Sleep    2
    Select From List By Value    months    3
    Sleep    2
    Select From List By Value    years    1995
    Sleep    2
    Press Keys    submitAccount    RETURN
    Sleep    2

Account_Login_InvalidAll
    [Documentation]    I want to \ Login my account on Hotel SekolahQA with Invalid Data
    Open Browser    http://103.226.139.66:8080/en/
    Click Link    //*[@id="header"]/div[3]/div/div/div[7]/ul/li/a
    Input Text    email    cekcekkk@gmail.com
    Input Password    passwd    cek
    Click Button    SubmitLogin
    Sleep    2
    Clear Element Text    email
    Clear Element Text    passwd
    Sleep    2

Account_Login_InvalidUsername
    [Documentation]    I want to Login my account on Hotel SekolahQA with Invalid Username but valid Password
    Input Text    email    cekcekkk@gmail.com
    Input Password    passwd    cek
    Click Button    SubmitLogin
    Sleep    2
    Clear Element Text    email
    Clear Element Text    passwd
    Sleep    2

Account_Login_InvalidPassword
    [Documentation]    I want to Login my account on Hotel SekolahQA with Invalid Data with Invalid Password but Valid Username
    Input Text    email    cekcekkk@gmail.com
    Input Password    passwd    cek
    Click Button    SubmitLogin
    Sleep    2
    Clear Element Text    email
    Clear Element Text    passwd
    Sleep    2

Account_Login_InvalidBlank
    [Documentation]    I want to Login my account on Hotel SekolahQA with Invalid Data with Invalid Format Username and Password
    Input Text    email    -
    Input Password    passwd    -
    Click Button    SubmitLogin
    Sleep    2
    Clear Element Text    email
    Clear Element Text    passwd
    Sleep    2

Account_Login_Valid
    [Documentation]    I want to Login my account on Hotel SekolahQA with Valid Username and Password
    Input Text    email    ekki.andro@gmail.com
    Input Password    passwd    12345@@@
    Sleep    2
    Click Button    SubmitLogin
    Sleep    2

Account_Edit_Profile

Order_Checkout
    [Documentation]    I want to Checkout with range date 26 06 2021 until 28 07 2021
    Click Button    //*[@id="header"]/div[3]/div/div/div[2]/button
    Click Link    //*[@id="menu_cont"]/div/div/div[2]/ul[1]/li[1]/a
    Sleep    2
    Input Text    hotel_location    Indonesia
    Sleep    2
    Click Element    hotel_cat_name
    Sleep    2
    Click Element    //*[@id="search_hotel_block_form"]/div[2]/div/ul/li
    Sleep    2
    Click Element    check_in_time
    Sleep    2
    Click Element    //*[@id="ui-datepicker-div"]/table/tbody/tr[5]/td[3]/a
    Sleep    2
    Click Element    //*[@id="ui-datepicker-div"]/table/tbody/tr[5]/td[3]/a
    Sleep    2
    Click Button    search_room_submit

Order_AddToCart-1Item
    [Documentation]    I want Add to Cart 1 item from the list
    Click Link    //*[@id="category_data_cont"]/div[1]/div/div[2]/a
    Sleep    2
    Click Link    //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
    Sleep    2
    Click Link    //*[@id="collapse-shopping-cart"]/div/div[2]/div[2]/div/a
    Sleep    2
    Click Link    //*[@id="collapse-guest-info"]/div/div[4]/div/a
    Sleep    2
    Select Checkbox    cgv
    Sleep    10

PaymentMethod_BankWire
    [Documentation]    I want to Pay my order with BankWire payment method
    Sleep    10
    Click Link    //*[@id="HOOK_PAYMENT"]/div[1]/div/p/a
    Sleep    6
    Click Element    //*[@id="cart_navigation"]/button
    Sleep    6

Order_AddToCart_2Item
    [Documentation]    I want Add to Cart 2 item from the list
    Click Button    //*[@id="header"]/div[3]/div/div/div[2]/button
    Click Link    //*[@id="menu_cont"]/div/div/div[2]/ul[1]/li[1]/a
    Sleep    2
    Input Text    hotel_location    Indonesia
    Sleep    2
    Click Element    hotel_cat_name
    Sleep    2
    Click Element    //*[@id="search_hotel_block_form"]/div[2]/div/ul/li
    Sleep    2
    Click Element    check_in_time
    Sleep    2
    Click Element    //*[@id="ui-datepicker-div"]/table/tbody/tr[5]/td[3]/a
    Sleep    2
    Click Element    //*[@id="ui-datepicker-div"]/table/tbody/tr[5]/td[3]/a
    Sleep    2
    Click Button    search_room_submit
    Sleep    2
    Click Link    //*[@id="category_data_cont"]/div[1]/div/div[2]/a
    Sleep    2
    Click Element    //*[@id="layer_cart"]/div[1]/div[2]/div[4]/span
    Sleep    2
    Click Link    //*[@id="category_data_cont"]/div[2]/div/div[2]/a
    Sleep    2
    Click Link    //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
    Sleep    2
    Click Link    //*[@id="collapse-shopping-cart"]/div/div[2]/div[3]/div/a
    Sleep    2
    Click Link    //*[@id="collapse-guest-info"]/div/div[4]/div/a
    Sleep    2
    Select Checkbox    cgv
    Sleep    10

PaymentMethod_ByCheck
    [Documentation]    I want to Pay my order with Cek payment method
    Click Link    //*[@id="HOOK_PAYMENT"]/div[2]/div/p/a
    Sleep    2
    Click Element    //*[@id="cart_navigation"]/button
    Sleep    2

Order_AddToCart_DoubleItem
    [Documentation]    I want Add to Cart 3 item from the list
    Click Button    //*[@id="header"]/div[3]/div/div/div[2]/button
    Click Link    //*[@id="menu_cont"]/div/div/div[2]/ul[1]/li[1]/a
    Sleep    2
    Input Text    hotel_location    Indonesia
    Sleep    2
    Click Element    hotel_cat_name
    Sleep    2
    Click Element    //*[@id="search_hotel_block_form"]/div[2]/div/ul/li
    Sleep    2
    Click Element    check_in_time
    Sleep    2
    Click Element    //*[@id="ui-datepicker-div"]/table/tbody/tr[5]/td[3]/a
    Sleep    2
    Click Element    //*[@id="ui-datepicker-div"]/table/tbody/tr[5]/td[3]/a
    Sleep    2
    Click Button    search_room_submit
    Sleep    2
    Input Text    cat_quantity_wanted_4    2
    Sleep    2
    Click Link    //*[@id="category_data_cont"]/div[3]/div/div[2]/a
    Sleep    2
    Click Link    //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
    Sleep    2
    Click Link    //*[@id="collapse-shopping-cart"]/div/div[2]/div[2]/div/a
    Sleep    2
    Click Link    //*[@id="collapse-guest-info"]/div/div[4]/div/a
    Sleep    2
    Select Checkbox    cgv
    Sleep    6

PaymentMethod_PayPal
    [Documentation]    I want to Pay my order with PayPal payment method
    Sleep    10
    Click Link    //*[@id="HOOK_PAYMENT"]/div[3]/div/p/a
    Sleep    2
    Click Element    //*[@id="cart_navigation"]/button
    Sleep    6

Cart_Checkout
    [Documentation]    I want to open the Cart
    Click Link    //*[@id="header"]/div[3]/div/div/div[4]/div/a
    Sleep    2

Dashboard_OrderList
    [Documentation]    I want to see my Order List
    Click Button    user_info_acc
    Sleep    2
    Click Link    //*[@id="header"]/div[3]/div/div/div[7]/ul/li/ul/li[2]/a
    Sleep    2

Dashboard_Explore
    [Documentation]    I Want to Explore Hotel Dashboard with some menu
    Click Button    //*[@id="header"]/div[3]/div/div/div[2]/button
    Sleep    2
    Click Link    //*[@id="menu_cont"]/div/div/div[2]/ul[1]/li[2]/a
    Sleep    2
    Click Button    //*[@id="header"]/div[3]/div/div/div[2]/button
    Sleep    2
    Click Link    //*[@id="menu_cont"]/div/div/div[2]/ul[1]/li[3]/a
    Sleep    2
    Click Element    //*[@id="menu_cont"]/div/div/div[1]/span
    Sleep    2

Dashboard_NotificationsSubsribe
    [Documentation]    I want to input my email and subscribe for Notifications
    Input Text    newsletter-input    ekki.androhhh@gmail.com
    Sleep    2
    Click Button    //*[@id="footer"]/div/div[3]/div[1]/section/div[2]/form/div/button
    Sleep    2

Account_LogOut
    [Documentation]    I want LogOut from my Account
    Click Button    user_info_acc
    Sleep    2
    Click Link    //*[@id="header"]/div[3]/div/div/div[7]/ul/li/ul/li[3]/a
    Sleep    2
