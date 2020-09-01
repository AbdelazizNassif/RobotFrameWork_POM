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
user search For Product
    Log To Console  This is the body of the search test cases

*** Keywords ***

Navigate To Homepage
    Open Browser  ${aut_Url}  ${browser}
    Maximize Browser Window
    configure selenium general options

Exit These Tests
    Close Browser


