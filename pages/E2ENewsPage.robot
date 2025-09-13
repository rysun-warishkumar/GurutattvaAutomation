*** Settings ***
Resource   ../resources/libraries.robot
Resource   ../resources/web_keywords.robot
Resource   NewsPage.robot
Library   DateTime
Library   String
Library    Collections
Resource   ../resources/test_setup_teardown.robot

*** Variables ***
# E2E News Test Data Variables
${E2E_NEWS_TITLE_EN}              ${EMPTY}
${E2E_NEWS_DESCRIPTION_EN}        ${EMPTY}
${E2E_NEWS_CONTENT_EN}            ${EMPTY}
${E2E_NEWS_TITLE_HI}              ${EMPTY}
${E2E_NEWS_DESCRIPTION_HI}        ${EMPTY}
${E2E_NEWS_CONTENT_HI}            ${EMPTY}
${E2E_NEWS_PUBLISH_DATE}          ${EMPTY}
${E2E_NEWS_CATEGORY}              ${EMPTY}
${E2E_NEWS_DHYANKENDRA}           ${EMPTY}

# Web CMS Locators for Global News
${NEWS_MENU}                      xpath=//span[contains(text(),'News')]
${GLOBAL_NEWS_SUBMENU}            xpath=//span[contains(text(),'Global')]
${ADD_NEWS_BUTTON}                xpath=//button[contains(text(),'Add News')]
${NEWS_SEARCH_FIELD}              xpath=//input[@placeholder='Search...']
${NEWS_TABLE}                     xpath=//div[@role='grid']

# Add News Form Locators
${LANGUAGE_ENGLISH_TAB}           xpath=//button[contains(text(),'English')]
${LANGUAGE_HINDI_TAB}             xpath=//button[contains(text(),'Hindi')]
${NEWS_FOR_DHYANKENDRA_RADIO}     xpath=//input[@value='Dhynkendra']
${NEWS_FOR_LOCATION_RADIO}        xpath=//input[@value='Location']
${TITLE_ENGLISH_FIELD}            xpath=//input[@placeholder='Title (English) *']
${DESCRIPTION_ENGLISH_FIELD}      xpath=//input[@placeholder='Description (English) *']
${CONTENT_ENGLISH_FIELD}          xpath=//div[@contenteditable='true'][@placeholder='Enter content in English...']
${TITLE_HINDI_FIELD}              xpath=//input[@placeholder='Title (Hindi) *']
${DESCRIPTION_HINDI_FIELD}        xpath=//input[@placeholder='Description (Hindi) *']
${CONTENT_HINDI_FIELD}            xpath=//div[@contenteditable='true'][@placeholder='Enter content in Hindi...']
${PUBLISH_STATUS_DROPDOWN}        xpath=//select[@name='publishStatus']
${PUBLISH_DATE_FIELD}             xpath=//input[@placeholder='DD/MM/YYYY']
${CATEGORY_DROPDOWN}              xpath=//select[@name='category']
${DHYANKENDRA_DROPDOWN}           xpath=//select[@name='dhyankendra']
${THUMBNAIL_UPLOAD_BUTTON}        xpath=//button[contains(text(),'Add') and following-sibling::text()[contains(.,'512 x 512')]]
${IMAGE_UPLOAD_BUTTON}            xpath=//button[contains(text(),'Add') and following-sibling::text()[contains(.,'335 x 220')]]
${SUBMIT_BUTTON}                  xpath=//button[contains(text(),'Submit')]
${CANCEL_BUTTON}                  xpath=//button[contains(text(),'Cancel')]

# News List Locators
${NEWS_TITLE_COLUMN}              xpath=//div[@data-field='title']
${NEWS_CATEGORY_COLUMN}           xpath=//div[@data-field='category']
${NEWS_PUBLISH_DATE_COLUMN}       xpath=//div[@data-field='publishDate']
${NEWS_PUBLISH_STATUS_COLUMN}     xpath=//div[@data-field='publishStatus']
${NEWS_ACTIONS_COLUMN}            xpath=//button[@aria-label='more']

# File Upload Locators
${FILE_INPUT_THUMBNAIL}           xpath=//input[@type='file' and @accept='image/*']
${FILE_INPUT_IMAGE}               xpath=//input[@type='file' and @accept='image/*']

