*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../pages/NewsPage.robot
Resource    ../pages/HomePage.robot
Resource    ../pages/E2ENewsPage.robot
Resource    ../pages/loginPage.robot
Resource    ../pages/CRM_AudioPage.robot
Resource    ../resources/web_keywords.robot

Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***

Verify that the user is able to add a English news, publish it in the CMS, and verify the english news details on the mobile app
    [Tags]    TC01    News    Gurutattva    E2E    English
    Open Gurutattva App
    Handle First Time Setup

    # Generate unique test data for this test run
    Generate E2E News Test Data For English

    # --- Web CMS: Create English News ---
    Open Web Browser
    Login in with valid credentials

    # Navigate to Global News section
    Navigate To Global News In CMS

    # Click Add News button
    Click Add News Button

    # Select English language tab
    Select English Language Tab

    # Select News For Dhyankendra
    Select News For Dhyankendra

    # Enter English news details
    Enter English News Title    ${E2E_NEWS_TITLE_EN}
    Enter English News Description    ${E2E_NEWS_DESCRIPTION_EN}
    Enter English News Content    ${E2E_NEWS_CONTENT_EN}

    # Set publishing details
    Select Publish Status    Publish
    Enter Publish Date    ${E2E_NEWS_PUBLISH_DATE}
    Select Category    ${E2E_NEWS_CATEGORY}
    Select Dhyankendra    ${E2E_NEWS_DHYANKENDRA}

    # Upload images
    Upload Thumbnail Image    ${EXECDIR}/test_data/English_thumbnail.png
    Upload Main Image    ${EXECDIR}/test_data/large_image.jpg

    # Submit the news
    Click Submit Button
    Verify News Created Successfully

    # Search and verify the created news
    Search News By Title    ${E2E_NEWS_TITLE_EN}
    Verify News In List    ${E2E_NEWS_TITLE_EN}
    Verify News Publish Status    ${E2E_NEWS_TITLE_EN}    Publish

    Log To Console    🎉 English News Created Successfully in CMS!
    Log To Console    🎉 Test Data Used:
    Log To Console    🎉 Title: ${E2E_NEWS_TITLE_EN}
    Log To Console    🎉 Description: ${E2E_NEWS_DESCRIPTION_EN}
    Log To Console    🎉 Content: ${E2E_NEWS_CONTENT_EN}
    Log To Console    🎉 Publish Date: ${E2E_NEWS_PUBLISH_DATE}
    Log To Console    🎉 Category: ${E2E_NEWS_CATEGORY}
    Log To Console    🎉 Dhyankendra: ${E2E_NEWS_DHYANKENDRA}

    Close Web Browser

    # --- Mobile App: Verify English News Details ---
    Verify Mobile News Details    ${E2E_NEWS_TITLE_EN}

    Log To Console    🎉 E2E English News Test Completed Successfully!

    Close Gurutattva App

Verify that the user is able to add a Hindi news, publish it in the CMS, and verify the hindi news details on the mobile app
    [Tags]    TC02    News    Gurutattva    E2E    Hindi
    Open Gurutattva App
    Handle First Time Setup

    # Generate unique test data for this test run
    Generate E2E News Test Data For Hindi

    # --- Web CMS: Create Hindi News ---
    Open Web Browser
    Login in with valid credentials

    # Navigate to Global News section
    Navigate To Global News In CMS

    # Click Add News button
    Click Add News Button

    # Select Hindi language tab
    Select Hindi Language Tab

    # Select News For Dhyankendra
    Select News For Dhyankendra

    # Enter Hindi news details
    Enter Hindi News Title    ${E2E_NEWS_TITLE_HI}
    Enter Hindi News Description    ${E2E_NEWS_DESCRIPTION_HI}
    Enter Hindi News Content    ${E2E_NEWS_CONTENT_HI}

    # Set publishing details
    Select Publish Status    Publish
    Enter Publish Date    ${E2E_NEWS_PUBLISH_DATE}
    Select Category    ${E2E_NEWS_CATEGORY}
    Select Dhyankendra    ${E2E_NEWS_DHYANKENDRA}

    # Upload images
    Upload Thumbnail Image    ${EXECDIR}/test_data/Hindi_thumbnail.jpg
    Upload Main Image    ${EXECDIR}/test_data/large_image.jpg

    # Submit the news
    Click Submit Button
    Verify News Created Successfully

    # Search and verify the created news
    Search News By Title    ${E2E_NEWS_TITLE_HI}
    Verify News In List    ${E2E_NEWS_TITLE_HI}
    Verify News Publish Status    ${E2E_NEWS_TITLE_HI}    Publish

    Log To Console    🎉 Hindi News Created Successfully in CMS!
    Log To Console    🎉 Test Data Used:
    Log To Console    🎉 Title: ${E2E_NEWS_TITLE_HI}
    Log To Console    🎉 Description: ${E2E_NEWS_DESCRIPTION_HI}
    Log To Console    🎉 Content: ${E2E_NEWS_CONTENT_HI}
    Log To Console    🎉 Publish Date: ${E2E_NEWS_PUBLISH_DATE}
    Log To Console    🎉 Category: ${E2E_NEWS_CATEGORY}
    Log To Console    🎉 Dhyankendra: ${E2E_NEWS_DHYANKENDRA}

    Close Web Browser

    # --- Mobile App: Verify Hindi News Details ---
    Verify Mobile News Details    ${E2E_NEWS_TITLE_HI}

    Log To Console    🎉 E2E Hindi News Test Completed Successfully!

    Close Gurutattva App

Verify the image upload validation in CMS
    [Tags]    TC03    News    Gurutattva    E2E    Validation
    Open Gurutattva App
    Handle First Time Setup

    # Generate unique test data for this test run
    Generate E2E News Test Data For English

    # --- Web CMS: Test Image Upload Validation ---
    Open Web Browser
    Login in with valid credentials

    # Navigate to Global News section
    Navigate To Global News In CMS

    # Click Add News button
    Click Add News Button

    # Select English language tab
    Select English Language Tab

    # Select News For Dhyankendra
    Select News For Dhyankendra

    # Enter English news details
    Enter English News Title    ${E2E_NEWS_TITLE_EN}
    Enter English News Description    ${E2E_NEWS_DESCRIPTION_EN}
    Enter English News Content    ${E2E_NEWS_CONTENT_EN}

    # Set publishing details
    Select Publish Status    Publish
    Enter Publish Date    ${E2E_NEWS_PUBLISH_DATE}
    Select Category    ${E2E_NEWS_CATEGORY}
    Select Dhyankendra    ${E2E_NEWS_DHYANKENDRA}

    # Try to upload invalid image (small size)
    Upload Thumbnail Image    ${EXECDIR}/test_data/unsupported_format.txt
    Upload Main Image    ${EXECDIR}/test_data/unsupported_format.txt

    # Verify image upload validation error
    Verify Image Upload Validation Error

    Log To Console    🎉 Image Upload Validation Test Completed Successfully!
    Log To Console    🎉 Test Data Used:
    Log To Console    🎉 Title: ${E2E_NEWS_TITLE_EN}
    Log To Console    🎉 Description: ${E2E_NEWS_DESCRIPTION_EN}
    Log To Console    🎉 Content: ${E2E_NEWS_CONTENT_EN}
    Log To Console    🎉 Invalid Image: unsupported_format.txt

    Close Web Browser
    Close Gurutattva App
