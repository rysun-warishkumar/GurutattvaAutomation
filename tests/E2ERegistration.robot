*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../pages/registerPage.robot
Resource    ../pages/loginPage.robot
Resource    ../pages/NewsPage.robot
Resource    ../resources/libraries.robot
Resource    ../resources/keywords.robot
Resource    ../resources/web_keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../pages/E2EAudioPage.robot
Resource    ../pages/CRM_AudioPage.robot
Resource    ../pages/E2ERegistrationPage.robot
Resource    ../pages/homePage.robot
Resource    ../pages/ProfilePage.robot
Resource    ../pages/eventsPage.robot


Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***
Verify user is able to do quick regisration on mobile app and confirm that the user is reflected correctly in the CSM
    [Tags]  TC008  Register  Gurutattva
    # --- Generate Unique Test Data ---
    Generate E2E Registration Test Data
    
    # --- Mobile App: Quick Registration ---
    Open Gurutattva App
    Handle First Time Setup
    Click on the Register Link
    Click on the Quick Registration Tab
    Enter E2E Registration Data
    Select Gender
    Select DOB for Register Screen
    Select Country for Register Screen
    Select State for Register Screen
    Select District for Register Screen
    Select Taluka/City for Register Screen
    Select Area/Village for Register Screen
    Click on the Quick Registration Button
    Verify OTP Screen is Displayed
    Enter Email OTP Manually
    Click on the Verify Button
    Verify Home Screen is Displayed

    # --- Web CRM: Verify created user in CRM---
    Open Web Browser
    Login in with valid credentials
    Click on the User Management Menu
    Verify the created User


Verify that the quick registration user is not able to access Events, Dhyan Kendra, and Podcasts , Home screen on the mobile app, and that a pop-up message is displayed
    [Tags]  TC09  QuickRegistration
    Open Gurutattva App
	Handle First Time Setup
	Launch Mobile App And Login
    Click on the Explore Button
    Click on the DhyanKendra Tab
    Verify Quick Registration Access Restriction Popup
    Click on the Cancel Button from Become a Member Popup
	Click on the Events Tab
	Verify Quick Registration Access Restriction Popup
    Click on the Cancel Button from Become a Member Popup
    Click on the Audio Tab
    Click on the Podcast Tab
    Verify Quick Registration Access Restriction Popup
    Click on the Cancel Button from Become a Member Popup
    Close Gurutattva App

Verify that the community registration user details in profile and flip card on the mobile app
    [Tags]  TC13  CommunityRegistration
    # --- Generate Unique Test Data ---
    Generate E2E Community Registration Test Data

    # --- Mobile App: Community Registration ---
    Open Gurutattva App
    Handle First Time Setup
    Click on the Register Link
    Click on the Community Registration Tab
    Click on the NO Radio Button
    Click on the Next Button from Community Registration
    Handle Location Permission
    Select Dhyankendra and click on the Next Button
    Enter E2E Community Registration Data
    Verify OTP Screen is Displayed
    Enter Email OTP Manually
    Click on the Verify Button
    Verify Home Screen is Displayed
    Click on the Profile Tab
    Verify Community User Details in Profile Information
    Click on the Edit Profile Tab
    Verify Community User Details in Edit Profile
    Click on the Back Button from Edit Profile Screen
    Click on the Delete Account Tab
    Click on the Delete Button from Delete Account Alert
    Verify Login Screen Is Displayed
    Close Gurutattva App

Verify that the community registered user is able to access Events, Dhyan Kendra, and Podcasts on the mobile app, and ensure that no pop-up message is displayed    
    [Tags]  TC14  CommunityRegistration
    Open Gurutattva App
	Handle First Time Setup
    Launch Mobile App And Login as Community User
    Click on the Explore Button
    Click on the DhyanKendra Tab
    Handle DhyanKendra Location
    Verify DhyanKendra Access
    Click on the Events Tab
    Verify Events Access
    Click on the Audio Tab
    Click on the Podcast Tab
    Verify Podcast Screen is displayed
    Close Gurutattva App

Verify that the quick registration user details in profile and flip card on the mobile app
    [Tags]  TC11  QuickRegistration
    # --- Generate Unique Test Data ---
    Generate E2E Quick Registration Test Data

    # --- Mobile App: Quick Registration ---
    Open Gurutattva App
    Handle First Time Setup
    Click on the Register Link
    Click on the Quick Registration Tab
    Enter E2E Quick Registration Data
    Click on the Quick Registration Button
    Verify OTP Screen is Displayed
    Enter Email OTP Manually
    Click on the Verify Button
    Verify Home Screen is Displayed
    Click on the Profile Tab
    Verify Quick Registration User Details in Profile Information
    Click on the Edit Profile Tab
    Verify Quick Registration User Details in Edit Profile
    Click on the Back Button from Edit Profile Screen
    Click on the Delete Account Tab
    Click on the Delete Button from Delete Account Alert
    Verify Login Screen Is Displayed
    Close Gurutattva App