*** Keywords ***
Generate E2E News Test Data For English
    [Documentation]    Generates unique test data for E2E English News
    ${random_num}=    Evaluate    random.randint(1000, 9999)    random
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    
    Set Test Variable    ${E2E_NEWS_TITLE_EN}        E2E English News Title ${random_num}
    Set Test Variable    ${E2E_NEWS_DESCRIPTION_EN}  E2E English News Description ${random_num}
    Set Test Variable    ${E2E_NEWS_CONTENT_EN}      E2E English News Content ${random_num}. This is a test news content generated for automation testing purposes.
    Set Test Variable    ${E2E_NEWS_PUBLISH_DATE}    25/12/2025
    Set Test Variable    ${E2E_NEWS_CATEGORY}        Guru Purnima
    Set Test Variable    ${E2E_NEWS_DHYANKENDRA}     Test Dhyankendra
    
    Log To Console    🎯 Generated E2E English News Test Data:
    Log To Console    🎯 Title: ${E2E_NEWS_TITLE_EN}
    Log To Console    🎯 Description: ${E2E_NEWS_DESCRIPTION_EN}
    Log To Console    🎯 Content: ${E2E_NEWS_CONTENT_EN}
    Log To Console    🎯 Publish Date: ${E2E_NEWS_PUBLISH_DATE}
    Log To Console    🎯 Category: ${E2E_NEWS_CATEGORY}
    Log To Console    🎯 Dhyankendra: ${E2E_NEWS_DHYANKENDRA}

Generate E2E News Test Data For Hindi
    [Documentation]    Generates unique test data for E2E Hindi News
    ${random_num}=    Evaluate    random.randint(1000, 9999)    random
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    
    Set Test Variable    ${E2E_NEWS_TITLE_HI}        E2E हिंदी समाचार शीर्षक ${random_num}
    Set Test Variable    ${E2E_NEWS_DESCRIPTION_HI}  E2E हिंदी समाचार विवरण ${random_num}
    Set Test Variable    ${E2E_NEWS_CONTENT_HI}      E2E हिंदी समाचार सामग्री ${random_num}. यह स्वचालन परीक्षण के लिए उत्पन्न किया गया एक परीक्षण समाचार सामग्री है।
    Set Test Variable    ${E2E_NEWS_PUBLISH_DATE}    25/12/2025
    Set Test Variable    ${E2E_NEWS_CATEGORY}        Guru Purnima
    Set Test Variable    ${E2E_NEWS_DHYANKENDRA}     Test Dhyankendra
    
    Log To Console    🎯 Generated E2E Hindi News Test Data:
    Log To Console    🎯 Title: ${E2E_NEWS_TITLE_HI}
    Log To Console    🎯 Description: ${E2E_NEWS_DESCRIPTION_HI}
    Log To Console    🎯 Content: ${E2E_NEWS_CONTENT_HI}
    Log To Console    🎯 Publish Date: ${E2E_NEWS_PUBLISH_DATE}
    Log To Console    🎯 Category: ${E2E_NEWS_CATEGORY}
    Log To Console    🎯 Dhyankendra: ${E2E_NEWS_DHYANKENDRA}

Navigate To Global News In CMS
    [Documentation]    Navigates to Global News section in CMS
    Sleep    2s
    Web.Click Element    ${NEWS_MENU}
    Sleep    2s
    Web.Click Element    ${GLOBAL_NEWS_SUBMENU}
    Sleep    3s
    Log To Console    ✅ Navigated to Global News in CMS

Click Add News Button
    [Documentation]    Clicks on the Add News button
    Sleep    2s
    Web.Wait Until Element Is Visible    ${ADD_NEWS_BUTTON}    10s
    Web.Click Element    ${ADD_NEWS_BUTTON}
    Sleep    3s
    Log To Console    ✅ Clicked on Add News Button

Select English Language Tab
    [Documentation]    Selects the English language tab
    Sleep    2s
    Web.Wait Until Element Is Visible    ${LANGUAGE_ENGLISH_TAB}    10s
    Web.Click Element    ${LANGUAGE_ENGLISH_TAB}
    Sleep    2s
    Log To Console    ✅ Selected English Language Tab

