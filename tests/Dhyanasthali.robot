*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../pages/loginPage.robot
Resource    ../pages/ExplorePage.robot
Resource    ../pages/DhyanasthaliPage.robot
Resource    ../pages/HomePage.robot

Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***
Verify that the user is able to redirect to Explore screen from Dhyanasthali screen using back button
    [Tags]   TC046    Dhyansthali  Gurutattva
    Open Gurutattva App    
    Click on the Explore Tab
    Click on the Dhyansthali Tab
    Click on the Back Button
    Verify Explore Screen is displayed

Verify Dhyanasthali card is displayed on the Dhyanasthali screen with correct details
    [Tags]   TC049    Dhyansthali  Gurutattva
    Open Gurutattva App
    Click on the Explore Tab
    Click on the Dhyansthali Tab
    Verify card information is displayed with correct details

Verify that the user is able to redirect to Dhyanasthali screen from Dhyanasthali Detail screen using back button
    [Tags]   TC048    Dhyansthali  Gurutattva
    Open Gurutattva App
    Click on the Explore Tab
    Click on the Dhyansthali Tab
    Click on the Dhyansthali Card
    Click on the Back Button
    Verify card information is displayed with correct details

Verify Dhyanasthali Detail screen on the Dhyanasthali screen with correct details
    [Tags]   TC047    Dhyansthali  Gurutattva
    Open Gurutattva App
    Click on the Explore Tab
    Click on the Dhyansthali Tab
    Click on the Dhyansthali Card
    Verify detail screen information is displayed with correct details