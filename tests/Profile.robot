*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../pages/loginPage.robot
Resource    ../pages/ProfilePage.robot
Resource    ../pages/registerPage.robot
Resource    ../pages/namkaranPage.robot
Resource    ../pages/HomePage.robot

Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***

Verify the Name, Email & Number on profile page
   [Tags]  TC074  Profile  Gurutattva
   Open Gurutattva App
  # Login As Existing Mobile User
   Click on the Profile Tab
   Verify User Details in Profile Card

Verify the user is logout successfully
   [Tags]  TC076  Profile  Gurutattva
   Open Gurutattva App
  # Login As Existing Mobile User
   Click on the Profile Tab
   Click on the Logout Tab
   Click on the Yes Button from Logout Alert
   Verify Login Screen Is Displayed

Verify when user Update the Profile Name and address from Edit Profile page
   [Tags]  TC075  Profile  Gurutattva
   Open Gurutattva App
  #Login As Existing Mobile User
   Click on the Profile Tab
   Click on the Edit Profile Tab
#    Clear first name
   Clear All Name Fields
   Enter First Name     FN    
   Enter Middle Name    MN
   Enter Last Name      LN
#    Select District
#    Select Talka/City
#    Select Area/Village    
   Click on the Save Button
#    Click on the Back Tab
#    Click on the Profile Tab
   Verify Updated User Details in Profile Card
   Click on the Edit Profile Tab
   Verify Updated User info in Profile Screen
 
Verify all the mandatory fields of Profile page
   [Tags]  TC077  Profile  Gurutattva
   Open Gurutattva App
  #Login As Existing Mobile User
   Click on the Profile Tab
   Click on the Edit Profile Tab
   Clear All Name Fields
   Click on the Save Button
   Verify Validation For First Name
   Enter First Name     FN
   Click on the Save Button
   Verify Validation For Middle Name
   Enter Middle Name    MN
   Click on the Save Button
   Verify Validation For Last Name
   Enter Last Name      LN
   Click on the Save Button
   Verify Validation For State
   Select Country From Dropdown
   Click on the Save Button
   Verify Validation For District
   Select State From Dropdown
   Select District From Dropdown
   Click on the Save Button
   Verify Validation For Taluka/City
   Select Taluka/City From Dropdown
   Click on the Save Button
   Verify Validation For Area/Village

Verify that clicking the add icon on a FAQ displays its correct details.
   [Tags]  TC093  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the FAQ Tab
   Click on the Add Icon from FAQs 
   Verify First Available FAQs

Verify user is able to disable notifications from the Profile screen.
   [Tags]  TC094  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the toggle button to disable notifications

Verify validation when enabling notifications from the Profile screen.
   [Tags]  TC095  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the toggle button to disable notifications
   Click on the toggle button to enable notifications
   Verify Notification Alert

Verify user is able to select Hindi language from the Profile screen.
   [Tags]  TC096  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the Language Tab
   Select Hindi from the Language Selection
   Click on the Save Button from Language Selection
   Click on the Hindi Language Tab
   Select English from the Language Selection
   Click on the Save Button from Hindi Language Selection

Verify Profile screen displays in hindi correctly after saving hindi language selection.
   [Tags]  TC097  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the Language Tab
   Select Hindi from the Language Selection
   Click on the Save Button from Language Selection
   Verify Profile Screen in Hindi Language
   Click on the Hindi Language Tab
   Select English from the Language Selection
   Click on the Save Button from Hindi Language Selection

Verify user remains on the Profile screen after clicking "No" from logout.
   [Tags]  TC099  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the Logout Tab
   Click on the No Button from Logout Alert
   Verify Profile Screen is Displayed
   Close Gurutattva App   

Verify user remains on the Profile screen after clicking "Cancel" from delete account.
   [Tags]  TC100  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the Delete Account Tab
   Click on the Cancel Button from Delete Account Alert
   Verify Profile Screen is Displayed
   Close Gurutattva App

Verify user is able to successfully delete their account from the Profile screen.
   [Tags]  TC098  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the Delete Account Tab
   Click on the Delete Button from Delete Account Alert
   Verify Login Screen Is Displayed
   Close Gurutattva App

Verify that the user is able to redirect to Profile screen from edit profile screen using back button
   [Tags]  TC101  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the Edit Profile Tab
   Click on the Back Button from Edit Profile Screen
   Verify Profile Screen is Displayed
   Close Gurutattva App

Verify that the user is able to redirect to Home screen from Profile screen using back button
   [Tags]  TC102  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the Back Button from Profile Screen
   Verify Home Screen is Displayed
   Close Gurutattva App

Verify that the user is able to redirect to Profile screen from FAQs screen using back button
   [Tags]  TC111  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the FAQ Tab
   Verify First Available FAQs 
   Click on the Common Back Button
   Verify Profile Screen is Displayed
   Close Gurutattva App
   
Verify user is able to select English language from the Profile screen.
   [Tags]  TC112  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the Language Tab
   Select Hindi from the Language Selection
   Click on the Save Button from Language Selection
   Click on the Hindi Language Tab
   Select English from the Language Selection
   Click on the Save Button from Hindi Language Selection

Verify Profile screen displays in english correctly after saving english language selection.
   [Tags]  TC113  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the Language Tab
   Select Hindi from the Language Selection
   Click on the Save Button from Language Selection
   Click on the Hindi Language Tab
   Select English from the Language Selection
   Click on the Save Button from Hindi Language Selection
   Verify Profile Screen is Displayed

Verify that closing the language selection without saving retains the current language.
   [Tags]  TC114  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the Language Tab
   Select Hindi from the Language Selection
   Click on the Close Button from Language Selection
   Verify Profile Screen is Displayed 

Verify that correct Privacy Policy information is displayed on the Privacy Policy screen.
   [Tags]  TC115  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the Privacy Policy Tab
   Verify Privacy Policy Screen details is Displayed
   
Verify that the user is able to redirect to Profile screen from Privacy Policy screen using back button
   [Tags]  TC116  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the Privacy Policy Tab
   Verify Privacy Policy Screen details is Displayed
   Click on the Common Back Button
   Verify Profile Screen is Displayed 

Verify that correct T&C information is displayed on the T&C screen.
   [Tags]  TC117  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the T&C Tab
   Verify T&C Screen details is Displayed

Verify that the user is able to redirect to Profile screen from T&C screen using back button
   [Tags]  TC118  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the T&C Tab
   Verify T&C Screen details is Displayed
   Click on the Common Back Button
   Verify Profile Screen is Displayed
   Close Gurutattva App

Verify the user is able to navigate from Edit Profile to Community Member via "Register Now" and back to Edit Profile.
   [Tags]  TC176  Profile  Gurutattva
   Open Gurutattva App
   Click on the Profile Tab
   Click on the Edit Profile Tab
   Click on the Register Now Button from Edit Profile Screen
   Verify Community Member Content is Displayed
   Click on the Common Back Button
   Verify Edit Profile Screen is Displayed
   Close Gurutattva App
        