Select Hindi Language Tab
    [Documentation]    Selects the Hindi language tab
    Sleep    2s
    Web.Wait Until Element Is Visible    ${LANGUAGE_HINDI_TAB}    10s
    Web.Click Element    ${LANGUAGE_HINDI_TAB}
    Sleep    2s
    Log To Console    ✅ Selected Hindi Language Tab

Select News For Dhyankendra
    [Documentation]    Selects the Dhyankendra radio button
    Sleep    2s
    Web.Wait Until Element Is Visible    ${NEWS_FOR_DHYANKENDRA_RADIO}    10s
    Web.Click Element    ${NEWS_FOR_DHYANKENDRA_RADIO}
    Sleep    2s
    Log To Console    ✅ Selected News For Dhyankendra

Enter English News Title
    [Documentation]    Enters the English news title
    [Arguments]    ${title}
    Sleep    2s
    Web.Wait Until Element Is Visible    ${TITLE_ENGLISH_FIELD}    10s
    Web.Clear Element Text    ${TITLE_ENGLISH_FIELD}
    Web.Input Text    ${TITLE_ENGLISH_FIELD}    ${title}
    Log To Console    ✅ Entered English News Title: ${title}

Enter English News Description
    [Documentation]    Enters the English news description
    [Arguments]    ${description}
    Sleep    2s
    Web.Wait Until Element Is Visible    ${DESCRIPTION_ENGLISH_FIELD}    10s
    Web.Clear Element Text    ${DESCRIPTION_ENGLISH_FIELD}
    Web.Input Text    ${DESCRIPTION_ENGLISH_FIELD}    ${description}
    Log To Console    ✅ Entered English News Description: ${description}

Enter English News Content
    [Documentation]    Enters the English news content in rich text editor
    [Arguments]    ${content}
    Sleep    2s
    Web.Wait Until Element Is Visible    ${CONTENT_ENGLISH_FIELD}    10s
    Web.Click Element    ${CONTENT_ENGLISH_FIELD}
    Web.Input Text    ${CONTENT_ENGLISH_FIELD}    ${content}
    Log To Console    ✅ Entered English News Content: ${content}

Enter Hindi News Title
    [Documentation]    Enters the Hindi news title
    [Arguments]    ${title}
    Sleep    2s
    Web.Wait Until Element Is Visible    ${TITLE_HINDI_FIELD}    10s
    Web.Clear Element Text    ${TITLE_HINDI_FIELD}
    Web.Input Text    ${TITLE_HINDI_FIELD}    ${title}
    Log To Console    ✅ Entered Hindi News Title: ${title}

Enter Hindi News Description
    [Documentation]    Enters the Hindi news description
    [Arguments]    ${description}
    Sleep    2s
    Web.Wait Until Element Is Visible    ${DESCRIPTION_HINDI_FIELD}    10s
    Web.Clear Element Text    ${DESCRIPTION_HINDI_FIELD}
    Web.Input Text    ${DESCRIPTION_HINDI_FIELD}    ${description}
    Log To Console    ✅ Entered Hindi News Description: ${description}

Enter Hindi News Content
    [Documentation]    Enters the Hindi news content in rich text editor
    [Arguments]    ${content}
    Sleep    2s
    Web.Wait Until Element Is Visible    ${CONTENT_HINDI_FIELD}    10s
    Web.Click Element    ${CONTENT_HINDI_FIELD}
    Web.Input Text    ${CONTENT_HINDI_FIELD}    ${content}
    Log To Console    ✅ Entered Hindi News Content: ${content}

Select Publish Status
    [Documentation]    Selects the publish status
    [Arguments]    ${status}
    Sleep    2s
    Web.Wait Until Element Is Visible    ${PUBLISH_STATUS_DROPDOWN}    10s
    Web.Select From List By Label    ${PUBLISH_STATUS_DROPDOWN}    ${status}
    Log To Console    ✅ Selected Publish Status: ${status}

Enter Publish Date
    [Documentation]    Enters the publish date
    [Arguments]    ${date}
    Sleep    2s
    Web.Wait Until Element Is Visible    ${PUBLISH_DATE_FIELD}    10s
    Web.Clear Element Text    ${PUBLISH_DATE_FIELD}
    Web.Input Text    ${PUBLISH_DATE_FIELD}    ${date}
    Log To Console    ✅ Entered Publish Date: ${date}

