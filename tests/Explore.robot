*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../pages/loginPage.robot
Resource    ../pages/ExplorePage.robot
Resource    ../pages/HomePage.robot
Resource    ../pages/DhyanasthaliPage.robot
Resource    ../pages/PrayerPage.robot
Resource    ../pages/namkaranPage.robot
# Resource    ../pages/AudioPage.robot

Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***
Verify the list of Offering in the Explore Sections
   [Tags]  TC016  Explore  Gurutattva
   Open Gurutattva App
   Click on the Explore Tab
   Print All Participate Names

Verify that the user is able to redirect to Home screen from Explore screen using back button
    [Tags]  TC108  Explore  Gurutattva
    Open Gurutattva App
    # Login As Community Member
    Click on the Explore Tab
    Print All Participate Names
    Click on the Back Button from Explore Screen
    Verify Home Screen is displayed

Verify that clicking all the list of Offering in the Explore Sections
   [Tags]  TC175  Explore  Gurutattva
    Open Gurutattva App
    Click on the Explore Tab
    Click on the Dhyansthali Tab
    Verify card information is displayed with correct details
    Click on the Back Button
    Verify Explore Screen is displayed
    Click on the Prayer Card
    Handle Prayer Add Screen
    Click on the Back Button from Prayer Screen or Prayer Form
    Verify Explore Screen is displayed
    Click on the Namkaran Card
    Handle Namkaran Add Screen
    Click on the Back Button from Namkaran Screen
    Verify Explore Screen is displayed
    Click on the Audio Tab From Explore Screen
    Verify Audio Screen is displayed From Explore Screen
    Click on the Back Button from Audio Screen
    Verify Home Screen is displayed
