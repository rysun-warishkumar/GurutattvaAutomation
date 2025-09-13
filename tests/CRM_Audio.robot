*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../resources/web_keywords.robot
Resource    ../pages/loginPage.robot
Resource    ../pages/AudioPage.robot
Resource    ../pages/CRM_AudioPage.robot
Resource    ../pages/HomePage.robot

Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***
Verify when music is added from web, it is displayed on the mobile app
    [Tags]  TC175  Audio  Gurutattva  Web
    Open Web Browser
    Login in with valid credentials
    Click on the Audio Menu
    Click on the Music Submenu
    Click on the Add Music button
    Fill the form with valid data to add a new music
    Click on the Upload button
    Wait For Data Sync    30s
    Close Web Browser

    Open Gurutattva App
    Handle First Time Setup
    Run Keyword And Ignore Error    Login To Mobile App
    Click on the Audio Tab
    Verify Music Appears On Mobile    Integration Test Music
    Click on the Recently Added Card
    Verify Music Information
    Close Gurutattva App