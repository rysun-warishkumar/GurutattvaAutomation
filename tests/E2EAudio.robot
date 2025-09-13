*** Settings ***
Resource    ../resources/libraries.robot
Resource    ../resources/keywords.robot
Resource    ../resources/web_keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../pages/E2EAudioPage.robot
Resource    ../pages/CRM_AudioPage.robot

Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***
Validate creation and publishing of a music track in the Web CSM, and verify it in the mobile app
    [Documentation]    End-to-end test: Create a music track in Web CRM, publish it, and verify playback in the mobile app.
    [Tags]    E2E    Integration    Audio
    
    # --- Generate Unique Test Data ---
    Generate E2E Test Data
    
    # --- Web CRM: Create and Publish Music Track ---
    Open Web Browser
    Login in with valid credentials
    Click on the Master Management Menu
    Click on the Manage Audio Categories Submenu
    Create New Music Category
    Create New Music SubCategory
    Add a new Author for Music
    Create New Audio Track
    Publish Music Track
    # Verify Music Track Created And Published
    Close Web Browser
    
    # --- Mobile App: Verify Track Playback ---
    Open Gurutattva App
    Handle First Time Setup
    Cancel the Update Popup
    Launch Mobile App And Login
    Verify Track & Category On Home Page In Audio Of The Day Section
    # Navigate To Audio Section In Mobile
    Verify Track On Audio Page In Recently Added Section
    Verify Track within the newly created category and subcategory
    Search And Select Newly Created Track
    Close Gurutattva App
    
Unpublish Music Track And Validate In Mobile App
    [Documentation]    Unpublish the created music track from CRM using the toggle button and validate that it is not visible in the mobile app.
    [Tags]    E2E    Integration    Audio    Unpublish

    # --- Web CRM: Unpublish Music Track ---
    Open Web Browser
    Login in with valid credentials
    Click on the Audio Menu
    Click on the Music Submenu
    # Locate the created track in the list and toggle to unpublish
    Unpublish Music Track From Edit Page And Validate In Mobile App

Validate that the mobile app does not display unpublished music tracks
    [Documentation]    Validates that the mobile app does not display unpublished music tracks.
    [Tags]    E2E    Integration    Audio   Unpublish

    # --- Web CRM: Unpublish Music Track ---
    Open Web Browser
    Login in with valid credentials
    Click on the Audio Menu
    Click on the Music Submenu
    # Locate the created track in the list and toggle to unpublish
    Unpublish Music Track From Edit Page And Validate In Mobile App

Validate creation and publishing of a podcast track in the Web CSM, and verify it in the mobile app
    [Documentation]    End-to-end test: Create a podcast in Web CRM, publish it, and verify playback in the mobile app.
    [Tags]    E2E    Integration    Podcast    
    
    # --- Generate Unique Test Data ---
    Generate E2E Test Data for Podcast
    
    # --- Web CRM: Create and Publish Podcast ---
    Open Web Browser
    Login in with valid credentials
    Click on the Master Management Menu
    Click on the Manage Audio Categories Submenu
    Create New Podcast Category
    Create New Podcast SubCategory
    Add a new Speaker for Podcast
    Create New Podcast Track
    Publish Podcast Track
    Close Web Browser
    
    # --- Mobile App: Verify Podcast Playback ---
    Open Gurutattva App
    Handle First Time Setup
    Launch Mobile App And Login as Community User
    Verify Podcast track is displayed on audio of the day section
    Verify Podcast Track is displayed on Home Screen
    Navigate To Podcast Section In Mobile
    Verify Podcast displayed in Recently Added section.
    Search And Select Newly Created Podcast Track
    Verify Podcast Track Appears In Mobile Search Results
    Play The Podcast Track
    Verify Podcast Track Playback In Mobile
    Close Podcast
    Click on the Back Button from Search Track

    # Verify Podcast Subcategory
    Click on the Podcast Tab
    Verify Podcast Subcategory is displayed in the list
    Verify Podcast Details
    Click on the back button from Podcast Details
    Close Gurutattva App

Validate that the mobile app does not display unpublished podcast track
    [Documentation]    Validates that the mobile app does not display unpublished podcast tracks.
    [Tags]    E2E    Integration    Podcast   Unpublish

    # --- Web CRM: Unpublish Podcast ---
    Open Web Browser
    Login in with valid credentials
    Click on the Audio Menu
    Click on the Podcast Submenu
    # Locate the created track in the list and toggle to unpublish
    Unpublish Podcast Track From Edit Page And Validate In Mobile App  

Validate that the mobile app does not display deleted music tracks
    [Documentation]    Validates that the mobile app does not display deleted music tracks.
    [Tags]    E2E    Integration    Audio   DeleteMusic

    # --- Generate Unique Test Data ---
    Generate E2E Test Data
    
    # --- Web CRM: Create and Publish Music Track ---
    Open Web Browser
    Login in with valid credentials
    Click on the Master Management Menu
    Click on the Manage Audio Categories Submenu
    Create New Music Category
    Create New Music SubCategory
    Add a new Author for Music
    Create New Audio Track
    Publish Music Track
    # --- Web CRM: Delete Music ---
    Delete Music Track
    Close Web Browser

    # --- Mobile App: Verify Track Playback ---
    Open Gurutattva App
    Handle First Time Setup
    Launch Mobile App And Login
    Verify Track & Category On Home Page In Audio Of The Day Section is not visible
    Verify Track On Audio Page In Recently Added Section is not visible
    Verify Track within the newly created category and subcategory is not visible
    Search And Select Newly Created Track
    Verify Music Track is not Appears In Mobile Search Results     

Validate that the mobile app does not display deleted podcast tracks
    [Documentation]    Validates that the mobile app does not display deleted podcast tracks.
    [Tags]    E2E    Integration    Audio   Podcast   DeletePodcast  

    # --- Generate Unique Test Data ---
    Generate E2E Test Data for Podcast
    
    # --- Web CRM: Create and Publish Podcast ---
    Open Web Browser
    Login in with valid credentials
    Click on the Master Management Menu
    Click on the Manage Audio Categories Submenu
    Create New Podcast Category
    Create New Podcast SubCategory
    Add a new Speaker for Podcast
    Create New Podcast Track
    Publish Podcast Track

    # --- Web CRM: Delete Podcast ---
    Delete Podcast Track
    Close Web Browser

    # --- Mobile App: Verify Podcast is Deleted ---
    Open Gurutattva App
    Handle First Time Setup
    Launch Mobile App And Login as Community User
    Verify Podcast track is displayed on audio of the day section
    Verify Podcast Track is displayed on Home Screen
    Navigate To Podcast Section In Mobile
    Verify Podcast displayed in Recently Added section.
    Search the Deleted Podcast Track   
    Verify Podcast Track is not Appears In Mobile Search Results 