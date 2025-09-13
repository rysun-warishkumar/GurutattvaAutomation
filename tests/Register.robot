*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../pages/registerPage.robot
Resource    ../pages/loginPage.robot
Resource    ../pages/NewsPage.robot
Resource    ../pages/profilePage.robot


Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***
Verify that the user is able to register successfully by entering all mandatory fields
    [Tags]  TC008  Register  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    Click on the Register Link
    Click on the Quick Registration Tab
    Enter First Name for Register Screen       FN
    Enter Last Name for Register Screen        LN
    Enter Email for Register Screen            refax36646@dekpal.com
    Enter Mobile Number for Register Screen    9956978454
    Select Gender for register screen
    Select DOB for Register Screen
    Select Country for Register Screen
    Select State for Register Screen
    Select District for Register Screen
    Select Taluka/City for Register Screen
    Select Area/Village for Register Screen
    Click on the Quick Registration Button
    Verify OTP Screen is Displayed
    Enter Email OTP Manually
    Click on the Verify Button
    Click on the skip button
    Verify Home Screen is Displayed
    Click on the Profile Tab
    Click on the Logout Tab
    Click on the Yes Button from Logout Alert
    Verify Login Screen Is Displayed
    Close Gurutattva App

Verify that a validation message is displayed when entering an invalid email address
    [Tags]  TC010  Register  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    # Click on the Register Button
    Click on the Quick Registration Tab
    Enter First Name for Register Screen       FN
    Enter Last Name for Register Screen        LN
    Enter Email for Register Screen            refax3
    Click on the Quick Registration Button
    Verify Validation Message for Invalid Email   
    Close Gurutattva App

Verify that a validation message is displayed when entering an invalid phone number
    [Tags]  TC011  Register  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    Click on the Register Link
    Click on the Quick Registration Tab
    Enter First Name for Register Screen       FN
    Enter Last Name for Register Screen        LN
    Enter Email for Register Screen            refax357466@dekpal.com
    Enter Mobile Number for Register Screen    995
    Click on the Quick Registration Button  
    Verify Validation Message for Invalid Mobile Number
    
Verify that a validation message is displayed when mandatory fields are not entered
    [Tags]  TC009  Register  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    Click on the Register Link
    Click on the Quick Registration Tab
    Click on the Quick Registration Button
    Verify Validation Message for FN
    Enter Mandatory FN for Register Screen          FN
    Click on the Quick Registration Button
    Verify Validation Message for LN
    Enter Mandatory LN for Register Screen          LN
    Click on the Quick Registration Button
    Verify Validation Message for Email
    Enter Mandatory Email for Register Screen       refax357466@dekpal.com
    Click on the Quick Registration Button
    Verify Validation Message for Mobile Number
    Enter Mandatory Number for Register Screen      9363527727
    Click on the Quick Registration Button
    Verify Validation Message for Gender
    Select Mandatory Gender for register screen
    Click on the Quick Registration Button
    Verify Validation Message for DOB
    Select Mandatory DOB for Register Screen
    Click on the Quick Registration Button
    Verify Validation Message for Country
    Select Country for Register Screen
    Click on the Quick Registration Button
    Verify Validation Message for State
    Select State for Register Screen
    Click on the Quick Registration Button
    Verify Validation Message for District
    Select District for Register Screen
    Click on the Quick Registration Button
    Verify Validation Message for City
    Select Taluka/City for Register Screen
    Click on the Quick Registration Button
    Verify Validation Message for Village
    Close Gurutattva App

Verify that the user is able to navigate to the login screen from the registration screen
    [Tags]  TC013  Register  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    Click on the Register Link
    Click on the Quick Registration Tab
    Click on the Login Button from Register Page 
    Verify Login Screen Is Displayed    
    Close Gurutattva App

Verify that a validation message is displayed when entering an registered email address
    [Tags]  TC109  Register  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    Click on the Register Link
    Click on the Quick Registration Tab
    Enter First Name for Register Screen       FN
    Enter Last Name for Register Screen        LN
    Select Gender for register screen
    Select DOB for Register Screen
    Select Country for Register Screen
    Select State for Register Screen
    Select District for Register Screen
    Select Taluka/City for Register Screen
    Select Area/Village for Register Screen
    Enter Registered Email for Register Screen            yatish.devlekar@rysun.com
    Enter Valid Mobile Number                             6218673720
    Click on the Quick Registration Button
    Verify Validation Message for Registered Email Address and Mobile Number
    Close Gurutattva App

Verify that a validation message is displayed when entering an registered phone number
    [Tags]  TC110  Register  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    Click on the Register Link
    Click on the Quick Registration Tab
    Enter First Name for Register Screen       FN
    Enter Last Name for Register Screen        LN
    Select Gender for register screen
    Select DOB for Register Screen
    Select Country for Register Screen
    Select State for Register Screen
    Select District for Register Screen
    Select Taluka/City for Register Screen
    Select Area/Village for Register Screen
    Enter Valid Email                                       mobavoj748@aravites.com
    Enter Registered Mobile Number for Register Screen      9662595340
    Click on the Quick Registration Button
    Verify Validation Message for Registered Email Address and Mobile Number
    Close Gurutattva App   

Verify Community Member registration is successful with all mandatory fields when "No" is selected.
    [Tags]  TC131  Register  Gurutattva
    Open Gurutattva App
    Click on the Register Link
    Verify Community Registration is Selected by default
    Click on the NO Radio Button
    Click on the Next Button from Community Registration
    Handle Location Permission
    Select Dhyankendra and click on the Next Button
    Fill the Personal and Address Information
    Fill the Personal,Select Unmarried and Education Information
    Verify OTP Screen is Displayed
    Enter Email OTP Manually
    Click on the Verify Button
    Click on the skip button
    Verify Home Screen is Displayed
    Click on the Profile Tab
    Click on the Logout Tab
    Click on the Yes Button from Logout Alert
    Verify Login Screen Is Displayed
    Close Gurutattva App

