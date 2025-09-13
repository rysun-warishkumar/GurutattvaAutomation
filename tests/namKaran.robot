*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../pages/loginPage.robot
Resource    ../pages/namkaranPage.robot
Resource    ../pages/NewsPage.robot
Resource    ../pages/DhyanasthaliPage.robot

Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***

Verify that namkaran content is displayed in Namkaran screen
    [Tags]  TC051   Namkaran  Gurutattva
    Open Gurutattva App
  # Login As Existing Mobile User
    Click on the Explore Tab
    Click on the Namkaran Card
    Click on Add Namkaran Button
    verify Namkaran header and content
    Close Gurutattva App

Verify user is remain to namkaran screen when user cancel the terms
    [Tags]   TC053    Namkaran  Gurutattva
    Open Gurutattva App
  # Login As Existing Mobile User
    Click on the Explore Tab
    Click on the Namkaran Card
    Click on Add Namkaran Button
    verify Namkaran header and content
    Click on the Apply Now Button
    Click on the Cancel Button
    Verify Namkaran header and content
    Close Gurutattva App 

Verify user is able to redirect to Namkaran screen when user agree on the terms
    [Tags]     TC052   Namkaran  Gurutattva
    Open Gurutattva App
  # Login As Existing Mobile User
    Click on the Explore Tab
    Click on the Namkaran Card
    Click on Add Namkaran Button
    verify Namkaran header and content
    Click on the Apply Now Button
    Click on the I agree Button
    Verify Namkaran screen
    Close Gurutattva App
    
Verify that the bride namkaran successfully by entering all mandatory fields
    [Tags]     TC057      Namkaran  Gurutattva
    Open Gurutattva App
  # Login As Existing Mobile User
    Click on the Explore Tab
    Click on the Namkaran Card
    Click on Add Namkaran Button
	  Click on the Apply Now Button
    Click on the I agree Button
    Verify Namkaran screen
    Select Bride Namkaran from category dropdown
    Enter Bride First Name     Bride_FN
    Enter Bride Middle Name    Bride_MN
    Enter Bride Last Name      Bride_LN
    Enter Groom First Name     Groom_FN
    Enter Groom Middle Name    Groom_MN
    Enter Groom Last Name      Groom_LN
    Enter Email Address        test@gmail.com
    Enter Phone Number         7808689033
    Select Marriage Date
    Enter Marriage Place        Ahmedabad, Gujarat, India
    Click on the Submit Button
    Verify Namkaran submission success message
    Close Gurutattva App

# Verify that the bride namkaran successfully by entering all mandatory fields for other
#     Open Gurutattva App
#   # Login As Existing Mobile User
#     Click on the Explore Tab
#     Click on the Namkaran Card
#     Click on the Apply Now Button
#     Click on the I agree Button
#     Verify Namkaran add screen
#     Click on the add icon
#     Select Bride Namkaran from category dropdown
#     Select Other for the register prayer
#     Enter Bride First Name     Bride_FN
#     Enter Bride Middle Name    Bride_MN
#     Enter Bride Last Name      Bride_LN
#     Enter Groom First Name     Groom_FN
#     Enter Groom Middle Name    Groom_MN
#     Enter Groom Last Name      Groom_LN
#     Enter Email Address        test2@gmail.com
#     Enter Phone Number         9662595340
#     Select Marriage Date
#     Enter Marriage Place       Ahmedabad, Gujarat, India
#     Click on the Submit Button
#     Verify Namkaran submission success message    
    
