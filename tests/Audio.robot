*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../pages/AudioPage.robot
Resource    ../pages/HomePage.robot
Resource    ../pages/eventsPage.robot
Resource    ../pages/loginPage.robot

Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***
Verify that clicking the Radio button on the Audio screen redirects to the Radio screen
    [Tags]  TC135  Audio  Gurutattva
    Open Gurutattva App
    Login As Community Member
    Click on the Audio Tab
    Click on the Radio Button
    Verify Radio Screen is displayed
    Click on the Back Button
    Verify Audio Screen is displayed
    Click on the Close Button from Audio Screen

Verify that User is able to Pause Radio from Radio screen
    [Tags]  TC136  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the Radio Button
    Verify Radio Screen is displayed
    Click on the Pause Button from Radio Screen
    Click on the Back Button
    Verify Audio Screen is displayed
    Click on the Close Button from Audio Screen

Verify that the User is able to Redirect to Audio screen from Radio screen using Back Button
    [Tags]  TC137  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the Radio Button
    Verify Radio Screen is displayed
    Click on the Back Button
    Verify Audio Screen is displayed
    Click on the Close Button from Audio Screen
  
Verify user is able to close Radio from Audio screen
    [Tags]  TC140  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the Radio Button
    Verify Radio Screen is displayed
    Click on the Pause Button from Radio Screen 
    Click on the Back Button
    Verify Audio Screen is displayed
    Click on the Close Button from Audio Screen

Verify that user is able to play music from recently added with correct details on the audio screen
    [Tags]  TC141  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the Recently Added Card
    Verify Music Information
    Click on the Close Button from Audio Screen

Verify user is able to close music from audio screen
    [Tags]  TC142  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the Recently Added Card
    Verify Music Information
    Click on the Close Button using music track 
    

Verify that clicking on music track from audio screen should redirect to music screen    
    [Tags]  TC144  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the Recently Added Card
    Click on the music track
    Verify Music screen and track is displayed

Verify that user is able to pause music from Music screen
    [Tags]  TC146  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the Recently Added Card
    Click on the music track
    Verify Music screen and track is displayed
    Click on the Music Pause Button


Verify that the user is able to enable hindi language on the music screen
    [Tags]  TC147  Audio  Gurutattva
    Open Gurutattva App  
    Click on the Audio Tab
    Click on the Recently Added Card
    Click on the music track
    Enable Hindi Language
    Verify Hindi Track is displayed 

Verify that the user is able to enable English language on the music screen
    [Tags]  TC148  Audio  Gurutattva
    Open Gurutattva App  
    Click on the Audio Tab
    Click on the Recently Added Card
    Click on the music track
    Enable Hindi Language
    Enable Again English Language
    Verify English track is displayed

Verify that clicking the Next button on the Music screen plays the next track.
    [Tags]  TC149  Audio  Gurutattva
    Open Gurutattva App  
    Click on the Audio Tab
    Click on the Recently Added Card
    Click on the music track
    Click on the Next Track Button
    Verify Next Track is played

Verify that clicking the Previous button on the Music screen plays the Previous track.
    [Tags]  TC150  Audio  Gurutattva
    Open Gurutattva App  
    Click on the Audio Tab
    Click on the Recently Added Card
    Click on the music track
    Click on the Next Track Button
    Click on the Previous Track Button
    Verify Previous Track is played

Verify that the user is able to redirect to Audio screen from Music screen using back button
    [Tags]  TC145  Audio  Gurutattva
    Open Gurutattva App  
    Click on the Audio Tab
    Click on the Recently Added Card
    Click on the music track
    Click on the Back Button from Music Screen
    Verify Audio Screen is displayed    

Verify Authors Card is displayed on the Author screen with correct details
    [Tags]  TC151  Audio  Gurutattva
    Open Gurutattva App  
    Click on the Audio Tab
    Verify the first available Author Card is displayed

Verify Authors screen with correct details
    [Tags]  TC152  Audio  Gurutattva
    Open Gurutattva App  
    Click on the Audio Tab
    Verify the first available Author Card is displayed
    Click on the Author Card
    Verify Author Detail screen is displayed

Verify that user is able to play music from the Authors screen using the author's tracks and the first available track.
    [Tags]  TC153  Audio  Gurutattva
    Open Gurutattva App  
    Click on the Audio Tab
    Verify the first available Author Card is displayed
    Click on the Author Card
    Click on the play button using author's track
    Click on the available track

