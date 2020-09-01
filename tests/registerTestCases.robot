*** Settings ***
Documentation    Suite description

Resource  ../resources/registerKeywords.robot
Resource  ../resources/loginKeywords.robot

Resource  ../testDataGenerator/genTestData.robot

Resource    ../testsSetup/testBase.robot

Suite Setup  Run Keywords   Navigate To Homepage
Suite Teardown  Exit These Tests

*** Variables ***
#Test Data
${fName}
${lName}
${email}
${password}
${confirmPassword}

*** Test Cases ***
user enter invalid Register data Test Case
    Generate Test Data for invalid Regiter
    Invalid Register Test Case  ${fName}  ${lName}  ${email}  ${password}  ${confirmPassword}

user enter valid Register data Test Case
    Generate Test Data for valid Regiter
    valid Register Test Case  ${fName}  ${lName}  ${email}  ${password}

user enter valid Login data Test Case
    Go To  https://demo.nopcommerce.com/login?returnUrl=%2F
    Fill Login Form Validly  ${email}  ${password}

*** Keywords ***
Generate Similar Data For the Form
    ${fName}=  generateRandomPersonName  7
    Set Global Variable  ${fName}
    ${lName}=  generateRandomPersonName  7
    Set Global Variable  ${lName}
    ${email}  generateRandomEmail
    Set Global Variable  ${email}
    ${password}  generateRandomPassword
    Set Global Variable  ${password}

Generate Test Data for valid Regiter
    Generate Similar Data For the Form

Generate Test Data for invalid Regiter
    Generate Similar Data For the Form
    ${confirmPassword}=  generateRandomPassword
    Set Global Variable  ${confirmPassword}

Navigate To Homepage
    Open Browser  ${aut_Url}  ${browser}
    Maximize Browser Window
    configure selenium general options

Exit These Tests
    Close Browser