Verify that a validation message is displayed on the Community Register screen when entering an invalid email address
    [Tags]  TC133  Register  Gurutattva
    Open Gurutattva App
    Click on the Register Link
    Verify Community Registration is Selected by default
    Click on the NO Radio Button
    Click on the Next Button from Community Registration
    Handle Location Permission
    Select Dhyankendra and click on the Next Button
    Enter Invalid Community Email
    Click on the Next Button from Community Registration
    Verify Validation Message for Invalid Community Email
        
Verify that a validation message is displayed on the Community Register screen when entering an invalid phone number
    [Tags]  TC134  Register  Gurutattva
    Open Gurutattva App
    Click on the Register Link
    Verify Community Registration is Selected by default
    Click on the NO Radio Button
    Click on the Next Button from Community Registration
    Handle Location Permission
    Select Dhyankendra and click on the Next Button
    Enter Community Email
    Click on the Community Mobile Field
    Enter Community Mobile By Keypad    0
    Click on the Next Button from Community Registration
    Verify Validation Message for Invalid Mobile Number

Verify that a validation message is displayed on the Community Register screen when entering an invalid pincode
    [Tags]  TC184  Register  Gurutattva
    Open Gurutattva App
    Click on the Register Link
    Verify Community Registration is Selected by default
    Click on the NO Radio Button
    Click on the Next Button from Community Registration
    Handle Location Permission
    Select Dhyankendra and click on the Next Button
    Enter Community Email
    Click on the Community Mobile Field
    Enter Community Mobile By Keypad    9824394355
    # Click on the Community WhatsApp Number
    # Enter the Community WhatsApp Number
    Enter Community First Name
    Enter Middle Name for Community Registration
    Enter Community Last Name
    Enter Community Full Address
    # Enter Community Address Line 2
    # Enter Community Landmark
    Enter Invalid Community Pincode
    Click on the Next Button from Community Registration
    Verify Validation Message for Invalid Community Pincode
    
Verify Community Member registration is successful with all mandatory fields when "Yes" is selected.
    [Tags]  TC183  Register  Gurutattva
    Open Gurutattva App
    Click on the Register Link
    Verify Community Registration is Selected by default
    Click on the First YES Radio Button
    Select Attended Year
    Click on the Second YES Radio Button
    Select Attended Year
    Click on the Next Button from Community Registration
    Handle Location Permission
    Select and Search Dhyankendra and click on the Next Button
    Fill the Personal and Address Information
    Fill the Personal,Select Married and Education Information
    Verify OTP Screen is Displayed 

Verify that a validation message is displayed on the Community Register screen when mandatory fields are not entered
    [Tags]  TC132  Register  Gurutattva
    Open Gurutattva App
    Click on the Register Link
    Verify Validation Message for First page
    Verify Validation Message for Second page
    Verify Validation Message for Third page
    Verify Validation Message for Fourth page

Verify that the user is able to navigate to the login screen from the Community Member screen
    [Tags]  TC012  Register  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    # Click on the Register Button
    Click on the Community Registration Tab
    Click on the Login Button from Community Registration Page 
    Verify Login Screen Is Displayed    
    Close Gurutattva App

Verify that when country is selected, address fields and related dropdowns remain disabled
    [Tags]  TC185  Register  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    Click on the Register Link
    Click on the Quick Registration Tab
    Select Country from dropdown in Register screen
    Select State for Register Screen
    Select District for Register Screen
    Select Taluka/City for Register Screen
    Select Area/Village for Register Screen
    Click on the Selected Country
    Verify that the address fields and related dropdowns remain disabled
    Close Gurutattva App

Verify that selecting an Country displays correct values in address- related dropdown.
    [Tags]  TC186  Register  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    Click on the Register Link
    Click on the Quick Registration Tab
    Select Country from dropdown in Register screen
    Verify that the selected country values are displayed in the state dropdown
    Verify that the selected state values are displayed in the district dropdown
    Verify that the selected district values are displayed in the taluka/city dropdown
    Verify that the selected taluka/city values are displayed in the area/village dropdown
    Close Gurutattva App

Verify that selecting a State displays correct values in all address- related dropdowns.
    [Tags]  TC187  Register  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    Click on the Register Link
    Click on the Quick Registration Tab
    Select Country from dropdown in Register screen
    Select Other State
    Verify that the other state values are displayed in the district dropdown
    Verify that the other district values are displayed in the taluka/city dropdown
    Verify that the other taluka/city values are displayed in the area/village dropdown
    Close Gurutattva App

Verify that selecting a District displays correct values in all address- related dropdowns.
    [Tags]  TC188  Register  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    Click on the Register Link
    Click on the Quick Registration Tab
    Select Country from dropdown in Register screen
    Select Another State
    Select Other District
    Verify that the other Selected district values are displayed in the taluka/city dropdown
    Verify that the other Selected taluka/city values are displayed in the area/village dropdown
    Close Gurutattva App

Verify that selecting a Taluka/City displays correct values in address- related dropdown.
    [Tags]  TC189  Register  Gurutattva
    Open Gurutattva App
    Handle First Time Setup
    Click on the Register Link
    Click on the Quick Registration Tab
    Select Country from dropdown in Register screen
    Select State for Register Screen
    Select Another District
    Select Another Taluka/City
    Verify that the selected another taluka/city values are displayed in the area/village dropdown
    Close Gurutattva App    