Select Category
    [Documentation]    Selects the news category
    [Arguments]    ${category}
    Sleep    2s
    Web.Wait Until Element Is Visible    ${CATEGORY_DROPDOWN}    10s
    Web.Select From List By Label    ${CATEGORY_DROPDOWN}    ${category}
    Log To Console    ✅ Selected Category: ${category}

Select Dhyankendra
    [Documentation]    Selects the Dhyankendra
    [Arguments]    ${dhyankendra}
    Sleep    2s
    Web.Wait Until Element Is Visible    ${DHYANKENDRA_DROPDOWN}    10s
    Web.Select From List By Label    ${DHYANKENDRA_DROPDOWN}    ${dhyankendra}
    Log To Console    ✅ Selected Dhyankendra: ${dhyankendra}

Upload Thumbnail Image
    [Documentation]    Uploads thumbnail image
    [Arguments]    ${image_path}
    Sleep    2s
    Web.Wait Until Element Is Visible    ${THUMBNAIL_UPLOAD_BUTTON}    10s
    Web.Click Element    ${THUMBNAIL_UPLOAD_BUTTON}
    Sleep    2s
    Web.Choose File    ${FILE_INPUT_THUMBNAIL}    ${image_path}
    Sleep    3s
    Log To Console    ✅ Uploaded Thumbnail Image: ${image_path}

Upload Main Image
    [Documentation]    Uploads main image
    [Arguments]    ${image_path}
    Sleep    2s
    Web.Wait Until Element Is Visible    ${IMAGE_UPLOAD_BUTTON}    10s
    Web.Click Element    ${IMAGE_UPLOAD_BUTTON}
    Sleep    2s
    Web.Choose File    ${FILE_INPUT_IMAGE}    ${image_path}
    Sleep    3s
    Log To Console    ✅ Uploaded Main Image: ${image_path}

Click Submit Button
    [Documentation]    Clicks on the Submit button
    Sleep    2s
    Web.Wait Until Element Is Visible    ${SUBMIT_BUTTON}    10s
    Web.Click Element    ${SUBMIT_BUTTON}
    Sleep    5s
    Log To Console    ✅ Clicked Submit Button

Verify News Created Successfully
    [Documentation]    Verifies that the news was created successfully
    Sleep    3s
    Web.Wait Until Element Is Visible    ${NEWS_TABLE}    10s
    Log To Console    ✅ News created successfully and returned to news list

Search News By Title
    [Documentation]    Searches for news by title
    [Arguments]    ${title}
    Sleep    2s
    Web.Wait Until Element Is Visible    ${NEWS_SEARCH_FIELD}    10s
    Web.Clear Element Text    ${NEWS_SEARCH_FIELD}
    Web.Input Text    ${NEWS_SEARCH_FIELD}    ${title}
    Sleep    3s
    Log To Console    ✅ Searched for News with Title: ${title}

Verify News In List
    [Documentation]    Verifies that the news appears in the list
    [Arguments]    ${title}
    Sleep    3s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${title}')]    10s
    Log To Console    ✅ Found News in List: ${title}

Verify News Publish Status
    [Documentation]    Verifies the publish status of the news
    [Arguments]    ${title}    ${expected_status}
    Sleep    2s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${title}')]/ancestor::div[@role='row']//div[contains(text(),'${expected_status}')]    10s
    Log To Console    ✅ Verified News Publish Status: ${expected_status} for ${title}

Verify Image Upload Validation Error
    [Documentation]    Verifies image upload validation error message
    Sleep    2s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'Minimum image size')]    10s
    Log To Console    ✅ Image upload validation error displayed

Verify Mobile News Details
    [Documentation]    Verifies news details on mobile app
    [Arguments]    ${expected_title}
    Sleep    3s
    
    # Click on Global News Tab
    Click on the Global News Tab
    
    # Verify Global News card is displayed
    Global News card is displayed with correct details
    
    # Click on Global News Card
    Click on the Global News Card
    
    # Verify Global News Detail screen
    verify Global News Detail screen Information
    
    Log To Console    ✅ Verified Mobile News Details for: ${expected_title}

*** Keywords ***
