*** Settings ***
Library           Selenium2Library

*** Variables ***
${txtUsername}    id=txtUsername
${txtPassword}    id=txtPassword
${BtnLogin}       id=btnLogin
${btnAddContact}    id=btnAddContact
${btnSaveEContact}    id=btnSaveEContact

*** Test Cases ***
TC_NavigateToURL
    [Documentation]    This Test case to navigate user to URL https://opensource-demo.orangehrmlive.com/
    Open Browser    https://opensource-demo.orangehrmlive.com/    firefox
    Input Text    ${txtUsername}    Admin
    Sleep    2s
    Input Text    ${txtPassword}    admin123
    Click Button    btnLogin
    Sleep    3s

TC_MyInfo
    [Documentation]    This Test case to navigate My profile and add Emergency Contact
    Click Link    //*[@id="menu_pim_viewMyDetails"]
    Click Link    //*[@id="sidenav"]/li[3]/a
    Click Button    ${btnAddContact}
    Input Text    emgcontacts_name    SQA7
    Sleep    2s
    Input Text    emgcontacts_relationship    Coursess
    Sleep    2s
    Input Text    emgcontacts_homePhone    085293765769
    Sleep    2s
    Input Text    emgcontacts_mobilePhone    085293765765
    Sleep    2s
    Input Text    emgcontacts_workPhone    085293765762
    Sleep    2s
    Click Button    ${btnSaveEContact}
    Sleep    2s

TC_LogOut
    [Documentation]    This test case for LogOut
    Click Link    welcome
    Sleep    2s
    Click Link    //*[@id="welcome-menu"]/ul/li[3]/a