Verify user is able to close music from Authors screen
    [Tags]  TC154  Audio  Gurutattva
    Open Gurutattva App  
    Click on the Audio Tab
    Verify the first available Author Card is displayed
    Click on the Author Card
    Click on the play button using author's track
    Click on the available track
    Click on the Close Button using music track
    Close Gurutattva App

Verify that clicking on music track from Authors screen should redirect to music screen
    [Tags]  TC155  Audio  Gurutattva
    Open Gurutattva App  
    Click on the Audio Tab
    Verify the first available Author Card is displayed
    Click on the Author Card
    Click on the First Available Track
    Verify Music Information
    Click on the music track
    Verify Music screen and track is displayed

Verify that the user is able to redirect to Author screen from Music screen using back button
    [Tags]  TC156  Audio  Gurutattva
    Open Gurutattva App  
    Click on the Audio Tab
    Verify the first available Author Card is displayed
    Click on the Author Card
    Click on the First Available Track
    Verify Music Information
    Click on the music track
    Click on the Back Button from Music Screen
    Verify Author Screen is displayed

Verify that the user is able to redirect to Audio screen from Author screen using back button
    [Tags]  TC157  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Verify the first available Author Card is displayed
    Click on the Author Card
    Click on the back Button from Author Screen
    Verify Audio Screen is displayed

Verify that user is able to pause music from audio screen
    [Tags]  TC143  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the Recently Added Card
    Verify Music Information
    Click on the Pause Button from Audio Screen
    Close Gurutattva App

Verify that user is able to pause radio from Audio screen
    [Tags]  TC139  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the Radio Button
    Verify Radio Screen is displayed 
    Click on the Back Button
    Verify Audio Screen is displayed
    Click on the Pause Button from Audio Screen
    Close Gurutattva App

Verify Radio playing opens the Radio with correct details.
    [Tags]  TC138  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the Radio Button
    Click on the Back Button
    Verify Radio Track is playing
    Click on the Radio Track
    Verify Radio Screen is displayed
    Close Gurutattva App
    
Verify that clicking on View All in Pravachan should redirect to Makar Sankranti by default
    [Tags]  TC158  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on View All of Pravachan
    Verify Makar Sankranti is Selected By Default

Verify that the user is able to redirect to Audio screen from Pravachan screen using back button
    [Tags]  TC159  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the First available Pravachan Card
    Click on the Back Button
    Verify Audio Screen is displayed

Verify user is able to redirect to Makar Sankranti from Maha Shivratri
    [Tags]  TC160  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the First available Pravachan Card
    Click on the Maha Shivratri Tab
    Click on the Makar Sankranti Tab
    Verify Makar Sankranti is Selected By Default

Verify that Pravachan details are displayed correctly on the Pravachan screen
    [Tags]  TC161  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the First available Pravachan Card
    Click on the Makar Sankranti Tab
    Verify First Available card of Makar Sankranti is displayed
    Click on the Maha Shivratri Tab
    Verify First Available card of Maha Shivratri is displayed

Verify that User is able to play music using Pravachan details on the Pravachan Screen
    [Tags]  TC162  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the First available Pravachan Card
    Click on the Makar Sankranti Tab
    Click on the Play button using Pravachan details
    Verify Music Information
    Click on the Maha Shivratri Tab
    Click on the Play button using Pravachan details
    Verify Music Information

 Verify that User is able to pause music using Pravachan details on the Pravachan screen.
    [Tags]  TC163  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the First available Pravachan Card
    Click on the Makar Sankranti Tab
    Click on the Play button using Pravachan details
    Verify Music Information
    Click on the Pause Button using Pravachan details
    Click on the Maha Shivratri Tab
    Click on the Play button using Pravachan details
    Verify Music Information
    Click on the Pause Button using Pravachan details

Verify that user is able to close music from Pravachan detail track on the Pravachan screen
    [Tags]  TC164  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the First available Pravachan Card
    Click on the Makar Sankranti Tab
    Click on the Play button using Pravachan details
    Verify Music Information
    Click on the Close Button using music track
    Click on the Maha Shivratri Tab
    Click on the Play button using Pravachan details
    Verify Music Information
    Click on the Close Button using music track

Verify that User is able to navigate from Pravachan track to Music screen and back to Pravachan screen
    [Tags]  TC165  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the First available Pravachan Card
    Click on the Makar Sankranti Tab
    Click on the Play button using Pravachan details
    Verify Music Information
    Click on the music track
    Verify Music screen and track is displayed
    Click on the Back Button from Music Screen
    Verify First Available card of Makar Sankranti is displayed
    Click on the Maha Shivratri Tab
    Click on the Play button using Pravachan details
    Verify Music Information
    Click on the music track
    Verify Music screen and track is displayed
    Click on the Back Button from Music Screen
    Verify First Available card of Maha Shivratri is displayed

