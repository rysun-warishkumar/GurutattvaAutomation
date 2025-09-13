*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../pages/loginPage.robot
Resource    ../pages/registerPage.robot
Resource    ../pages/ProfilePage.robot

Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***

Verify that the user is able to log in with a mobile number
    [Tags]  TC001  Login  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    Click on the input field
    Enter the validate and exist mobile number
    Click on the Login Button
    Verify OTP Screen is Displayed
    Enter Mobile OTP Manually
    Click on the Verify Button
    Verify Home Screen is Displayed
    Click on the Profile Tab
    Click on the Logout Tab
    Click on the Yes Button from Logout Alert
    Verify Login Screen Is Displayed
    Close Gurutattva App

Verify that the user is able to log in with an email address
    [Tags]  TC005  Login  Gurutattva  
    Open Gurutattva App
    Handle First Time Setup
    Click on the input field
    Enter the validate and exist email address
    Click on the Login Button
    Enter Email OTP Manually
    Click on the Verify Button
    Verify Home Screen is Displayed
    Click on the Profile Tab
    Click on the Logout Tab
    Click on the Yes Button from Logout Alert
    Verify Login Screen Is Displayed
    Close Gurutattva App

Verify that a validation message is displayed when entering an invalid mobile number    
    [Tags]  TC002   Login  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    Click on the input field
    Enter the invalid mobile credentials
    Click on the Login Button
    Verify Validation Message For Invalid User
    Close Gurutattva App

Verify that a validation message is displayed when entering an invalid email ID  
    [Tags]  TC003  Login  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    Click on the input field
    Enter the invalid email credentials
    Click on the Login Button
    Verify Validation Message For Invalid User    
    Close Gurutattva App

Verify that the user is not able to log in with an unregistered email ID
    [Tags]  TC006  Login  Gurutattva   
    Open Gurutattva App
    Handle First Time Setup
    Click on the input field
    Enter the Unexist email credentials
    Click on the Login Button
    Verify Validation Message For unexist User
    Close Gurutattva App

Verify that the user is not able to log in with an unregistered mobile number
    [Tags]   TC078  Login  Gurutattva     
    Open Gurutattva App
    Handle First Time Setup
    Click on the input field
    Enter the Unexist mobile credentials
    Click on the Login Button
    Verify Validation Message For unexist User
    Close Gurutattva App

Verify that a validation message is displayed when the user does not enter a phone number or email address
    [Tags]  TC004  Login  Gurutattva   
    Open Gurutattva App
    Handle First Time Setup
    Click on the input field
    Enter the Login As blank fields
    Click on the Login Button
    Verify Validation Message For blank fields
    Close Gurutattva App

Verify that the user is able to view all onboarding screens
    [Tags]  TC015  Login  Gurutattva  Onboarding
    Open App With Clean Data
    Allow Notification
    Select Hindi Language
    Save Settings
    Verify Validation Messages for Language
    Verify Mission screen
    Click on the next button
    Verify Vision screen
    Click on the next button
    Verify Values screen
    Click on the next button
    Verify Login Screen Is Displayed
    Close Gurutattva App


Verify that the user is able to navigate to the registration screen from the login screen
    [Tags]  TC014   Login  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    Click on Register Text Only
    Verify Registration Screen Is Displayed
    Close Gurutattva App

Verify that when clicking on tooltip it shows information on the login screen
    [Tags]  TC041  Login  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    Click on the Tooltip Icon
    Verify Tooltip Information Is Displayed   
    Close Gurutattva App   
