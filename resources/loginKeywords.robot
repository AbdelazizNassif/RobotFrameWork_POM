*** Settings ***
Library  SeleniumLibrary

Variables  ../pages/locators.py


*** Keywords ***
Enter UserName
    [Arguments]  ${email_data}
    Input Text  ${log_email}  ${email_data}

Enter Password
    [Arguments]  ${password_data}
    Input Text  ${log_passwordBox}  ${password_data}

Click Login Button
    Click Element  ${log_loginBtn}

Fill Login Form Validly
    [Arguments]  ${email_data}  ${password_data}
    Enter UserName  ${email_data}
    Enter Password  ${password_data}
    Click Login Button

#verify in valid login