Verify the validation message for an invalid email and phone in bride namkaran form
    [Tags]     TC055      Namkaran  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the Explore Tab
    Click on the Namkaran Card
    # Verify Namkaran add screen
    Click on Add Namkaran Button
	  Click on the Apply Now Button
    Click on the I agree Button
    Select Bride Namkaran from category dropdown
    Enter Bride First Name     Bride_FN
    Enter Bride Middle Name    Bride_MN
    Enter Bride Last Name      Bride_LN
    Enter Groom First Name     Groom_FN
    Enter Groom Middle Name    Groom_MN
    Enter Groom Last Name      Groom_LN
    Enter Email Address        test2
    Click on the Submit Button
    Verify Invalid Email message
    Clear email upon validation failure     
    Enter Email Address        test3@gmail.com
    Enter Phone Number         966
    Click on the Submit Button
    Verify Invalid Mobile message
    Close Gurutattva App

Verify the validate messages for missing mandatory fields in bride namkaran form
    [Tags]     TC054      Namkaran  Gurutattva
    Open Gurutattva App
    # Login As Existing Mobile User
    Click on the Explore Tab
    Click on the Namkaran Card
    # Verify Namkaran add screen
    Click on Add Namkaran Button
	  Click on the Apply Now Button
    Click on the I agree Button
    Select Bride Namkaran from category dropdown
    Click on the Submit Button
    Verify bride first name validation message
    Enter Bride First Name     Bride_FN
    Click on the Submit Button
    Verify bride middle name validation message
    Enter Bride Middle Name    Bride_MN
    Click on the Submit Button
    Verify bride last name validation message
    Enter Bride Last Name      Bride_LN
    Click on the Submit Button
    Verify groom first name validation message
    Enter Groom First Name     Groom_FN
    Click on the Submit Button
    Verify groom middle name validation message
    Enter Groom Middle Name    Groom_MN
    Click on the Submit Button
    Verify groom last name validation message
    Enter Groom Last Name      Groom_LN
    Click on the Submit Button
    Verify email validation message
    Enter Email Address        test2@gmail.com
    Click on the Submit Button
    Verify Phone Number validation message
    Enter Phone Number         9662595340
    Click on the Submit Button
    Verify Marriage Date validation message
    Select Marriage Date
    Click on the Submit Button
    Verify Marriage Place validation message
    Close Gurutattva App

Verify the validation message for an invalid email and phone in child Namkaran form
    [Tags]     TC070      Namkaran  Gurutattva
    Navigate to the Namkaran screen
    Select Child Namkaran from category dropdown
    Enter Mother First Name     Mother_FN
    Enter Mother Middle Name    Mother_MN
    Enter Mother Last Name      Mother_LN
    Enter Father First Name     Father_FN
    Enter Father Middle Name    Father_MN
    Enter Father Last Name      Father_LN
    Enter Email Address         test2
    Click on the Submit Button
    Verify Invalid Email message
    Clear email upon validation failure for Child Namkaran     
    Enter Email Address         test3@gmail.com
    Enter Phone Number          966
    Click on the Submit Button
    Verify Invalid Mobile message for Child Namkaran
    Close Gurutattva App    
    
Verify that the child namkaran successfully by entering all mandatory fields for single child
    [Tags]     TC072      Namkaran  Gurutattva
    Navigate to the Namkaran screen
    Select Child Namkaran from category dropdown
    Enter Mother First Name     Mother_FN
    Enter Mother Middle Name    Mother_MN
    Enter Mother Last Name      Mother_LN
    Enter Father First Name     Father_FN
    Enter Father Middle Name    Father_MN
    Enter Father Last Name      Father_LN
    Enter Email Address         test3@gmail.com
    Enter Phone Number          9662595340
    Select Single Number of child
    Select DOB
    Select Gender
    Select Time
    Enter Birth Place           Pune
    Click on the Submit Button
    Verify Namkaran submission success message
    Close Gurutattva App


