*** Settings ***
Library  SeleniumLibrary

Variables  ../pages/locators.py


*** Keywords ***
Click Male Radion Button
    Scroll Element Into View  ${reg_maleRadBtn}
    Wait Until Element Is Visible  ${reg_maleRadBtn}
    Click Element  ${reg_maleRadBtn}

Enter User First Name
    [Arguments]  ${fName}
    Scroll Element Into View  ${reg_fNameBox}
    Wait Until Element Is Visible  ${reg_fNameBox}
    Input Text  ${reg_fNameBox}  ${fName}

Enter User Last Name
    [Arguments]  ${lName}
    Scroll Element Into View  ${reg_lNameBox}
    Wait Until Element Is Visible  ${reg_lNameBox}
    Input Text  ${reg_lNameBox}  ${lName}

Enter User Email
    [Arguments]  ${email}
    Scroll Element Into View  ${reg_emailBox}
    Wait Until Element Is Visible  ${reg_emailBox}
    Input Text  ${reg_emailBox}  ${email}

Enter User Password
    [Arguments]  ${password}
    Scroll Element Into View  ${reg_passwordBox}
    Wait Until Element Is Visible  ${reg_passwordBox}
    Input Text  ${reg_passwordBox}  ${password}

Confirm User Password
    [Arguments]  ${confirmPassword}
    Scroll Element Into View  ${reg_confirmPasswordBox}
    Wait Until Element Is Visible  ${reg_confirmPasswordBox}
    Input Text  ${reg_confirmPasswordBox}  ${confirmPassword}

Click Register Button
    Scroll Element Into View  ${reg_regBtn}
    Wait Until Element Is Visible  ${reg_regBtn}
    Click Element  ${reg_regBtn}

Verify Sucessful Registeration
    Wait Until Element Is Visible  ${reg_success}
    Page Should Contain Element  ${reg_success}

Verify Unsucessful Registeration unmatched passwords
    Wait Until Element Is Visible  ${reg_unmatchingPasswords}
    Page Should Contain Element  ${reg_unmatchingPasswords}

Invalid Register Test Case
    [Arguments]  ${fName}  ${lName}  ${email}  ${password}  ${confirmPassword}
    Click Male Radion Button
    Enter User First Name  ${fName}
    Enter User Last Name  ${lName}
    Enter User Email  ${email}
    Enter User Password  ${password}
    Confirm User Password  ${confirmPassword}
    Click Register Button
    Verify Unsucessful Registeration unmatched passwords


valid Register Test Case
    [Arguments]  ${fName}  ${lName}  ${email}  ${password}
    Click Male Radion Button
    Enter User First Name  ${fName}
    Enter User Last Name  ${lName}
    Enter User Email  ${email}
    Enter User Password  ${password}
    Confirm User Password  ${password}
    Click Register Button
    Verify Sucessful Registeration
