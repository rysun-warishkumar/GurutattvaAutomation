*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../resources/web_keywords.robot
Resource    ../pages/loginPage.robot
Resource    ../pages/AudioPage.robot
Resource    ../pages/CRM_AudioPage.robot
Resource    ../pages/CRM_AudioCategoryPage.robot
Resource    ../pages/HomePage.robot

Test Setup    Test Setup
Test Teardown    Test Teardown


*** Test Cases ***

Create Music Category with valid inputs
    [Tags]  WTC001  AudioCategory  Gurutattva  Web
    Generate Random Number for Test Data
    Open Web Browser
    Login in with valid credentials
    Click on the Master Management Menu
    Click on the Manage Audio Categories Submenu
    Click on the Add Category button
    Select Music Audio Type
    Enter the English Category Name
    Enter the English Category Description
    Upload the English Category Thumbnail Image
    Enter the Hindi Category Name
    Enter the Hindi Category Description
    Upload the Hindi Category Thumbnail Image
    Click on the Add New button
    Verify the Newly added Category is displayed in the top list as active
    Close Web Browser

Create Music Category with duplicate English name
    [Tags]  WTC002  AudioCategory  Gurutattva  Web
    Generate Random Number for Test Data
    Open Web Browser
    Login in with valid credentials
    Click on the Master Management Menu
    Click on the Manage Audio Categories Submenu
    Click on the Add Category button
    Select Music Audio Type
    Enter Duplicate English Category Name
    Enter Duplicate English Category Description
    Upload the English Category Thumbnail Image
    Enter Duplicate Hindi Category Name
    Enter Duplicate Hindi Category Description
    Upload the Hindi Category Thumbnail Image
    Click on the Add New button for duplicate test
    Verify Duplicate English Name Error Message
    Close Web Browser

Create Music Category with duplicate Hindi name
    [Tags]  WTC003  AudioCategory  Gurutattva  Web
    Generate Random Number for Test Data
    Open Web Browser
    Login in with valid credentials
    Click on the Master Management Menu
    Click on the Manage Audio Categories Submenu
    Click on the Add Category button
    Select Music Audio Type
    Enter Duplicate English Category Name
    Enter Duplicate English Category Description
    Upload the English Category Thumbnail Image
    Enter Duplicate Hindi Category Name
    Enter Duplicate Hindi Category Description
    Upload the Hindi Category Thumbnail Image
    Click on the Add New button for duplicate test
    Verify Duplicate Hindi Name Error Message
    Close Web Browser

Create Music Category with missing English name
    [Tags]  WTC004  AudioCategory  Gurutattva  Web
    Generate Random Number for Test Data
    Open Web Browser
    Login in with valid credentials
    Click on the Master Management Menu
    Click on the Manage Audio Categories Submenu
    Click on the Add Category button
    Select Music Audio Type
    Clear English Category Name Field
    Enter the English Category Description
    Upload the English Category Thumbnail Image
    Enter the Hindi Category Name
    Enter the Hindi Category Description
    Upload the Hindi Category Thumbnail Image
    Click on the Add New button
    Verify Missing English Name Error Message
    Close Web Browser

Create Music Category with missing Hindi name
    [Tags]  WTC005  AudioCategory  Gurutattva  Web
    Generate Random Number for Test Data
    Open Web Browser
    Login in with valid credentials
    Click on the Master Management Menu
    Click on the Manage Audio Categories Submenu
    Click on the Add Category button
    Select Music Audio Type
    Enter the English Category Name
    Enter the English Category Description
    Upload the English Category Thumbnail Image
    Clear Hindi Category Name Field
    Enter the Hindi Category Description
    Upload the Hindi Category Thumbnail Image
    Click on the Add New button
    Verify Missing Hindi Name Error Message
    Close Web Browser

Create Music Category with unsupported image format
    [Tags]  WTC006  AudioCategory  Gurutattva  Web
    Generate Random Number for Test Data
    Open Web Browser
    Login in with valid credentials
    Click on the Master Management Menu
    Click on the Manage Audio Categories Submenu
    Click on the Add Category button
    Select Music Audio Type
    Enter the English Category Name
    Enter the English Category Description
    Upload Unsupported Format File
    Verify Unsupported Format Error Message
    Close Web Browser

Create Music Category with large image file
    [Tags]  WTC007  AudioCategory  Gurutattva  Web
    Generate Random Number for Test Data
    Open Web Browser
    Login in with valid credentials
    Click on the Master Management Menu
    Click on the Manage Audio Categories Submenu
    Click on the Add Category button
    Select Music Audio Type
    Enter the English Category Name
    Enter the English Category Description
    Upload Large Image File
    Verify File Size Error Message
    Close Web Browser

Update Music Category name and image
    [Tags]  WTC008  AudioCategory  Gurutattva  Web
    Generate Random Number for Test Data
    Open Web Browser
    Login in with valid credentials
    Click on the Master Management Menu
    Click on the Manage Audio Categories Submenu
    # Update existing category
    Click Edit Button for Category
    Update English Category Name
    Update English Category Description
    Upload Updated English Category Thumbnail Image
    Update Hindi Category Name
    Update Hindi Category Description
    Upload Updated Hindi Category Thumbnail Image
    Click Update Button
    Verify Category Update Success
    Verify Updated Category in List
    Close Web Browser

Attempt to update with duplicate name
    [Tags]  WTC009  AudioCategory  Gurutattva  Web
    Generate Random Number for Test Data
    Open Web Browser
    Login in with valid credentials
    Click on the Master Management Menu
    Click on the Manage Audio Categories Submenu
    # Attempt to update existing category with duplicate name
    Click Edit Button for Category
    Enter Duplicate English Category Name
    Update English Category Description
    Upload Updated English Category Thumbnail Image
    Enter Duplicate Hindi Category Name
    Update Hindi Category Description
    Upload Updated Hindi Category Thumbnail Image
    Click Update Button
    Verify Duplicate English Name Error Message
    Close Web Browser



