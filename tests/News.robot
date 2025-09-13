*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../pages/NewsPage.robot
Resource    ../pages/HomePage.robot

Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***

Verify Global News Card is displayed on the News screen with correct details
    [Tags]  TC023  News  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the News Tab
    Global News card is displayed with correct details
    Close Gurutattva App   


Verify Local News Card is displayed on the News screen with correct details
    [Tags]  TC024  News  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the News Tab
    Click on the Local News Tab
    Local News card is displayed with correct details
    Close Gurutattva App


Verify user is able to bookmark the Global News on the News Screen
    [Tags]  TC031  News  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the News Tab
    Click on the Global News Card
    Click on bookmark icon for global news
    Verify Validation Message
    Remove Bookmark icon from global news    


Verify user is able to bookmark the Local News on the News Screen
    [Tags]  TC032  News  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the News Tab
    Click on the Local News Tab
    Click on the Local News Card
    Click on bookmark icon for local news
    Verify Validation Message


Verify user is able to redirect to Global News from Local News
    [Tags]  TC035  News  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the News Tab
    Click on the Local News Tab
    Click on the Global News Tab     
    Redirect to Global News from Local News


Verify Global News Detail screen on the News screen with correct details
    [Tags]  TC027  News  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the News Tab
    Click on the Global News Card
    verify Global News Detail screen Information
    Close Gurutattva App


Verify Local News Detail screen on the News screen with correct details
    [Tags]  TC028  News  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the News Tab
    Click on the Local News Tab
    Click on the Local News Card
    Verify Local News Detail screen Information
    Close Gurutattva App
    

Verify user is able to remove bookmark the Global News on the News Screen
    [Tags]  TC037  News  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the News Tab 
    Click on the Global News Card
    Click on bookmark icon for global news
    Remove Bookmark icon from global news
    Verify Validation Message for Remove Bookmark  

Verify user is able to remove bookmark the Local News on the News Screen
    [Tags]  TC038  News  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the News Tab
    Click on the Local News Tab
    Click on the Local News Card
    Click on bookmark icon for local news
    Remove Bookmark icon from local news
    Verify Validation Message for Remove Bookmark      

Verify that the user is able to redirect to News screen from Global News Detail screen using back button
    [Tags]  TC039  News  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the News Tab
    Click on the Global News Card
    Click on Back Button
    Verify Global News Detail screen is closed


Verify that the user is able to redirect to News screen from Local News Detail screen using back button
    [Tags]  TC040  News  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the News Tab
    Click on the Local News Tab
    Click on the Local News Card
    Click on Back Button
    Verify Local News Detail screen is closed  

Verify that the user is able to redirect to Home screen from News screen using back button
    [Tags]  TC021  News  Gurutattva
    Open Gurutattva App
    Click on the News Tab
    Click on the Back Button from News and Events Screen
    Verify Home Screen is displayed with correct details
    
                     

Verify user is able to bookmark the Global News on the New's list Screen
    [Tags]  TC079  News  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the News Tab
    Click on bookmark icon for news list screen 
    Verify Validation Message
    Close Gurutattva App 

Verify user is able to bookmark the Local News on the New's list Screen
    [Tags]  TC080  News  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the News Tab
    Click on the Local News Tab
    Click on bookmark icon for news list screen 
    Verify Validation Message
    Close Gurutattva App 

Verify user is able to remove bookmark the Global News on the New's list Screen
    [Tags]  TC081  News  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the News Tab 
    Click on bookmark icon for news list screen
    Remove Bookmark icon from news list screen
    Verify Validation Message for Remove Bookmark
    Close Gurutattva App       

Verify user is able to remove bookmark the Local News on the New's list Screen    
    [Tags]  TC082  News  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the News Tab 
    Click on the Local News Tab
    Click on bookmark icon for news list screen
    Remove Bookmark icon from news list screen
    Verify Validation Message for Remove Bookmark
    Close Gurutattva App