Verify that the child namkaran successfully by entering all mandatory fields for twin child
    [Tags]     TC073      Namkaran  Gurutattva
    Open Gurutattva App
  # Login As Existing Mobile User
    Click on the Explore Tab
    Click on the Namkaran Card
    # Verify Namkaran add screen
    Click on Add Namkaran Button
	  Click on the Apply Now Button
    Click on the I agree Button
    Select Child Namkaran from category dropdown
    Enter Mother First Name     Mother_FN
    Enter Mother Middle Name    Mother_MN
    Enter Mother Last Name      Mother_LN
    Enter Father First Name     Father_FN
    Enter Father Middle Name    Father_MN
    Enter Father Last Name      Father_LN
    Enter Email Address         test3@gmail.com
    Enter Phone Number          9662595340
    Select Twins Number of child
    Select DOB
    Select Gender for twins child 1
    Select Gender for twins child 2
    Swipe up and down to see the twins child 1
    Select Time
    Enter Birth Place           Pune
    Select DOB of Child No. 2
    Select Time of Child No. 2
    Enter Birth Place of Child No. 2    Ahmedabad
    Click on the Submit Button
    Verify Namkaran submission success message
    Close Gurutattva App

Verify when add multiple name choice for the single child
    [Tags]     TC071      Namkaran  Gurutattva
    Open Gurutattva App
  # Login As Existing Mobile User
    Click on the Explore Tab
    Click on the Namkaran Card
    # Verify Namkaran add screen
    Click on Add Namkaran Button
	  Click on the Apply Now Button
    Click on the I agree Button
    Select Child Namkaran from category dropdown
    Enter Mother First Name     Mother_FN
    Enter Mother Middle Name    Mother_MN
    Enter Mother Last Name      Mother_LN
    Enter Father First Name     Father_FN
    Enter Father Middle Name    Father_MN
    Enter Father Last Name      Father_LN
    Enter Email Address         test3@gmail.com
    Enter Phone Number          9662595340
    Select Single Number of child
    Select DOB
    Select Gender
    Select Time
    Enter Birth Place           Pune
    Select Yes for the multiple name choice for the child
    Enter name choice 1         First Choice
    Enter name choice 2         Second Choice
    Click on the Add Button for Child Namkaran
    Enter name choice 3         Third Choice
    Click on the Submit Button
    Verify Namkaran submission success message
    Close Gurutattva App


Verify the validate messages for missing mandatory fields in child namkaran form
    [Tags]     TC069      Namkaran  Gurutattva
    Open Gurutattva App
  # Login As Existing Mobile User
    Click on the Explore Tab
    Click on the Namkaran Card
    # Verify Namkaran add screen
    Click on Add Namkaran Button
	  Click on the Apply Now Button
    Click on the I agree Button
    Select Child Namkaran from category dropdown
    Click on the Submit Button
    Verify Mother First Name validation message
    Enter Mother First Name     Mother_FN
    Click on the Submit Button
    Verify Mother Middle Name validation message
    Enter Mother Middle Name    Mother_MN
    Click on the Submit Button
    Verify Mother Last Name validation message
    Enter Mother Last Name      Mother_LN
    Click on the Submit Button
    Verify Father First Name validation message
    Enter Father First Name     Father_FN
    Click on the Submit Button
    Verify Father Middle Name validation message
    Enter Father Middle Name    Father_MN
    Click on the Submit Button
    Verify Father Last Name validation message
    Enter Father Last Name      Father_LN
    Click on the Submit Button
    Verify email validation message of Child Namkaran
    Enter Email Address for Child Namkaran         test3@gmail.com
    Click on the Submit Button
    Verify Phone Number validation message of Child Namkaran
    Enter Phone Number for Child Namkaran        9662595340
    Click on the Submit Button   
    Verify DOB validation message of Child Namkaran
    Select DOB
    Click on the Submit Button
    Verify Gender validation message of Child Namkaran
    Select Gender
    Click on the Submit Button
    Verify Birth Time validation message of Child Namkaran
    Select Time
    Click on the Submit Button
    Verify Birth Place validation message of Child Namkaran
    Close Gurutattva App


