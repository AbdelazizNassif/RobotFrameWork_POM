# RobotFrameWork_POM

How to run it? run the run.bat file containing the terminal lines to execute the tests. you will need to change the first line of it to your directory.

xplanation:

pages directory: locators.py ------> contains the pages elements

resources directory: contains robot files to generate test steps and scenarios to be used in the tests directly. so that the tests are written in specific format contains some initializations, test data, test steps

testDataGenerator directory: contains robot file to generate random data for the tests like phone numbers, emails, names, ... etc. .

testsSetup directory: contains robot file/s to configure tests setup (actions before the tests) and tests teardown (action after the tests) and test environment.

tests directory: contains robot file/s to use the tests steps and scenarios to be run.

what to be added in the future ?? Jenkins integration, docker integration, DDT design.
