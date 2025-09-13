*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../pages/loginPage.robot
Resource    ../pages/HomePage.robot
Resource    ../pages/DhyanasthaliPage.robot
Resource    ../pages/NewsPage.robot 
Resource    ../pages/eventsPage.robot
Resource    ../pages/ProfilePage.robot

Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***

Verify that clicking on View All in Ashram Insights should redirect to Global News by default
    [Tags]  TC017  Home  Gurutattva
    Open Gurutattva App
    # Login As Community Member
    Swipe to Ashram Insights Section
    Click on View ALL Button From Ashram Insights Section
    Verify Global News is Selected By Default


Verify that clicking on View All in Community Highlights should redirect to Global Event by default
    [Tags]  TC018  Home  Gurutattva 
    Open Gurutattva App
    Swipe to Community Highlights Section
    Click on View ALL Button From Community Highlights Section
    Verify Global Event is Selected By Default


Verify that user is able to see list of Ashram Insights in Ashram Insights section
    [Tags]  TC019  Home  Gurutattva
    Open Gurutattva App
    Swipe to Ashram Insights Section
    Verify the First Available Card in Ashram Insights Section  


Verify that user is able to see list of Community Highlights in Community Highlights section
    [Tags]  TC020  Home  Gurutattva
    Open Gurutattva App
    Swipe to Community Highlights Section
    Verify the First Available Card in Community Highlights Section


Verify that the user is able to redirect to Home screen from Dhyansthali screen using back button
    [Tags]  TC050  Home  Gurutattva
    Open Gurutattva App
    Click on the Dhyansthali Tab
    Click on the Back Button
    Verify Home Screen is displayed

Verify that the user is able to redirect to Home screen from Notifications screen using back button
    [Tags]  TC092  Home  Gurutattva
    Open Gurutattva App
    Click on the Notifications Tab
    Verify Notification Screen is displayed
    Click on the Back Button
    Verify Home Screen is displayed

Verify Ashram Insights card opens the Global News Detail screen with correct details.
    [Tags]  TC103  Home  Gurutattva
    Open Gurutattva App
    Swipe to Community Highlights Section
    Click on the Ashram Insights Card
    Handle the detail screen for new screen

Verify user is able to bookmark Global News via Ashram Insights card.
    [Tags]  TC104  Home  Gurutattva
    Open Gurutattva App
    Swipe to Community Highlights Section
    Click on the Ashram Insights Card
    Bookmark Global News via Ashram Insights card
    Verify Validation Message
    Remove Bookmark Global News via Ashram Insights card

Verify user is able to remove bookmarked Global News via Ashram Insights card.
    [Tags]  TC105  Home  Gurutattva
    Open Gurutattva App
    Swipe to Community Highlights Section
    Click on the Ashram Insights Card
    Bookmark Global News via Ashram Insights card
    Remove Bookmark Global News via Ashram Insights card
    Verify Validation Message for Remove Bookmark 

Verify that clicking on View All in Audio of the Day should redirect to Music by default
    [Tags]  TC123  Home  Gurutattva
    Open Gurutattva App
    Click on View ALL Button From Audio of the Day Section
    Verify Music is Selected By Default

Verify Audio of the Day card opens the Music with correct details.
    [Tags]  TC124  Home  Gurutattva
    Open Gurutattva App
    Swipe to Audio of the Day Section 
    click on Audio of the Day Card 
    verify Play Music and Music Information
    Close Music Player

Verify user is able to close music from home screen
    [Tags]  TC125  Home  Gurutattva
    Open Gurutattva App
    Swipe to Audio of the Day Section
    click on Audio of the Day Card 
    verify Play Music and Music Information
    Close Music Player 
    Close Gurutattva App 

Verify that user is able to pause music from home screen
    [Tags]  TC126  Home  Gurutattva
    Open Gurutattva App
    Swipe to Audio of the Day Section
    click on Audio of the Day Card 
    verify Play Music and Music Information
    Pause Music Player 
    Close Music Player
    Close Gurutattva App

Verify that clicking on View All in Recommended for you should redirect to Music by default
    [Tags]  TC130  Home  Gurutattva
    Open Gurutattva App
    Swipe to Recommended for you Section
    Click on View ALL Button From Recommended for you Section
    Verify Music is Selected By Default

Verify that clicking "Cancel" on the 'Become a Member' popup from Events keeps the user on the Home screen.
    [Tags]  TC177  Home  Gurutattva
    Open Gurutattva App
    Login As Non Community Member
    Click on the Events Tab
    Click on the Cancel Button from Become a Member Popup
    Verify Home Screen is displayed

Verify the user is able to navigate to Community Member screen via 'Become a Member' popup from Events and back to Home Screen
    [Tags]  TC178  Home  Gurutattva
    Open Gurutattva App
    Click on the Events Tab
    Click on the Become a Member Button
    Verify Community Member Content is Displayed
    Click on the Back Button
    Verify Home Screen is displayed

Verify that user is able to see list of Recommended for you in Recommended for you section
    [Tags]  TC179  Home  Gurutattva
    Open Gurutattva App
    Swipe to Recommended for you Section
    Verify Recommended for you Cards are Displayed

Verify Recommended for you card opens the Gurukarya screen with correct details.    
    [Tags]  TC180  Home  Gurutattva
    Open Gurutattva App
    Click on Recommended for you Second Card
    Verify Gurukarya Screen is Displayed
    Close Gurutattva App 

Verify that the user is able to redirect to Home screen from Gurukarya screen using back button
    [Tags]  TC181  Home  Gurutattva   
    Open Gurutattva App
    Click on Recommended for you Second Card
    Click on the Back Button from Gurukarya Screen
    Verify Recommended for you Title is Displayed in Home Screen
    Close Gurutattva App 

Verify that user is able to select an option from dropdown on Gurukarya screen and ensure details for selected option are displayed correctly via Recommended for you.
    [Tags]  TC182  Home  Gurutattva
    Open Gurutattva App
    Click on Recommended for you Second Card
    Click on the Dropdown Button
    Click on the Option from Dropdown
    Verify Gurukarya Screen is Displayed
    Close Gurutattva App 

Verify Community Highlights card opens the Global Events Detail screen with correct details.
    [Tags]  TC127  Home  Gurutattva  
    Open Gurutattva App
    Swipe to Recommended for you Section
    Click on the Community Highlights Card
    verify Detail screen Information

Verify user is able to bookmark Global Event viaCommunity Highlights card.
    [Tags]  TC128  Home  Gurutattva
    Open Gurutattva App
    Swipe to Recommended for you Section
    Click on the Community Highlights Card
    Bookmark Global Event via Community Highlights card
    Verify Validation Message
    Remove Bookmark Global Event via Community Highlights card

Verify user is able to remove bookmark Global Events via Community Highlights card.
    [Tags]  TC129  Home  Gurutattva
    Open Gurutattva App
    Swipe to Recommended for you Section
    Click on the Community Highlights Card
    Bookmark Global Event via Community Highlights card
    Remove Bookmark Global Event via Community Highlights card
    Verify Validation Message for Remove Bookmark