Verify the validation message for an invalid email and phone in business namkaran form
    [Tags]     TC060      Namkaran  Gurutattva
    Navigate to the Namkaran screen
    Select Business Namkaran from category dropdown
    Enter First Owner First Name 
	  Enter First Owner Middle Name 
	  Enter First Owner Last Name 
    Enter Invalid Email Address for Business Namkaran         
    Click on the Submit Button
    Verify Invalid Email message
    Clear email upon validation failure for Business Namkaran
    Enter Valid Email Address for Business Namkaran
    Enter Invalid Owner Phone Number for Business Namkaran         
    Click on the Submit Button
    Verify Invalid Mobile message for Child Namkaran
    Close Gurutattva App 


Verify when add multiple name choice for the house
     [Tags]     TC066      Namkaran  Gurutattva
    Navigate to the Namkaran screen
    Select House Namkaran from category dropdown
    Enter Owner First Name    Warish
    Enter Owner Middle Name   Kumar
    Enter Owner Last Name     Mehta
    Enter Owner Email         warish.kumar@rysun.com
    Enter Owner Phone Number    7808689033
    Enter Owner house full Address   Ahmedabad, Gujarat, India
    Select Yes for the multiple name choice
    Enter First name choice    First Choice
    Enter Second name choice    Second Choice
    Click on the Add Button
    Enter Third name choice    Third Choice
    Click on the Submit Button


Verify that the house namkaran successfully by entering all mandatory fields for other
  [Tags]    TC068    Namkaran  Gurutattva
    Open Gurutattva App
  # Login As Existing Mobile User
    Click on the Explore Menu
    Click on the Namkaran Card
    Click on the Apply Now Button
    Click on the I agree Button
    Verify Namkaran screen
    Click on Add Namkaran Button
    Select House Namkaran from category dropdown
    Select Other for the register prayer
    Enter Owner First Name    Warish
    Enter Owner Middle Name   Kumar
    Enter Owner Last Name     Mehta
    Enter Owner Email         warish.kumar@rysun.com
    Enter Owner Phone Number    7808689033
    Enter Owner house full Address   Ahmedabad, Gujarat, India
    Click on the Submit Button
    Click on Add Namkaran Button
    Verify Business Namkaran by entering all mandatory fields for self

Verify when add multiple name choice for the business
    [Tags]    TC061    Namkaran  Gurutattva
    Open Gurutattva App
  # Login As Existing Mobile User
    Click on the Explore Tab
    Click on the Namkaran Card
    Click on the Apply Now Button
    Click on the I agree Button
    # Click on Add Namkaran Button
    Select Business Namkaran from category dropdown
    Verify Business Namkaran With Multiple Name Choices
    Close Gurutattva App

Verify that the business namkaran successfully by entering all mandatory fields for self
    [Tags]     TC062      Namkaran  Gurutattva
    Open Gurutattva App
    Navigate to the Namkaran screen
    Select Business Namkaran from category dropdown
    Verify Business Namkaran by entering all mandatory fields for self
    Close Gurutattva App


Verify the validate messages for missing mandatory fields in business namkaran form
    [Tags]     TC059      Namkaran  Gurutattva
    Navigate to the Namkaran screen
    Select Business Namkaran from category dropdown
    Click on the Submit Button
    Verify Validation Message for first owner's first name
    Enter First Owner First Name
    Click on the Submit Button
    Verify Validation Message for first owner's middle name 
	  Enter First Owner Middle Name
    Click on the Submit Button
    Verify Validation Message for first owner's last name  
	  Enter First Owner Last Name
    Click on the Submit Button
    Verify email validation message of Business Namkaran
    Enter Valid Email Address for Business Namkaran
    Click on the Submit Button
    Verify Phone Number validation message of Business Namkaran
    Enter Valid Phone Number for Business Namkaran
    Click on the Submit Button
    Verify Validation Message for Business Description
    Enter Business Description
    Click on the Submit Button
    Verify Validation Message for Business Address
    Close Gurutattva App


