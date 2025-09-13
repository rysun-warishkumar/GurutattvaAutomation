*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../pages/loginPage.robot
Resource    ../pages/namkaranPage.robot
Resource    ../pages/PrayerPage.robot
Resource    ../pages/DhyanasthaliPage.robot

Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***
Verify that the Prayer successfully by entering all mandatory fields for self
     [Tags]  TC083  Prayer  Gurutattva
     Navigate to Prayer Screen
     Clear Name and Email Field
     Enter Name for Prayer       
     Enter Place/Area for Prayer   
     Enter Email for Prayer       
     Select Prayer Category        
     Enter Second Name for Prayer    
     Enter Second Place/Area for Prayer    
     Enter Address for Prayer         
     Select DOB for Prayer
     Enter Description for Prayer     
     Click on Submit Prayer Button
     Verify Prayer Submission Success
     Close the success message
     Verify Prayer add screen
     Close Gurutattva App


Verify that when clicking on tooltip it shows information on the Prayer screen
     [Tags]  TC086   Prayer  Gurutattva
     Navigate to Prayer Screen
     Click on Prayer Tooltip
     Verify Prayer Tooltip Information is Displayed
     Close Gurutattva App

Verify user redirect on the Prayer screen when user closes the Prayer Submission message
     [Tags]  TC085  Prayer  Gurutattva
     User redirect on the Prayer screen
     Close Gurutattva App

Verify that Prayer content is displayed in Prayer screen
     [Tags]  TC084  Prayer  Gurutattva
     Navigate to Prayer Screen
     Close Gurutattva App

Verify that the Prayer successfully by entering all mandatory fields for other
     [Tags]  TC087  Prayer  Gurutattva
     Navigate to Prayer Screen
     Select Other for the Prayer
     Fill Mandatory Fields for Other Prayer
     Verify Prayer Submission Success
     Close the success message
     Verify Prayer add screen
     Close Gurutattva App   

Verify the validation message for an invalid email in Prayer form
     [Tags]  TC088  Prayer  Gurutattva
     Navigate to Prayer Screen
     Clear Name and Email Field
     Enter Name for Prayer       
     Enter Place/Area for Prayer   
     Enter InValidEmail for Prayer
     Click on Submit Prayer Button
     Verify validation message for invalid email in prayer form
     Close Gurutattva App


Verify the validate messages for missing mandatory fields in Prayer form
     [Tags]  TC089  Prayer  Gurutattva
     Navigate to Prayer Screen
     Clear Name and Email Field
     Click on Submit Prayer Button
     Verify validation message for name
     Enter Name for Prayer
     Click on Submit Prayer Button
     Verify validation message for Email
     Enter Email for Prayer
     Click on Submit Prayer Button
     Verify validation message for Place/Area
     Enter Place/Area for Prayer
     Click on Submit Prayer Button
     Verify validation message for Category
     Select Prayer Category
     Click on Submit Prayer Button
     Verify validation message for Second Name
     Enter Second Name for Prayer
     Click on Submit Prayer Button
     Verify validation message for Second Place/Area
     Enter Second Place/Area for Prayer
     Click on Submit Prayer Button
     Verify validation message for Address
     Enter Address for Prayer
     Click on Submit Prayer Button
     Verify validation message for DOB
     Select DOB for Prayer
     Click on Submit Prayer Button
     Verify validation message for Description
     Close Gurutattva App

Verify that the user is able to redirect to Explore screen from Prayer screen using back button
     [Tags]  TC090  Prayer  Gurutattva
     Open Gurutattva App
     Click on the Explore Tab
     Click on the Prayer Card
     Handle Prayer Add Screen
     Click on the Back Button from Prayer Screen or Prayer Form 
     Verify Explore Screen is displayed
     Close Gurutattva App

Verify that the user is able to redirect to Prayer screen from Prayer Form using back button
     [Tags]  TC091  Prayer  Gurutattva
     Navigate to Prayer Screen
     Click on the Back Button from Prayer Screen or Prayer Form
     Verify Prayer Header Content
     Close Gurutattva App