Verify that clicking on View All in Bhajan should redirect to bhav arpan by default
    [Tags]  TC166  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on View All of Bhajan
    Verify Bhav Arpan is Selected By Default

Verify that the user is able to redirect to Audio screen from Bhajan screen using back button
    [Tags]  TC167  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the First available Bhajan Card
    Click on the Back Button
    Verify Audio Screen is displayed

Verify user is able to redirect to Bhav Arpan from Guru Ki Rah
    [Tags]  TC168  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the First available Bhajan Card
    Click on the Guru Ki Rah Tab
    Click on the Bhav Arpan Tab
    Verify Bhav Arpan is Selected By Default

Verify that Bhajan details are displayed correctly on the Bhajan screen
    [Tags]  TC169  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the First available Bhajan Card
    Click on the Bhav Arpan Tab
    Verify Second Available card of Bhav Arpan is displayed
    Click on the Guru Ki Rah Tab
    Verify Second Available card of Guru Ki Rah is displayed

Verify that User is able to play music from Bhajan details on the Bhajan screen
    [Tags]  TC170  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the First available Bhajan Card
    Click on the Bhav Arpan Tab
    Click on the Play button using Bhajan details
    Verify Music Information
    Click on the Guru Ki Rah Tab
    Click on the Play button using Bhajan details
    Verify Music Information

Verify that User is able to pause music from Bhajan details on the Bhajan screen
    [Tags]  TC171  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the First available Bhajan Card
    Click on the Bhav Arpan Tab
    Click on the Play button using Bhajan details
    Verify Music Information
    Click on the Pause Button using Bhajan details
    Click on the Guru Ki Rah Tab
    Click on the Play button using Bhajan details
    Verify Music Information
    Click on the Pause Button using Bhajan details

Verify that User is able to close music from Bhajan details on the Bhajan screen
    [Tags]  TC172  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the First available Bhajan Card
    Click on the Bhav Arpan Tab
    Click on the Play button using Bhajan details
    Verify Music Information
    Click on the Close Button using music track
    Click on the Guru Ki Rah Tab
    Click on the Play button using Bhajan details
    Verify Music Information
    Click on the Close Button using music track

Verify that User is able to navigate from Bhajan track to Music screen and back to Bhajan screen
    [Tags]  TC173  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the First available Bhajan Card
    Click on the Bhav Arpan Tab
    Click on the Play button using Bhajan details
    Verify Music Information
    Click on the music track
    Verify Music screen and track is displayed
    Click on the Back Button from Music Screen
    Verify Second Available card of Bhav Arpan is displayed
    Click on the Guru Ki Rah Tab
    Click on the Play button using Bhajan details
    Verify Music Information
    Click on the music track
    Verify Music screen and track is displayed
    Click on the Back Button from Music Screen
    Verify Second Available card of Guru Ki Rah is displayed

Verify that user is able to search a track using search bar on the Audio screen and navigate back to the Audio screen.
    [Tags]  TC174  Audio  Gurutattva
    Open Gurutattva App
    Click on the Audio Tab
    Click on the Search Icon
    Click on the search bar and enter a track name.
    Verify Track details are displayed
    Click on the Back Button from Search Track
    Verify Audio Screen is displayed

*** Keywords ***
Wait For Data Sync
    [Documentation]    Waits for data to sync between web and mobile
    [Arguments]    ${timeout}=30s
    Sleep    5s
    Log To Console    Waiting for data sync (${timeout})...
    Sleep    ${timeout}

Login To Mobile App
    [Documentation]    Logs in to mobile app if required
    Click on the input field
    Enter the validate and exist email address
    Click on the Login Button
    Enter Email OTP Manually
    Click on the Verify Button
    Verify Home Screen is Displayed with correct details

Verify Music Appears On Mobile
    [Documentation]    Verifies that music created via web appears on mobile
    [Arguments]    ${music_title}
    Mobile Wait Until Element Is Visible    xpath=//android.view.View[contains(@content-desc,'${music_title}')]    15s
    Mobile Page Should Contain Element    xpath=//android.view.View[contains(@content-desc,'${music_title}')]
    Log To Console    Music "${music_title}" found on mobile app