# Verify that the business namkaran successfully by entering all mandatory fields for other
#     [Tags]     TC063      Namkaran
#     Open Gurutattva App
#   # Login As Existing Mobile User
#     Click on the Explore Menu
#     Click on the Namkaran Card
#     Click on the Apply Now Button
#     Click on the I agree Button
#     Click on Add Namkaran Button
#     Select Business Namkaran from category dropdown
#     Verify Business Namkaran by entering all mandatory fields for other

Verify when add multiple name choice for the bride
    [Tags]    TC056    Namkaran  Gurutattva
    Navigate to the Namkaran screen
    Select Bride Namkaran from category dropdown
    Enter Bride First Name    Bride_FN
    Enter Bride Middle Name   Bride_MN
    Enter Bride Last Name     Bride_LN
    Enter Groom First Name    Groom_FN
    Enter Groom Middle Name   Groom_MN
    Enter Groom Last Name     Groom_LN
    Enter Email Address        warish.kumar@rysun.com
    Enter Phone Number    7808689033
    Select Marriage Date
    Enter Marraige Place   Ahmedabad, Gujarat, India
    Select Yes for the multiple name choice
    Enter First name choice    First Choice
    Enter Second name choice    Second Choice
    Click on the Add Button for Bride Namkaran
    Enter Third name choice    Third Choice
    Click on the Submit Button
    Verify Namkaran submission success message

#### All the bewlow test cases are related to House Namkaran
Verify the validate messages for missing mandatory fields in house namkaran form
    [Tags]  TC064  NamKaran  Gurutattva
    Navigate to the Namkaran screen
    Select House Namkaran from category dropdown
    Click on Submit button and verify the validation for Owner First Name
    Click on Submit button and verify the validation for Owner Middle Name
    Click on Submit button and verify the validation for Owner Last Name
    Click on Submit button and verify the validation for Owner Email
    Click on Submit button and verify the validation for Owner Phone Number
    Click on Submit button and verify the validation for Owner house full Address

Verify that the house namkaran successfully by entering all mandatory fields for self
      [Tags]  TC067  NamKaran  Gurutattva
    Navigate to the Namkaran screen
    Select House Namkaran from category dropdown
    Enter Owner First Name    Warish
    Enter Owner Middle Name   Kumar
    Enter Owner Last Name     Mehta
    Enter Owner Email         warish.kumar@rysun.com
    Enter Owner Phone Number    7808689033
    Enter Owner house full Address   Ahmedabad, Gujarat, India
    Click on the Submit Button

Verify that the user is able to redirect to Namkaran screen from Namkaran form using back button
    [Tags]  TC106  NamKaran  Gurutattva
    Open Gurutattva App
  # Login As Existing Mobile User
    Click on the Explore Tab
    Click on the Namkaran Card
    Click on Add Namkaran Button
    Click on the Apply Now Button
    Click on the I agree Button
    Verify Namkaran screen
    Click on the Back Button from Namkaran Form
    Handle Namkaran Add Screen

Verify that the user is able to redirect to Explore screen from Namkaran screen using back button
    [Tags]  TC107  NamKaran  Gurutattva
    Open Gurutattva App
  # Login As Existing Mobile User
    Click on the Explore Tab
    Click on the Namkaran Card
    Handle Namkaran Add Screen
    Click on the Back Button from Namkaran Screen
    Verify Explore Screen is displayed
    Close Gurutattva App

Verify the validation message for an invalid email and phone in house Namkaran form
    [Tags]  TC065  NamKaran  Gurutattva
    Navigate to the Namkaran screen    
    Select House Namkaran from category dropdown
    Enter Owner First Name    Warish
    Enter Owner Middle Name   Kumar
    Enter Owner Last Name     Mehta
    Enter Owner Email         warish.com
    Click on the Submit Button
    Verify Invalid Email message
    Clear email upon validation failure for House Namkaran
    Enter Owner Email         warish.kumar@rysun.com
    Enter Owner Phone Number    7808
    Click on the Submit Button
    Verify Invalid Mobile message
    Close Gurutattva App

