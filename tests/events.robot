*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../pages/loginPage.robot
Resource    ../pages/eventsPage.robot
Resource    ../pages/NewsPage.robot
Resource    ../pages/HomePage.robot

Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***

Verify user is able to remove bookmark the Global Events on the Events Screen
    [Tags]  TC042  Events  Gurutattva
    Open Gurutattva App
    Login As Community Member
    Click on the Events Tab
    Click on Global Events Tab
    Click on First Available Card
    Bookmark Event And Validate
    Remove Bookmark Event And Validate

Verify user is able to remove bookmark the Local Events on the Events Screen
    [Tags]  TC043  Events  Gurutattva
    Open Gurutattva App
    # Login As Community Member
    Click on the Events Tab
    Click on Local Events Tab
    Click on First Available Card
    Bookmark Event And Validate
    Remove Bookmark Event And Validate

Verify that the user is able to redirect to Events screen from Global Events Detail screen using back button
    [Tags]  TC044  Events  Gurutattva
    Open Gurutattva App
    # Login As Community Member
    Click on the Events Tab
    Click on Global Events Tab
    Click on First Available Card
    Click on Back Button for Event And Validate
  
Verify that the user is able to redirect to Events screen from Local Events Detail screen using back button
    [Tags]  TC045  Events  Gurutattva
    Open Gurutattva App
    # Login As Community Member
    Click on the Events Tab
    Click on Local Events Tab
    Click on First Available Card
    Click on Back Button for Event And Validate

Verify user is able to bookmark the Global Events on the Events Screen
    [Tags]  TC033  Events  Gurutattva
    Open Gurutattva App
    # Login As Community Member
    Click on the Events Tab
    Click on Global Events Tab
    Click on First Available Card
    Bookmark Event And Validate
    Remove Bookmark Event And Validate

Verify user is able to bookmark the Local Events on the Events Screen
    [Tags]  TC034  Events  Gurutattva
    Open Gurutattva App
    # Login As Community Member
    Click on the Events Tab
    Click on Local Events Tab
    Click on First Available Card
    Bookmark Event And Validate
    Remove Bookmark Event And Validate

Verify Local Events Detail screen on the Events screen with correct details
    [Tags]  TC030  Events  Gurutattva
    Open Gurutattva App
    # Login As Community Member
    Click on the Events Tab
    Click on Local Events Tab
    Click on First Available Card
    verify Detail screen Information

Verify Global Events Detail screen on the Events screen with correct details
    [Tags]  TC029  Events  Gurutattva
    Open Gurutattva App
    # Login As Community Member
    Click on the Events Tab
    Click on Global Events Tab
    Click on First Available Card
    verify Detail screen Information

Verify Global Events Card is displayed on the Events screen with correct details
    [Tags]  TC025  Events  Gurutattva
    Open Gurutattva App
    # Login As Community Member
    Click on the Events Tab
    Click on Global Events Tab
    Verify Global Events Card Structure

Verify Local Events Card is displayed on the Events screen with correct details
    [Tags]  TC026  Events  Gurutattva
    Open Gurutattva App
    # Login As Community Member
    Click on the Events Tab
    Click on Local Events Tab
    Verify Local Events Card Structure

Verify user is able to redirect to Global Events from Local Events
    [Tags]  TC036  Events  Gurutattva
    Open Gurutattva App
    # Login As Community Member
    Redirect to Global Events from Local Events

Verify that the user is able to redirect to Home screen from Events screen using back button
    [Tags]  TC022  Events  Gurutattva
    Open Gurutattva App
    # Login As Community Member
    Click on the Events Tab
    Click on the Back Button from News and Events Screen
    Verify Home Screen is displayed

Verify user is able to bookmark the Global Events on the Event's list Screen
    [Tags]  TC119  Events  Gurutattva
    Open Gurutattva App
    # Login As Community Member
    Click on the Events Tab
    Click on bookmark icon for events list screen
    Verify Validation Message
    Remove Bookmark icon from events list screen
    Close Gurutattva App

Verify user is able to bookmark the Local Events on the Event's list Screen
    [Tags]  TC120  Events  Gurutattva
    Open Gurutattva App
    # Login As Community Member
    Click on the Events Tab
    Click on Local Events Tab
    Click on bookmark icon for events list screen
    Verify Validation Message
    Remove Bookmark icon from events list screen
    Close Gurutattva App   

Verify user is able to remove bookmark the Global Events on the Event's list Screen
    [Tags]  TC121  Events  Gurutattva    
    Open Gurutattva App
    # Login As Community Member
    Click on the Events Tab
    Click on Global Events Tab
    Click on bookmark icon for events list screen
    Remove Bookmark icon from events list screen
    Verify Validation Message for Remove Bookmark
    Close Gurutattva App   

Verify user is able to remove bookmark the Local Events on the Event's list Screen
    [Tags]  TC122  Events  Gurutattva
    Open Gurutattva App
    # Login As Community Member
    Click on the Events Tab
    Click on Local Events Tab
    Click on bookmark icon for events list screen
    Remove Bookmark icon from events list screen
    Verify Validation Message for Remove Bookmark
    Close Gurutattva App