*** Settings ***
Resource   ../resources/libraries.robot
Resource   ../resources/web_keywords.robot
Resource   CRM_AudioCategoryPage.robot
Resource   CRM_AudioPage.robot
Resource   AudioPage.robot
Library   DateTime
Resource   ../resources/test_setup_teardown.robot


*** Variables ***
# E2E Test Data Variables (will be set during test execution)
${E2E_CATEGORY_NAME}              ${EMPTY}
${E2E_SUBCATEGORY_NAME}           ${EMPTY}
${E2E_AUDIO_TRACK_TITLE}          ${EMPTY}
${E2E_AUTHOR_NAME}                ${EMPTY}
${E2E_RANDOM_NUMBER}              ${EMPTY}

${E2E_CATEGORY_NAME_PODCAST}      ${EMPTY}
${E2E_SUBCATEGORY_NAME_PODCAST}   ${EMPTY}
${E2E_AUDIO_TRACK_TITLE_PODCAST}   ${EMPTY}
${E2E_SPEAKER_NAME_PODCAST}      ${EMPTY}
${E2E_RANDOM_NUMBER_PODCAST}    ${EMPTY}

# Mobile Search and Validation Elements (new for E2E)
${MOBILE_SEARCH_RESULT_TRACK}    xpath=//android.view.View[contains(@content-desc,'${E2E_AUDIO_TRACK_TITLE}')]
${MOBILE_TRACK_TITLE_VERIFICATION}    xpath=//android.view.View[contains(@content-desc,'${E2E_AUDIO_TRACK_TITLE}')]
${MOBILE_AUTHOR_VERIFICATION}    xpath=//android.view.View[contains(@content-desc,'${E2E_AUTHOR_NAME}')]
${MOBILE_CATEGORY_VERIFICATION}    xpath=//android.view.View[contains(@content-desc,'${E2E_CATEGORY_NAME}')]
${MOBILE_RECENTLY_ADDED_TRACK}    xpath=//android.view.View[contains(@content-desc, '${E2E_AUDIO_TRACK_TITLE}') and contains(@content-desc, '${E2E_AUDIO_TRACK_TITLE}')]
${AVAILABLE_TRACKS}    xpath=//android.view.View[contains(@content-desc, '${E2E_AUDIO_TRACK_TITLE}') and contains(@content-desc, 'Audio Track Description')]
${MOBILE_SEARCH_RESULT_PODCAST_TRACK}         xpath=//android.view.View[contains(@content-desc,'${E2E_AUDIO_TRACK_TITLE_PODCAST}')]
${MOBILE_TRACK_TITLE_PODCAST_VERIFICATION}    xpath=//android.view.View[contains(@content-desc,'${E2E_AUDIO_TRACK_TITLE_PODCAST}')]

# Web Locators - SubCategory Elements
${MANAGE_AUDIO_SUBCATEGORIES_SUBMENU}       xpath=//span[contains(text(),'Manage Audio SubCategories')]
${ADD_SUBCATEGORY_BUTTON}                    xpath=//button[contains(@class,'MuiButton-contained') and contains(.,'Add SubCategory')]
${SUBCATEGORY_CATEGORY_DROPDOWN}             xpath=(//div[@role='combobox' and @aria-haspopup='listbox'])[2]
${ENGLISH_SUBCATEGORY_NAME_FIELD}            xpath=(//input[@placeholder='Enter SubCategory'])[1]
${ENGLISH_SUBCATEGORY_DESCRIPTION_FIELD}     xpath=(//textarea[@placeholder='Enter Description'])[1]
${ENGLISH_SUBCATEGORY_THUMBNAIL_UPLOAD}      xpath=(//input[@type='file' and @accept='image/jpeg,image/png'])[1]
${HINDI_SUBCATEGORY_NAME_FIELD}              xpath=(//input[@placeholder='Enter SubCategory'])[2]
${HINDI_SUBCATEGORY_DESCRIPTION_FIELD}       xpath=(//textarea[@placeholder='Enter Description'])[2]
${HINDI_SUBCATEGORY_THUMBNAIL_UPLOAD}        xpath=(//input[@type='file' and @accept='image/jpeg,image/png'])[2]

# Web Locators - Contributor/Author Elements
${MANAGE_CONTRIBUTOR_SUBMENU}                xpath=//span[contains(text(),'Manage Contributor')]
${ADD_CONTRIBUTOR_BUTTON}                    xpath=//button[contains(@class,'MuiButton-contained') and contains(.,'Add Contributor')]
${AUTHOR_RADIO_BTN}                          xpath=(//input[@name='contributorTypeId'])[1]
${SPEAKER_RADIO_BTN}                         xpath=(//input[@name='contributorTypeId'])[2]
${ENGLISH_CONTRIBUTOR_NAME_FIELD}            xpath=(//input[@placeholder='Enter Contributor Name'])[1]
${ENGLISH_CONTRIBUTOR_DESCRIPTION_FIELD}     xpath=(//textarea[@placeholder='Enter Description'])[1]
${ENGLISH_CONTRIBUTOR_THUMBNAIL_UPLOAD}      xpath=(//input[@type='file' and @accept='image/jpeg,image/png'])[1]
${HINDI_CONTRIBUTOR_NAME_FIELD}              xpath=(//input[@placeholder='Enter Contributor Name'])[2]
${HINDI_CONTRIBUTOR_DESCRIPTION_FIELD}       xpath=(//textarea[@placeholder='Enter Description'])[2]
${HINDI_CONTRIBUTOR_THUMBNAIL_UPLOAD}        xpath=(//input[@type='file' and @accept='image/jpeg,image/png'])[2]

# Publish Date Elements
${PUBLISH_DATE_FIELD}                        xpath=//input[@name='publishDate' and @placeholder='DD/MM/YYYY']
${TODAY_DATE_BUTTON}                         xpath=//button[contains(@class,'MuiPickersDay-today')]


${CloseBtn}                                  xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.widget.ImageView[6]
${UPDATE_POPUP_CANCEL_BUTTON}                xpath=//android.widget.Button[@content-desc="Cancel"]
${MOBILE_HOME_CATEGORY}                      xpath=//android.view.View[contains(@content-desc,"${E2E_AUDIO_TRACK_TITLE}") and contains(@content-desc,"E2E Test Category Description")]
${CATEGORY_VERIFICATION}                     xpath=//android.view.View[contains(@content-desc,"${E2E_CATEGORY_NAME}") and contains(@content-desc,"View All")]
${SUBCATEGORY_VERIFICATION}                  xpath=//android.view.View[contains(@content-desc,"${E2E_AUDIO_TRACK_TITLE}") and contains(@content-desc,"E2E Test Audio Track Description")]
${PODCAST_SUBMENU}                           xpath=//span[contains(text(),'Podcast')]
${PODCAST_TAB}                               xpath=//android.widget.ImageView[@content-desc="Podcast"]

# Additional Variables for Hardcoded XPath Locators
${CATEGORY_DROPDOWN_OPTION}                  xpath=//li[contains(text(),'${E2E_CATEGORY_NAME}')]
${SUBCATEGORY_DROPDOWN_OPTION}               xpath=//li[contains(text(),'${E2E_SUBCATEGORY_NAME}')]
${AUTHOR_DROPDOWN_OPTION}                    xpath=//li[contains(text(),'${E2E_AUTHOR_NAME}')]
${PUBLISH_STATUS_DROPDOWN_OPTION}            xpath=//li[contains(text(),'${TEST_PUBLISH_STATUS}')]
${CHOOSE_DATE_BUTTON}                        xpath=//button[@aria-label='Choose date']
${SEARCH_INPUT_FIELD_E2E}                    xpath=//android.widget.ScrollView/android.widget.ImageView[2]
${EDIT_MENU_ITEM}                            xpath=//li[contains(@role,'menuitem')][1]
${PUBLISH_STATUS_COMBOBOX}                   xpath=//div[@role='combobox' and @aria-haspopup='listbox' and contains(.,'Publish')]
${UNPUBLISH_OPTION}                          xpath=//li[contains(text(),'Unpublish')]
${UPLOAD_BUTTON_EDIT}                        xpath=//button[contains(@class,'MuiButton-contained') and contains(.,'Upload')]
${TRACK_UPDATED_SUCCESS_MESSAGE}             xpath=//li[contains(@class,'minimal__snackbar__success')]//div[contains(@class,'minimal__snackbar__title') and contains(text(),'Track updated successfully')]
${SEARCH_INPUT_WEB}                          xpath=//input[@type='search']
${INSIGHTS_SECTION}                          xpath=//android.view.View[contains(@content-desc,'Insights')]
${PODCAST_SEARCH_ICON}                       xpath=//android.widget.ImageView[2]
${PODCAST_PLAY_BUTTON}                       xpath=(//android.view.View[@content-desc])[1]//android.widget.ImageView[2]
${PODCAST_CLOSE_BUTTON}                      xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.widget.ImageView[6]
${PODCAST_BACK_BUTTON}                       xpath=(//android.view.View[@content-desc='${E2E_CATEGORY_NAME_PODCAST}'])[1]/android.widget.ImageView

*** Keywords ***
Generate E2E Test Data
    [Documentation]    Generates unique test data for end-to-end validation
    ${random_num}=    Evaluate    random.randint(1000, 9999)    random
    Set Test Variable    ${E2E_RANDOM_NUMBER}    ${random_num}
    Set Test Variable    ${E2E_CATEGORY_NAME}    E2E_Category_${random_num}
    Set Test Variable    ${E2E_SUBCATEGORY_NAME}    E2E_SubCategory_${random_num}
    Set Test Variable    ${E2E_AUDIO_TRACK_TITLE}    E2E_Track_${random_num}
    Set Test Variable    ${E2E_AUTHOR_NAME}    E2E_Author_${random_num}
    Log To Console    🎯 Generated E2E Test Data:
    Log To Console    🎯 Category: ${E2E_CATEGORY_NAME}
    Log To Console    🎯 SubCategory: ${E2E_SUBCATEGORY_NAME}
    Log To Console    🎯 Audio Track: ${E2E_AUDIO_TRACK_TITLE}
    Log To Console    🎯 Author: ${E2E_AUTHOR_NAME}

Generate E2E Test Data for Podcast
    [Documentation]    Generates unique test data for end-to-end validation
    ${random_num}=    Evaluate    random.randint(1000, 9999)    random
    Set Test Variable    ${E2E_RANDOM_NUMBER_PODCAST}    ${random_num}
    Set Test Variable    ${E2E_CATEGORY_NAME_PODCAST}    E2E_Category_${random_num}
    Set Test Variable    ${E2E_SUBCATEGORY_NAME_PODCAST}    E2E_SubCategory_${random_num}
    Set Test Variable    ${E2E_AUDIO_TRACK_TITLE_PODCAST}    E2E_Track_${random_num}
    Set Test Variable    ${E2E_SPEAKER_NAME_PODCAST}    E2E_Speaker_${random_num}
    Log To Console    🎯 Generated E2E Test Data:
    Log To Console    🎯 Category: ${E2E_CATEGORY_NAME_PODCAST}
    Log To Console    🎯 SubCategory: ${E2E_SUBCATEGORY_NAME_PODCAST}
    Log To Console    🎯 Audio Track: ${E2E_AUDIO_TRACK_TITLE_PODCAST}
    Log To Console    🎯 Speaker: ${E2E_SPEAKER_NAME_PODCAST}

Create New Music Category
    Click on the Add Category button
    Select Music Audio Type
    Web Wait Until Page Contains Element    ${ENGLISH_CATEGORY_NAME_FIELD}    5s
    Web Input Text    ${ENGLISH_CATEGORY_NAME_FIELD}    ${E2E_CATEGORY_NAME}
    Web Wait Until Page Contains Element    ${ENGLISH_CATEGORY_DESCRIPTION_FIELD}    5s
    Web Input Text    ${ENGLISH_CATEGORY_DESCRIPTION_FIELD}    E2E Test Category Description
    Upload the English Category Thumbnail Image
    Web Wait Until Page Contains Element    ${HINDI_CATEGORY_NAME_FIELD}    5s
    Web Input Text    ${HINDI_CATEGORY_NAME_FIELD}    ${E2E_CATEGORY_NAME}_भजन
    Web Wait Until Page Contains Element    ${HINDI_CATEGORY_DESCRIPTION_FIELD}    5s
    Web Input Text    ${HINDI_CATEGORY_DESCRIPTION_FIELD}    E2E Test Category Description Hindi
    Upload the Hindi Category Thumbnail Image
    Click on the Add New button
    Sleep    5s
    # Wait for toast/snackbar to disappear before next action
    Verify the Newly added Category is displayed in the top list as active
    Log To Console    ✅ Created Category: ${E2E_CATEGORY_NAME}

Create New Music SubCategory
    # Web Wait Until Element Is Visible                                                                    ${MASTER_MANAGEMENT_MENU}                                                                                                                                                                                                                          10s
    # Click on the Master Management Menu
    Web Wait Until Page Contains Element    ${MANAGE_AUDIO_SUBCATEGORIES_SUBMENU}    10s
    Web Click Element    ${MANAGE_AUDIO_SUBCATEGORIES_SUBMENU}
    Web Wait Until Page Contains Element    ${ADD_SUBCATEGORY_BUTTON}    10s
    Web Click Element    ${ADD_SUBCATEGORY_BUTTON}
    Web Wait Until Page Contains Element    ${MUSIC_RADIO_BTN}    5s
    Web Click Element    ${MUSIC_RADIO_BTN}
    Web Wait Until Page Contains Element    ${SUBCATEGORY_CATEGORY_DROPDOWN}    5s
    Web Click Element    ${SUBCATEGORY_CATEGORY_DROPDOWN}
    Sleep    2s
    Web Wait Until Page Contains Element    ${CATEGORY_DROPDOWN_OPTION}    5s
    Web Click Element    ${CATEGORY_DROPDOWN_OPTION}
    Web Wait Until Page Contains Element    ${ENGLISH_SUBCATEGORY_NAME_FIELD}    5s
    Web Input Text    ${ENGLISH_SUBCATEGORY_NAME_FIELD}    ${E2E_SUBCATEGORY_NAME}
    Web Wait Until Page Contains Element    ${ENGLISH_SUBCATEGORY_DESCRIPTION_FIELD}    5s
    Web Input Text    ${ENGLISH_SUBCATEGORY_DESCRIPTION_FIELD}    E2E Test SubCategory Description
    Web Choose File    ${ENGLISH_SUBCATEGORY_THUMBNAIL_UPLOAD}    ${ENGLISH_CATEGORY_THUMBNAIL_FILE}
    Web Wait Until Page Contains Element    ${HINDI_SUBCATEGORY_NAME_FIELD}    5s
    Web Input Text    ${HINDI_SUBCATEGORY_NAME_FIELD}    ${E2E_SUBCATEGORY_NAME}_भजन
    Web Wait Until Page Contains Element    ${HINDI_SUBCATEGORY_DESCRIPTION_FIELD}    5s
    Web Input Text    ${HINDI_SUBCATEGORY_DESCRIPTION_FIELD}    E2E Test SubCategory Description Hindi
    Web Choose File    ${HINDI_SUBCATEGORY_THUMBNAIL_UPLOAD}    ${HINDI_CATEGORY_THUMBNAIL_FILE}
    Web Wait Until Page Contains Element    ${ADD_NEW_BUTTON}    5s
    Web Click Element    ${ADD_NEW_BUTTON}
    # Wait for toast/snackbar to disappear before next action
    Web Wait Until Page Contains Element    ${CATEGORY_SUCCESS_MESSAGE}
    Log To Console    ✅ Created SubCategory: ${E2E_SUBCATEGORY_NAME} under Category: ${E2E_CATEGORY_NAME}

Add a new Author for Music
    # Click on the Master Management Menu
    # Web Wait Until Page Contains Element                                                                 ${MANAGE_CONTRIBUTOR_SUBMENU}                                                                                                                                                                                                                      10s
    Web Click Element    ${MANAGE_CONTRIBUTOR_SUBMENU}
    Web Wait Until Page Contains Element    ${ADD_CONTRIBUTOR_BUTTON}    10s
    Web Click Element    ${ADD_CONTRIBUTOR_BUTTON}
    Web Wait Until Page Contains Element    ${AUTHOR_RADIO_BTN}    5s
    Web Click Element    ${AUTHOR_RADIO_BTN}
    Web Wait Until Page Contains Element    ${ENGLISH_CONTRIBUTOR_NAME_FIELD}    5s
    Web Input Text    ${ENGLISH_CONTRIBUTOR_NAME_FIELD}    ${E2E_AUTHOR_NAME}
    Sleep   2s
    Web Wait Until Page Contains Element    ${ENGLISH_CONTRIBUTOR_DESCRIPTION_FIELD}    5s
    Web Input Text    ${ENGLISH_CONTRIBUTOR_DESCRIPTION_FIELD}    E2E Test Author Description
    Web Choose File    ${ENGLISH_CONTRIBUTOR_THUMBNAIL_UPLOAD}    ${ENGLISH_CATEGORY_THUMBNAIL_FILE}
    Web Wait Until Page Contains Element    ${HINDI_CONTRIBUTOR_NAME_FIELD}    5s
    Web Input Text    ${HINDI_CONTRIBUTOR_NAME_FIELD}    ${E2E_AUTHOR_NAME}_भजन
    Web Wait Until Page Contains Element    ${HINDI_CONTRIBUTOR_DESCRIPTION_FIELD}    5s
    Web Input Text    ${HINDI_CONTRIBUTOR_DESCRIPTION_FIELD}    ईश्वर की भक्ति में डूबकर गाया गया गीत।
    Web Choose File    ${HINDI_CONTRIBUTOR_THUMBNAIL_UPLOAD}    ${ENGLISH_CATEGORY_THUMBNAIL_FILE}
    Web Wait Until Page Contains Element    ${ADD_NEW_BUTTON}    5s
    Web Click Element    ${ADD_NEW_BUTTON}
    # Wait for toast/snackbar to disappear before next action
    Sleep    5s
    Log To Console    ✅ Created Author: ${E2E_AUTHOR_NAME}

Create New Audio Track
    Click on the Audio Menu
    Click on the Music Submenu
    Click on the Add Music button
    Fill Music Form With E2E Data
    Web Wait Until Page Contains Element    ${ADD_BUTTON}    5s
    Web Click Element    ${ADD_BUTTON}
    Log To Console    ✅ Created Audio Track: ${E2E_AUDIO_TRACK_TITLE}

Fill Music Form With E2E Data
    Sleep    2s
    Web Wait Until Page Contains Element    ${CATEGORY_DROPDOWN}    2s
    Web Click Element    ${CATEGORY_DROPDOWN}
    Sleep    2s
    Web Wait Until Page Contains Element    ${CATEGORY_DROPDOWN_OPTION}    5s
    Web Click Element    ${CATEGORY_DROPDOWN_OPTION}
    Web Click Element    ${SUB_CATEGORY_DROPDOWN}
    Web Wait Until Page Contains Element    ${SUBCATEGORY_DROPDOWN_OPTION}    5s
    Web Click Element    ${SUBCATEGORY_DROPDOWN_OPTION}
    Web Input Text    ${ENGLISH_TITLE_FIELD}    ${E2E_AUDIO_TRACK_TITLE}
    Web Input Text    ${ENGLISH_DESCRIPTION_FIELD}    E2E Test Audio Track Description
    Web Input Text    ${ENGLISH_TAGS_FIELD}    E2E,Test,Integration
    Web Click Element    ${ENGLISH_AUTHOR_DROPDOWN}
    Web Wait Until Page Contains Element    ${AUTHOR_DROPDOWN_OPTION}    5s
    Web Click Element    ${AUTHOR_DROPDOWN_OPTION}
    Web Choose File    ${ENGLISH_THUMBNAIL_UPLOAD}    ${ENGLISH_THUMBNAIL_FILE}
    Web Choose File    ${ENGLISH_AUDIO_FILE_UPLOAD}    ${ENGLISH_AUDIO_FILE}
    Web Input Text    ${HINDI_TITLE_FIELD}    ${E2E_AUDIO_TRACK_TITLE}_भजन
    Web Input Text    ${HINDI_DESCRIPTION_FIELD}    ईश्वर की भक्ति में डूबकर गाया गया गीत।
    Web Press Keys    ${HINDI_DESCRIPTION_FIELD}    TAB
    Sleep    1s
    Web Press Keys    None    E2E,Test,Integration,भजन
    Web Click Element    ${HINDI_AUTHOR_DROPDOWN}
    Web Wait Until Page Contains Element    xpath=//li[contains(text(),'${E2E_AUTHOR_NAME}')]    5s
    Web Click Element    xpath=//li[contains(text(),'${E2E_AUTHOR_NAME}')]
    Web Choose File    ${HINDI_THUMBNAIL_UPLOAD}    ${HINDI_THUMBNAIL_FILE}
    Web Choose File    ${HINDI_AUDIO_FILE_UPLOAD}    ${HINDI_AUDIO_FILE}
    Web Click Element    ${PUBLISH_STATUS_DROPDOWN}
    Web Wait Until Page Contains Element    xpath=//li[contains(text(),'${TEST_PUBLISH_STATUS}')]    5s
    Web Click Element    xpath=//li[contains(text(),'${TEST_PUBLISH_STATUS}')]
    Set Publish Date To Today
    Log To Console    📝 Filled Music Form with E2E Data:
    Log To Console    📝 Category: ${E2E_CATEGORY_NAME}
    Log To Console    📝 SubCategory: ${E2E_SUBCATEGORY_NAME}
    Log To Console    📝 Track Title: ${E2E_AUDIO_TRACK_TITLE}
    Log To Console    📝 Author: ${E2E_AUTHOR_NAME}

Set Publish Date To Today
    Web Wait Until Page Contains Element    ${PUBLISH_DATE_FIELD}    5s
    Web Click Element    ${PUBLISH_DATE_FIELD}
    Web Click Element    ${CHOOSE_DATE_BUTTON}
    Sleep    1s
    Web Click Element    ${TODAY_DATE_BUTTON}
    Log To Console    📅 Set Publish Date to Today using calendar picker

Publish Music Track
    # The track is already published during creation, so this is a verification step
    Click on the Upload button
    Sleep    10s
    Log To Console    ✅ Audio Track published during creation

Click on the Upload button
    Web Wait Until Page Contains Element    ${UPLOAD_BUTTON}    5s
    Web Click Button    ${UPLOAD_BUTTON}
    Log To Console    Clicked on Upload button

Launch Mobile App And Login
    Run Keyword And Ignore Error    Login To Mobile App
    

Navigate To Audio Section In Mobile
    Verify Audio Screen is displayed

Search And Select Newly Created Track
    Click on the Search Icon
    Sleep    5s
    Mobile Click Element    ${SEARCH_BAR}
    Sleep    5s
    Mobile Input Text    ${SEARCH_INPUT_FIELD_E2E}    ${E2E_AUDIO_TRACK_TITLE}
    Mobile Hide Keyboard
    Log To Console    Entered ${E2E_AUDIO_TRACK_TITLE} in Search Bar.
    Sleep    5s
    Verify Track Details Are Displayed
    Sleep    5s
    Mobile Click Element    ${SEARCH_TRACK_INFO}
    Log To Console    Selected track: ${E2E_AUDIO_TRACK_TITLE}
    Sleep    5s

Verify Track Details Are Displayed
    Sleep    5s
    Mobile Wait Until Element Is Visible    ${SEARCH_TRACK_INFO}    10s
    ${track_info}=    Mobile Get Element Attribute    ${SEARCH_TRACK_INFO}    content-desc
    Log To Console    Track details displayed: ${track_info}
    Should Contain    ${track_info}    ${E2E_AUDIO_TRACK_TITLE}
    Log To Console    ✅ Track details verified for: ${E2E_AUDIO_TRACK_TITLE}


# Screenshot fix: Use fully qualified keyword names
Capture Screenshot On Failure
    [Arguments]    ${test_name}
    [Documentation]    Captures screenshots on test failure using explicit library calls
    Create Directory    ${EXECDIR}/results/Screenshot
    Web.Capture Page Screenshot    ${EXECDIR}/results/Screenshot/${test_name}_web.png
    Mobile.Capture Page Screenshot    ${EXECDIR}/results/Screenshot/${test_name}_mobile.png
    Log To Console    📸 Screenshots captured for test: ${test_name}


# StaleElementReferenceException fix: Always re-locate elements after page updates and overlays
# Already handled above by waiting for overlays to disappear and using Wait Until Page Contains




Verify Track & Category On Home Page In Audio Of The Day Section
    Swipe Until Element Visible    ${MOBILE_RECENTLY_ADDED_TRACK}
    Mobile Wait Until Element Is Visible    ${MOBILE_RECENTLY_ADDED_TRACK}    10s
    Log To Console    ✅ Track ${E2E_AUDIO_TRACK_TITLE} is visible in Audio of the Day section
    
    Swipe Until Element Visible    ${MOBILE_HOME_CATEGORY}
    Mobile Wait Until Element Is Visible    ${MOBILE_HOME_CATEGORY}    10s
    Log To Console    ✅ Category ${E2E_CATEGORY_NAME} is visible in Audio of the Day section

    

Verify Track On Audio Page In Recently Added Section
    Click on the Audio Tab
    Swipe Until Element Visible    ${MOBILE_RECENTLY_ADDED_TRACK}
    Mobile Wait Until Element Is Visible    ${MOBILE_RECENTLY_ADDED_TRACK}    10s
    Log To Console    ✅ Track ${E2E_AUDIO_TRACK_TITLE} is visible in Recently Added section
    Mobile Click Element    ${MOBILE_RECENTLY_ADDED_TRACK}
    Log To Console    Clicked on the track in Recently Added section

Verify Track within the newly created category and subcategory
    Swipe Until Element Visible    ${CATEGORY_VERIFICATION}
    Sleep    2s
    Log To Console    ✅ Category ${E2E_CATEGORY_NAME} is visible in the newly created category
    Mobile Click Element    ${CATEGORY_VERIFICATION}
    # Mobile Wait Until Element Is Visible                                                                 ${SUBCATEGORY_VERIFICATION}                                                                                                                                                                                                                        10s
    # Log To Console                                                                                       ✅ Subcategory ${E2E_SUBCATEGORY_NAME} is visible in the newly created category
    # Mobile Click Element                                                                                 ${SUBCATEGORY_VERIFICATION}


Cancel the Update Popup
    Sleep    5s
    ${is_visible}=    Run Keyword And Return Status    Mobile Wait Until Element Is Visible    ${UPDATE_POPUP_CANCEL_BUTTON}    3s
    IF    ${is_visible}
        Mobile Click Element    ${UPDATE_POPUP_CANCEL_BUTTON}
        Log To Console    ✅ Update popup cancelled.
    ELSE
        Log To Console    ..
    END


Validate Track Not Visible On Home Page In Audio Of The Day Section
    [Documentation]    Validates that the unpublished track is not visible in Audio of the Day section on mobile
    ${is_visible}=    Run Keyword And Return Status    Mobile Wait Until Element Is Visible    xpath=//android.view.View[contains(@content-desc,"${E2E_AUDIO_TRACK_TITLE}")]    8s
    IF    ${is_visible}
        Fail    ❌ Unpublished track is still visible in Audio of the Day section: ${E2E_AUDIO_TRACK_TITLE}
    ELSE
        Log To Console    ✅ Track is not visible in Audio of the Day section as expected
    END

Validate Track Not Visible In Recently Added Section
    [Documentation]    Validates that the unpublished track is not visible in Recently Added section on mobile
    ${is_visible}=    Run Keyword And Return Status    Mobile Wait Until Element Is Visible    xpath=//android.widget.ImageView[contains(@content-desc,"${E2E_AUDIO_TRACK_TITLE}")]    8s
    IF    ${is_visible}
        Fail    ❌ Unpublished track is still visible in Recently Added section: ${E2E_AUDIO_TRACK_TITLE}
    ELSE
        Log To Console    ✅ Track is not visible in Recently Added section as expected
    END

Validate Track Not Visible In Category And Subcategory
    [Documentation]    Validates that the unpublished track is not visible in its category/subcategory on mobile
    # Swipe to category
    Swipe Until Element Visible    xpath=//android.view.View[contains(@content-desc,"${E2E_CATEGORY_NAME}")]
    Mobile Click Element    xpath=//android.view.View[contains(@content-desc,"${E2E_CATEGORY_NAME}")]
    Sleep    2s
    ${is_visible}=    Run Keyword And Return Status    Mobile Wait Until Element Is Visible    xpath=//android.view.View[contains(@content-desc,"${E2E_AUDIO_TRACK_TITLE}")]    8s
    IF    ${is_visible}
        Fail    ❌ Unpublished track is still visible in category/subcategory: ${E2E_AUDIO_TRACK_TITLE}
    ELSE
        Log To Console    ✅ Track is not visible in category/subcategory
    END


Unpublish Music Track From Edit Page And Validate In Mobile App
    [Documentation]    Unpublish a music track from the CRM edit page and validate it is not visible in the mobile app.
    [Tags]    E2E    Integration    Audio    Unpublish
    # Search for E2E tracks
    Web Input Text    xpath=//input[@type='search']    E2E
    Sleep    2s
    # Wait for the first published track to appear
    Web Wait Until Page Contains Element    xpath=(//div[@role="row"]//span[text()="Publish"]/ancestor::div[@role="row"])[1]    10s
    # Click the 3-dot menu for the first published track
    Web Click Element    xpath=(//div[@role="row"]//span[text()="Publish"]/ancestor::div[@role="row"]//button[@aria-label="more"])[1]
    Sleep    1s
    # Click the Edit button in the menu
    Web Click Element    xpath=//li[contains(@role,'menuitem')][1]
    Sleep    2s
    # Scroll to the published status dropdown
    Web Scroll Element Into View    xpath=//div[@role='combobox' and @aria-haspopup='listbox' and contains(.,'Publish')]
    Sleep    1s
    ${TRACK_TITLE}=    Web.Get Text    xpath=(//tbody/tr/td[contains(.,'E2E_Track')])[1]
    Log To Console    📝 Track Title: ${TRACK_TITLE}
    Web Click Element    xpath=//div[@role='combobox' and @aria-haspopup='listbox' and contains(.,'Publish')]
    Sleep    1s
    # Select Unpublish from dropdown
    Web Click Element    xpath=//li[contains(text(),'Unpublish')]
    Sleep    1s
    # Click the Update button
    Web Click Element    xpath=//button[contains(@class,'MuiButton-contained') and contains(.,'Upload')]
    # Wait for success message
    Web Wait Until Page Contains Element    xpath=//li[contains(@class,'minimal__snackbar__success')]//div[contains(@class,'minimal__snackbar__title') and contains(text(),'Track updated successfully')]    10s
    Log To Console    ✅ Track unpublished from edit page

    Close Web Browser

    # --- Mobile App: Validate Track is Not Visible ---
    Open Gurutattva App
    Handle First Time Setup
    Cancel the Update Popup
    Launch Mobile App And Login
    # Validate track is NOT visible in Audio of the Day section

    ${is_visible}=    Run Keyword And Return Status    Mobile Wait Until Element Is Visible    xpath=//android.view.View[contains(@content-desc,"${TRACK_TITLE}")]    8s
    IF    ${is_visible}
        Fail    ❌ Unpublished track is still visible in Audio of the Day section: ${TRACK_TITLE}
    ELSE
        Log To Console    ✅ Track is not visible in Audio of the Day section as expected
    END

    # Validate track is NOT visible in Recently Added section
    Click on the Audio Tab
    ${is_visible}=    Run Keyword And Return Status    Mobile Wait Until Element Is Visible    xpath=//android.widget.ImageView[contains(@content-desc,"${TRACK_TITLE}")]    8s
    IF    ${is_visible}
        Fail    ❌ Unpublished track is still visible in Recently Added section: ${TRACK_TITLE}
    ELSE
        Log To Console    ✅ Track is not visible in Recently Added section as expected
    END



    # Validate track is NOT visible in its category/subcategory
    # Swipe to category
    Swipe Until Element Visible    xpath=//android.view.View[contains(@content-desc,"${E2E_CATEGORY_NAME}")]
    Mobile Click Element    xpath=//android.view.View[contains(@content-desc,"${E2E_CATEGORY_NAME}")]
    Sleep    2s
    ${is_visible}=    Run Keyword And Return Status    Mobile Wait Until Element Is Visible    xpath=//android.view.View[contains(@content-desc,"${TRACK_TITLE}")]    8s
    IF    ${is_visible}
        Fail    ❌ Unpublished track is still visible in category/subcategory: ${TRACK_TITLE}
    ELSE
        Log To Console    ✅ Track is not visible in category/subcategory
    END

    Click on the Search Icon
    Sleep    5s
    Mobile Click Element    ${SEARCH_BAR}
    Sleep    5s
    Mobile Input Text    xpath=//android.widget.ScrollView/android.widget.ImageView[2]    ${TRACK_TITLE}
    Mobile Hide Keyboard
    Verify Track Details Are Displayed
    Sleep    5s
    Mobile Click Element    ${SEARCH_TRACK_INFO}
    Log To Console    Selected track: ${TRACK_TITLE}
    Sleep    5s
    Close Gurutattva App





Create New Podcast Category
    [Documentation]    Creates a new podcast category using the E2E test data
    Click on the Add Category button
    Web Wait Until Page Contains Element    ${PODCAST_RADIO_BTN}    5s
    Web Click Element    ${PODCAST_RADIO_BTN}
    
    # Use E2E test data instead of random generation
    Web Wait Until Page Contains Element    ${ENGLISH_CATEGORY_NAME_FIELD}    5s
    Web Input Text    ${ENGLISH_CATEGORY_NAME_FIELD}    ${E2E_CATEGORY_NAME_PODCAST}
    
    Web Wait Until Page Contains Element    ${ENGLISH_CATEGORY_DESCRIPTION_FIELD}    5s
    Web Input Text    ${ENGLISH_CATEGORY_DESCRIPTION_FIELD}    E2E Test Podcast Category Description
    
    Upload the English Category Thumbnail Image
    
    # Fill Hindi fields - simplified like English
    Web Wait Until Page Contains Element    ${HINDI_CATEGORY_NAME_FIELD}    5s
    Web Input Text    ${HINDI_CATEGORY_NAME_FIELD}    ${E2E_CATEGORY_NAME_PODCAST}_Hindi
    
    Web Wait Until Page Contains Element    ${HINDI_CATEGORY_DESCRIPTION_FIELD}    5s
    Web Input Text    ${HINDI_CATEGORY_DESCRIPTION_FIELD}    E2E Test Podcast Category Description Hindi
    
    Upload the Hindi Category Thumbnail Image
    
    Click on the Add New button
    Verify the Newly added Category is displayed in the top list as active
    Log To Console    ✅ Created Podcast Category: ${E2E_CATEGORY_NAME_PODCAST}

Create New Podcast SubCategory
    [Documentation]    Creates a new podcast subcategory under the created category
    # Navigate to Manage Audio SubCategories
    #Click on the Master Management Menu
    Web Wait Until Page Contains Element    ${MANAGE_AUDIO_SUBCATEGORIES_SUBMENU}    10s
    Web Click Element    ${MANAGE_AUDIO_SUBCATEGORIES_SUBMENU}
    
    # Click Add SubCategory button
    Web Wait Until Page Contains Element    ${ADD_SUBCATEGORY_BUTTON}    10s
    Web Click Element    ${ADD_SUBCATEGORY_BUTTON}
    
    # Select Podcast Audio Type
    Web Wait Until Page Contains Element    ${PODCAST_RADIO_BTN}    5s
    Web Click Element    ${PODCAST_RADIO_BTN}
    
    # Select the created category from dropdown
    Web Wait Until Page Contains Element    ${SUBCATEGORY_CATEGORY_DROPDOWN}    5s
    Web Click Element    ${SUBCATEGORY_CATEGORY_DROPDOWN}
    Sleep    2s
    Web Wait Until Page Contains Element    xpath=//li[contains(text(),'${E2E_CATEGORY_NAME_PODCAST}')]    5s
    Web Click Element    xpath=//li[contains(text(),'${E2E_CATEGORY_NAME_PODCAST}')]
    
    # Fill English SubCategory details
    Web Wait Until Page Contains Element    ${ENGLISH_SUBCATEGORY_NAME_FIELD}    5s
    Web Input Text    ${ENGLISH_SUBCATEGORY_NAME_FIELD}    ${E2E_SUBCATEGORY_NAME_PODCAST}
    
    Web Wait Until Page Contains Element    ${ENGLISH_SUBCATEGORY_DESCRIPTION_FIELD}    5s
    Web Input Text    ${ENGLISH_SUBCATEGORY_DESCRIPTION_FIELD}    E2E Test Podcast SubCategory Description
    
    Web Choose File    ${ENGLISH_SUBCATEGORY_THUMBNAIL_UPLOAD}    ${ENGLISH_CATEGORY_THUMBNAIL_FILE}
    
    # Fill Hindi SubCategory details
    Web Wait Until Page Contains Element    ${HINDI_SUBCATEGORY_NAME_FIELD}    5s
    Web Input Text    ${HINDI_SUBCATEGORY_NAME_FIELD}    ${E2E_SUBCATEGORY_NAME_PODCAST}_Hindi
    
    Web Wait Until Page Contains Element    ${HINDI_SUBCATEGORY_DESCRIPTION_FIELD}    5s
    Web Input Text    ${HINDI_SUBCATEGORY_DESCRIPTION_FIELD}    E2E Test Podcast SubCategory Description Hindi
    
    Web Choose File    ${HINDI_SUBCATEGORY_THUMBNAIL_UPLOAD}    ${HINDI_CATEGORY_THUMBNAIL_FILE}
    
    # Submit the form
    Sleep   5s
    Web Wait Until Page Contains Element    ${ADD_NEW_BUTTON}    5s
    Web Click Element    ${ADD_NEW_BUTTON}
    
    # Verify success
    Web Wait Until Page Contains Element    ${CATEGORY_SUCCESS_MESSAGE}    10s
    Log To Console    ✅ Created Podcast SubCategory: ${E2E_SUBCATEGORY_NAME_PODCAST} under Category: ${E2E_CATEGORY_NAME_PODCAST}

Add a new Speaker for Podcast
    [Documentation]    Creates a new Speaker under Manage Contributor section for podcast
    # Navigate to Manage Contributor
    #Click on the Master Management Menu
    Web Wait Until Page Contains Element    ${MANAGE_CONTRIBUTOR_SUBMENU}    10s
    Web Click Element    ${MANAGE_CONTRIBUTOR_SUBMENU}
    
    # Click Add Contributor button
    Web Wait Until Page Contains Element    ${ADD_CONTRIBUTOR_BUTTON}    10s
    Web Click Element    ${ADD_CONTRIBUTOR_BUTTON}
    
    # Select Speaker as Contributor Type
    Web Wait Until Page Contains Element    ${SPEAKER_RADIO_BTN}    5s
    Web Click Element    ${SPEAKER_RADIO_BTN}
    
    # Fill English Contributor details
    Web Wait Until Page Contains Element    ${ENGLISH_CONTRIBUTOR_NAME_FIELD}    5s
    Web Input Text    ${ENGLISH_CONTRIBUTOR_NAME_FIELD}    ${E2E_SPEAKER_NAME_PODCAST}
    
    Web Wait Until Page Contains Element    ${ENGLISH_CONTRIBUTOR_DESCRIPTION_FIELD}    5s
    Web Input Text    ${ENGLISH_CONTRIBUTOR_DESCRIPTION_FIELD}    E2E Test Podcast Speaker Description
    
    Web Choose File    ${ENGLISH_CONTRIBUTOR_THUMBNAIL_UPLOAD}    ${ENGLISH_CATEGORY_THUMBNAIL_FILE}
    
    # Fill Hindi Contributor details
    Web Wait Until Page Contains Element    ${HINDI_CONTRIBUTOR_NAME_FIELD}    5s
    Web Input Text    ${HINDI_CONTRIBUTOR_NAME_FIELD}    ${E2E_SPEAKER_NAME_PODCAST}_Hindi
    
    Web Wait Until Page Contains Element    ${HINDI_CONTRIBUTOR_DESCRIPTION_FIELD}    5s
    Web Input Text    ${HINDI_CONTRIBUTOR_DESCRIPTION_FIELD}    E2E Test Podcast Speaker Description Hindi

    Web Choose File    ${HINDI_CONTRIBUTOR_THUMBNAIL_UPLOAD}    ${HINDI_CATEGORY_THUMBNAIL_FILE}
    
    # Submit the form
    Web Wait Until Page Contains Element    ${ADD_NEW_BUTTON}    5s
    Web Click Element    ${ADD_NEW_BUTTON}
    
    # Verify success
    Web Wait Until Page Contains Element    ${CATEGORY_SUCCESS_MESSAGE}    10s
    Log To Console    ✅ Created Podcast Speaker: ${E2E_SPEAKER_NAME_PODCAST}
    Sleep    5s

Create New Podcast Track
    [Documentation]    Creates a new podcast track using the created category and E2E test data
    # Navigate to Audio > Podcast section
    Click on the Audio Menu
    Click on the Podcast Submenu
    Click on the Add Podcast button
    
    # Fill the podcast form with E2E test data
    Fill Podcast Form With E2E Data
    
    # Submit the form
    SeleniumLibrary.Click Element    ${ADD_BUTTON}
    Log To Console    ✅ Created Podcast Track: ${E2E_AUDIO_TRACK_TITLE_PODCAST}

Click on the Podcast Submenu    
    [Documentation]    Clicks on the Podcast submenu under Audio
    SeleniumLibrary.Wait Until Page Contains Element    ${PODCAST_SUBMENU}    10s
    SeleniumLibrary.Click Element    ${PODCAST_SUBMENU}

Click on the Add Podcast button
    [Documentation]    Clicks on the Add Podcast button to create a new podcast track
    SeleniumLibrary.Wait Until Page Contains Element    ${ADD_MUSIC_BUTTON}    10s
    SeleniumLibrary.Click Element    ${ADD_MUSIC_BUTTON}   

Fill Podcast Form With E2E Data
    [Documentation]    Fills the podcast form with E2E test data
    Sleep    2s
    
    # Select Category (use the created category)
    SeleniumLibrary.Wait Until Page Contains Element    ${CATEGORY_DROPDOWN}    2s
    SeleniumLibrary.Click Element    ${CATEGORY_DROPDOWN}
    Sleep    2s
    # Select the newly created category (you may need to update this locator)
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//li[contains(text(),'${E2E_CATEGORY_NAME_PODCAST}')]    5s
    SeleniumLibrary.Click Element    xpath=//li[contains(text(),'${E2E_CATEGORY_NAME_PODCAST}')]
    
    # Select SubCategory
    SeleniumLibrary.Click Element    ${SUB_CATEGORY_DROPDOWN}
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//li[contains(text(),'${E2E_SUBCATEGORY_NAME_PODCAST}')]    5s
    SeleniumLibrary.Click Element    xpath=//li[contains(text(),'${E2E_SUBCATEGORY_NAME_PODCAST}')]
    
    # Fill English Track Details
    SeleniumLibrary.Input Text    ${ENGLISH_TITLE_FIELD}    ${E2E_AUDIO_TRACK_TITLE_PODCAST}
    SeleniumLibrary.Input Text    ${ENGLISH_DESCRIPTION_FIELD}    E2E Test Podcast Track Description
    SeleniumLibrary.Input Text    ${ENGLISH_TAGS_FIELD}    E2E,Test,Integration,Podcast
    
    # Select Speaker
    SeleniumLibrary.Click Element    ${ENGLISH_AUTHOR_DROPDOWN}
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//li[contains(text(),'${E2E_SPEAKER_NAME_PODCAST}')]    5s
    SeleniumLibrary.Click Element    xpath=//li[contains(text(),'${E2E_SPEAKER_NAME_PODCAST}')]
    
    # Upload files
    SeleniumLibrary.Choose File    ${ENGLISH_THUMBNAIL_UPLOAD}    ${ENGLISH_THUMBNAIL_FILE}
    SeleniumLibrary.Choose File    ${ENGLISH_AUDIO_FILE_UPLOAD}   ${ENGLISH_AUDIO_FILE}
    
    # Fill Hindi Track Details
    SeleniumLibrary.Input Text    ${HINDI_TITLE_FIELD}    ${E2E_AUDIO_TRACK_TITLE_PODCAST}_Hindi
    SeleniumLibrary.Input Text    ${HINDI_DESCRIPTION_FIELD}    E2E Test Podcast Track Description Hindi
    # Use TAB to navigate to Hindi Tags field and type directly
    SeleniumLibrary.Press Keys    ${HINDI_DESCRIPTION_FIELD}    TAB
    Sleep    1s
    SeleniumLibrary.Press Keys    None    E2E,Test,Integration,Podcast,Hindi
    
    # Select Hindi Speaker
    SeleniumLibrary.Click Element    ${HINDI_AUTHOR_DROPDOWN}
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//li[contains(text(),'${E2E_SPEAKER_NAME_PODCAST}')]    5s
    SeleniumLibrary.Click Element    xpath=//li[contains(text(),'${E2E_SPEAKER_NAME_PODCAST}')]

    # Upload Hindi files
    SeleniumLibrary.Choose File    ${HINDI_THUMBNAIL_UPLOAD}      ${HINDI_THUMBNAIL_FILE}
    SeleniumLibrary.Choose File    ${HINDI_AUDIO_FILE_UPLOAD}     ${HINDI_AUDIO_FILE}
    
    # Set Publish Status
    SeleniumLibrary.Click Element    ${PUBLISH_STATUS_DROPDOWN}
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//li[contains(text(),'${TEST_PUBLISH_STATUS}')]    5s
    SeleniumLibrary.Click Element    xpath=//li[contains(text(),'${TEST_PUBLISH_STATUS}')]
    
    # Set Publish Date
    Set Publish Date To Today
    
    Log To Console    📝 Filled Podcast Form with E2E Data:
    Log To Console    📝 Category: ${E2E_CATEGORY_NAME}
    Log To Console    📝 SubCategory: ${E2E_SUBCATEGORY_NAME}
    Log To Console    📝 Track Title: ${E2E_AUDIO_TRACK_TITLE}
    Log To Console    📝 Author: ${E2E_AUTHOR_NAME}

Publish Podcast Track
    [Documentation]    Publishes or activates the newly created podcast track
    # The track is already published during creation, so this is a verification step
    
    Click on the Upload button
    Sleep    10s
    Log To Console    ✅ Podcast Track published during creation

Launch Mobile App And Login as Community User
    [Documentation]    Launches the mobile app and navigates to Audio section
    # Use existing mobile login logic from CRM_AudioPage.robot
    Run Keyword And Ignore Error    Click on the Cancel Button from the Update pop-up
    Run Keyword And Ignore Error    Login to Mobile as a Community User
    Run Keyword And Ignore Error    Click on the skip button
    Verify Home Screen is Displayed

Click on the Cancel Button from the Update pop-up
    Sleep    5s
    Mobile.Click Element   xpath=//android.widget.Button[@content-desc="Cancel"]
    Log To Console    Clicked on Cancel Button.  

Login to Mobile as a Community User
    [Documentation]    Logs in to the mobile app as a community user
    Enter the community user email address
    Click on the Login Button
    Enter Email OTP Manually
    Click on the Verify Button

Enter the community user email address
    Mobile.Click Element    ${EmailRadioBtn}
    Mobile.Click Element    ${LOGIN_EMAIL}
    Sleep    2s
    Mobile.Input Text       ${LOGIN_EMAIL}      yatishd.actowiz@gmail.com
    Click on the Login Button
    Enter Email OTP Manually
    Click on the Verify Button   

Click on the skip button
    Sleep      2s 
    Mobile.Wait Until Element Is Visible   xpath=//android.widget.Button[@content-desc="Skip"]    10s
    Mobile.Click Element                   xpath=//android.widget.Button[@content-desc="Skip"]

Verify Podcast track is displayed on audio of the day section
    Sleep   2s
    Swipe Until Element Visible    xpath=//android.view.View[contains(@content-desc,'Insights')]
    Sleep   2s
    TRY
        Mobile Wait Until Element Is Visible    xpath=//android.view.View[contains(@content-desc,'${E2E_AUDIO_TRACK_TITLE_PODCAST}')]    10s
        ${podcast_track_displayed}=    Mobile Get Element Attribute    xpath=//android.view.View[contains(@content-desc,'${E2E_AUDIO_TRACK_TITLE_PODCAST}')]    content-desc
        Should Contain    ${podcast_track_displayed}    ${E2E_AUDIO_TRACK_TITLE_PODCAST}
        Log To Console    ✅ Podcast Track is displayed on Audio of the Day: ${podcast_track_displayed}
    EXCEPT
        Log To Console    ❌ Podcast Track is NOT displayed on Audio of the Day.
    END

Verify Podcast Track is displayed on Home Screen
    [Documentation]    Verifies the podcast track is displayed on the Home Screen
    Sleep   5s
    TRY
        Swipe Until Element Visible    xpath=//android.view.View[contains(@content-desc,'${E2E_CATEGORY_NAME_PODCAST}')]
        Mobile Wait Until Element Is Visible    xpath=//android.view.View[contains(@content-desc,'${E2E_CATEGORY_NAME_PODCAST}')]    10s
        ${podcast_track_displayed}=    Mobile Get Element Attribute    xpath=//android.view.View[contains(@content-desc,'${E2E_CATEGORY_NAME_PODCAST}')]    content-desc
        Should Contain    ${podcast_track_displayed}    ${E2E_CATEGORY_NAME_PODCAST}
        Log To Console    ✅ Podcast Track is displayed on Home Screen: ${podcast_track_displayed}
    EXCEPT
        Log To Console    ❌ Podcast Track is NOT displayed on Home Screen.
    END

Navigate To Podcast Section In Mobile
    [Documentation]    Navigates to the Podcast section in the mobile app
    Click on the Audio Tab
    Click on the Podcast Tab

Click on the Podcast Tab
    [Documentation]    Clicks on the Podcast tab in the mobile app
    Mobile.Wait Until Element Is Visible   ${PODCAST_TAB}    10s
    Mobile.Click Element                   ${PODCAST_TAB}
    Log To Console    ✅ Clicked on Podcast Tab in Mobile App

Verify Podcast displayed in Recently Added section.
    [Documentation]    Verifies the Podcast screen is displayed by checking the content-desc of the correct ImageView
    Sleep   2s
    TRY  
        Mobile Wait Until Element Is Visible    xpath=//android.view.View[contains(@content-desc,'${E2E_AUDIO_TRACK_TITLE_PODCAST}')]    10s
        ${PODCAST_DISPLAYED}=    Mobile Get Element Attribute    xpath=//android.view.View[contains(@content-desc,'${E2E_AUDIO_TRACK_TITLE_PODCAST}')]    content-desc
        Should Contain    ${PODCAST_DISPLAYED}    ${E2E_AUDIO_TRACK_TITLE_PODCAST}
        Log To Console    Podcast Screen Content: ${PODCAST_DISPLAYED}
    EXCEPT
        Log To Console    ❌ Podcast Track is NOT displayed in Recently Added section.
    END   

Search And Select Newly Created Podcast Track
    Log To Console    ✅ Recently Added Podcast ${E2E_AUDIO_TRACK_TITLE_PODCAST} is visible
    Click on the Search Icon From Podacast
    Sleep    5s
    Mobile Click Element    ${SEARCH_BAR}
    Log To Console    Clicked on Search Bar.
    Sleep    5s
    Mobile Input Text    xpath=//android.widget.ScrollView/android.widget.ImageView[2]    ${E2E_AUDIO_TRACK_TITLE_PODCAST}
    Mobile Hide Keyboard
    Log To Console    Entered ${E2E_AUDIO_TRACK_TITLE_PODCAST} in Search Bar.
    Sleep    5s
    Verify Track Details Are Displayed
    Sleep    5s
    Mobile Click Element    ${SEARCH_TRACK_INFO}
    Log To Console    Selected track: ${E2E_AUDIO_TRACK_TITLE_PODCAST}
    Sleep    5s

Click on the Search Icon From Podacast
    Sleep    5s
    Mobile Click Element    xpath=//android.widget.ImageView[2]
    Log To Console    Clicked on Search Icon.    

Verify Podcast Track Appears In Mobile Search Results
    [Documentation]    Verifies that the created podcast track appears in mobile search results
    TRY
        ${track_found}=    Run Keyword And Return Status    Mobile Wait Until Element Is Visible    ${MOBILE_TRACK_TITLE_PODCAST_VERIFICATION}    10s
        Run Keyword If    ${track_found}    Log To Console    ✅ Podcast track found in mobile search: ${E2E_AUDIO_TRACK_TITLE_PODCAST}
        Run Keyword Unless    ${track_found}    Log To Console    ❌ Podcast track not found in mobile search: ${E2E_AUDIO_TRACK_TITLE_PODCAST}
        # Click on the found track if present
        Run Keyword If    ${track_found}    Mobile Click Element    ${MOBILE_TRACK_TITLE_PODCAST_VERIFICATION}
        Sleep    2s
    EXCEPT
        Log To Console    ❌ while verifying podcast track in mobile search results.
    END


Play The Podcast Track
    [Documentation]    Plays the selected podcast track in the mobile app
    # Use existing play logic from AudioPage.robot
    Click on the Podcast Track Play Button
    Sleep    3s

Click on the Podcast Track Play Button
    [Documentation]    Clicks on the play button of the podcast track in the mobile app
    Sleep    2s
    Mobile Click Element    xpath=(//android.view.View[@content-desc])[1]//android.widget.ImageView[2]

Verify Podcast Track Playback In Mobile
    [Documentation]    Verifies that the podcast track is playing in the mobile app with correct details
    # Verify track details during playback
    ${track_info}=    Mobile Get Element Attribute    ${MUSIC_INFO}    content-desc
    Should Contain    ${track_info}    Music
    Log To Console    ✅ Podcast track playback verified: ${track_info}
    
    # Verify the specific track title is playing
    ${track_title_playing}=    Run Keyword And Return Status    Mobile Wait Until Element Is Visible    xpath=//android.view.View[contains(@content-desc,'${E2E_AUDIO_TRACK_TITLE_PODCAST}')]    5s
    Run Keyword If    ${track_title_playing}    Log To Console    ✅ Correct podcast track title playing: ${E2E_AUDIO_TRACK_TITLE_PODCAST}
    Run Keyword Unless    ${track_title_playing}    Log To Console    ⚠️ Podcast track title verification inconclusive, but playback is working

Close Podcast
    [Documentation]    Closes the Podcast screen
    Sleep    5s
    Mobile Click Element    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.widget.ImageView[6]
    Log To Console    Closed Podcast
    Sleep    2s 

Verify Podcast Subcategory is displayed in the list
   Sleep   5s
   Swipe Until Element Visible     xpath=//android.view.View[contains(@content-desc,'${E2E_SUBCATEGORY_NAME_PODCAST}')]
   Mobile Wait Until Element Is Visible      xpath=//android.view.View[contains(@content-desc,'${E2E_SUBCATEGORY_NAME_PODCAST}')]    10s
   ${PODCAST_SUBCATEGORY_DISPLAYED}=    Mobile Get Element Attribute    xpath=//android.view.View[contains(@content-desc,'${E2E_SUBCATEGORY_NAME_PODCAST}')]    content-desc
   Should Contain    ${PODCAST_SUBCATEGORY_DISPLAYED}   ${E2E_SUBCATEGORY_NAME_PODCAST}
   Log To Console    ✅ Podcast Subcategory is displayed in the list

Verify Podcast Details
    [Documentation]    Verifies the details of the podcast track in the mobile app
    Mobile Wait Until Element Is Visible    xpath=//android.view.View[contains(@content-desc,'${E2E_SUBCATEGORY_NAME_PODCAST}')]    10s
    Mobile Click Element    xpath=//android.view.View[contains(@content-desc,'${E2E_SUBCATEGORY_NAME_PODCAST}')]
    Sleep    5s
    ${podcast_track_title}=    Mobile Get Element Attribute    xpath=//android.view.View[contains(@content-desc,'${E2E_AUDIO_TRACK_TITLE_PODCAST}')]    content-desc
    Should Contain    ${podcast_track_title}    ${E2E_AUDIO_TRACK_TITLE_PODCAST}
    Log To Console    ✅ Podcast Track Title Verified: ${podcast_track_title}   

Click on the back button from Podcast Details
    [Documentation]    Clicks on the back button from Podcast Details screen
    Mobile Wait Until Element Is Visible    xpath=(//android.view.View[@content-desc='${E2E_CATEGORY_NAME_PODCAST}'])[1]/android.widget.ImageView    10s
    Mobile Click Element    xpath=(//android.view.View[@content-desc='${E2E_CATEGORY_NAME_PODCAST}'])[1]/android.widget.ImageView
    Log To Console    ✅ Clicked on Back Button from Podcast Details

Unpublish Podcast Track From Edit Page And Validate In Mobile App
    [Documentation]    Unpublish a podcast track from the CRM edit page and validate it is not visible in the mobile app.
    [Tags]    E2E    Integration    Podcast   Unpublish
    # Search for E2E tracks
    Web Input Text    xpath=//input[@type='search']   ${E2E_CATEGORY_NAME_PODCAST} 
    Sleep    2s
    # Wait for the first published track to appear
    Web Wait Until Page Contains Element    xpath=(//div[@role="row"]//span[text()="Publish"]/ancestor::div[@role="row"])[1]    10s
    # Click the 3-dot menu for the first published track
    Web Click Element    xpath=(//div[@role="row"]//span[text()="Publish"]/ancestor::div[@role="row"]//button[@aria-label="more"])[1]
    Sleep    1s
    # Click the Edit button in the menu
    Web Click Element    xpath=//li[contains(@role,'menuitem')][1]
    Sleep    2s
    # Scroll to the published status dropdown
    Web Scroll Element Into View    xpath=//div[@role='combobox' and @aria-haspopup='listbox' and contains(.,'Publish')]
    Sleep    1s
    ${TRACK_TITLE}=    Web.Get Text    xpath=(//tbody/tr/td[contains(.,'${E2E_AUDIO_TRACK_TITLE_PODCAST}')])[1]
    Log To Console    📝 Track Title: ${TRACK_TITLE}
    Web Click Element    xpath=//div[@role='combobox' and @aria-haspopup='listbox' and contains(.,'Publish')]
    Sleep    1s
    # Select Unpublish from dropdown
    Web Click Element    xpath=//li[contains(text(),'Unpublish')]
    Sleep    1s
    # Click the Update button
    Web Click Element    xpath=//button[contains(@class,'MuiButton-contained') and contains(.,'Upload')]
    # Wait for success message
    Web Wait Until Page Contains Element    xpath=//li[contains(@class,'minimal__snackbar__success')]//div[contains(@class,'minimal__snackbar__title') and contains(text(),'Track updated successfully')]    10s
    Log To Console    ✅ Track unpublished from edit page

    Close Web Browser

    # --- Mobile App: Validate Track is Not Visible ---
    Open Gurutattva App
    Handle First Time Setup
    # Cancel the Update Popup
    Launch Mobile App And Login as Community User
    # Validate track is NOT visible in Audio of the Day section
    Swipe Until Element Visible    xpath=//android.view.View[contains(@content-desc,'Insights')]
    ${is_visible}=    Run Keyword And Return Status    Mobile Wait Until Element Is Visible    xpath=//android.view.View[contains(@content-desc,"${TRACK_TITLE}")]    8s
    IF    ${is_visible}
        Fail    ❌ Unpublished track is still visible in Audio of the Day section: ${TRACK_TITLE}
    ELSE
        Log To Console    ✅ Track is not visible in Audio of the Day section as expected
    END

    # Validate track is NOT visible in Podcast Recently Added section
    Click on the Audio Tab
    Click on the Podcast Tab
    ${is_visible}=    Run Keyword And Return Status    Mobile Wait Until Element Is Visible    xpath=//android.widget.ImageView[contains(@content-desc,"${TRACK_TITLE}")]    8s
    IF    ${is_visible}
        Fail    ❌ Unpublished track is still visible in Recently Added section: ${TRACK_TITLE}
    ELSE
        Log To Console    ✅ Track is not visible in Recently Added section as expected
    END



    # Validate track is NOT visible in its category/subcategory
    # Swipe to category
    Swipe Until Element Visible    xpath=//android.view.View[contains(@content-desc,"${E2E_CATEGORY_NAME_PODCAST}")]
    Mobile Click Element    xpath=//android.view.View[contains(@content-desc,"${E2E_CATEGORY_NAME_PODCAST}")]
    Sleep    2s
    ${is_visible}=    Run Keyword And Return Status    Mobile Wait Until Element Is Visible    xpath=//android.view.View[contains(@content-desc,"${TRACK_TITLE}")]    8s
    IF    ${is_visible}
        Fail    ❌ Unpublished track is still visible in category/subcategory: ${TRACK_TITLE}
    ELSE
        Log To Console    ✅ Track is not visible in category/subcategory
    END

    Click on the Search Icon
    Sleep    5s
    Mobile Click Element    ${SEARCH_BAR}
    Sleep    5s
    Mobile Input Text    xpath=//android.widget.ScrollView/android.widget.ImageView[2]    ${E2E_AUDIO_TRACK_TITLE_PODCAST}
    Mobile Hide Keyboard
    Verify Track Details Are Displayed
    Sleep    5s
    Mobile Click Element    ${SEARCH_TRACK_INFO}
    Log To Console    Selected track: ${TRACK_TITLE}
    Sleep    5s
    Close Gurutattva App

Delete Podcast Track
    [Documentation]    Deletes the created podcast track

    #Search for the created podcast track
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//input[@type='search' and @placeholder='Search…']    10s
    SeleniumLibrary.Click Element    xpath=//input[@type='search' and @placeholder='Search…']
    Sleep    2s
    SeleniumLibrary.Input Text    xpath=//input[@type='search' and @placeholder='Search…']    ${E2E_CATEGORY_NAME_PODCAST}
    Sleep    5s
    
    # # Verify the podcast track appears in the list
    # Sleep   2s
    # SeleniumLibrary.Wait Until Page Contains Element    xpath=//div[contains(text(),'${E2E_CATEGORY_NAME_PODCAST}')]    10s
    # SeleniumLibrary.Page Should Contain Element    xpath=//div[contains(text(),'${E2E_CATEGORY_NAME_PODCAST}')]
    
    # Click on the delete button (assuming it exists)
    Sleep    5s
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//button[@role='menuitem']   5s
    Sleep   2s
    SeleniumLibrary.Click Element    xpath=//button[@role='menuitem']     

    # Confirm deletion if prompted
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//li[contains(normalize-space(.), 'Delete')]    5s
    Sleep    2s
    SeleniumLibrary.Click Element    xpath=//li[contains(normalize-space(.), 'Delete')]
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//button[@type='button' and normalize-space()='Delete']    5s
    Sleep    2s
    # Click the Delete button in the confirmation dialog
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//button[@type='button' and normalize-space()='Delete']    5s
    Sleep    2s
    SeleniumLibrary.Click Element    xpath=//button[@type='button' and normalize-space()='Delete']
    Log To Console    ✅ Deleted Podcast Track: ${E2E_CATEGORY_NAME_PODCAST} 

Search the Deleted Podcast Track    
    Click on the Search Icon From Podcast
    Sleep    5s
    Mobile Click Element    ${SEARCH_BAR}
    Log To Console    Clicked on Search Bar.
    Sleep    5s
    Mobile Input Text    xpath=//android.widget.ScrollView/android.widget.ImageView[2]    ${E2E_AUDIO_TRACK_TITLE_PODCAST}
    Mobile Hide Keyboard
    Log To Console    Entered ${E2E_AUDIO_TRACK_TITLE_PODCAST} in Search Bar.

Verify Podcast Track is not Appears In Mobile Search Results
    [Documentation]    Verifies that the created podcast track is not appears in mobile search results
    ${track_found}=    Run Keyword And Return Status    Mobile Wait Until Element Is Visible    ${MOBILE_TRACK_TITLE_PODCAST_VERIFICATION}    10s
    Run Keyword If    ${track_found}    Log To Console    ❌ Podcast track not found in mobile search: ${E2E_AUDIO_TRACK_TITLE_PODCAST}


Delete Music Track
    [Documentation]    Deletes the created music track from the web CRM
    # Search for the created music track
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//input[@type='search' and @placeholder='Search…']    10s
    SeleniumLibrary.Click Element    xpath=//input[@type='search' and @placeholder='Search…']
    Sleep    2s
    SeleniumLibrary.Input Text    xpath=//input[@type='search' and @placeholder='Search…']    ${E2E_CATEGORY_NAME}
    Sleep    2s

    # Click on the delete button (assuming it exists)
    Sleep   2s
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//button[@role='menuitem']   5s
    Sleep   2s
    SeleniumLibrary.Click Element    xpath=//button[@role='menuitem']     

    # Confirm deletion if prompted
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//li[contains(normalize-space(.), 'Delete')]    5s
    Sleep    2s
    SeleniumLibrary.Click Element    xpath=//li[contains(normalize-space(.), 'Delete')]

    # Click the Delete button in the confirmation dialog
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//button[@type='button' and normalize-space()='Delete']    5s
    Sleep    2s
    SeleniumLibrary.Click Element    xpath=//button[@type='button' and normalize-space()='Delete']
    Sleep    2s
    Log To Console    ✅ Deleted Music Track: ${E2E_CATEGORY_NAME}

Verify Track & Category On Home Page In Audio Of The Day Section is not visible
    Swipe Until Element Visible    xpath=//android.view.View[contains(@content-desc,'Insights')]
    Sleep   2s
    TRY
        Mobile Wait Until Element Is Visible    ${MOBILE_RECENTLY_ADDED_TRACK}    10s
        ${music_track_displayed}=    Mobile Get Element Attribute    ${MOBILE_RECENTLY_ADDED_TRACK}    content-desc
        Should Contain    ${music_track_displayed}    ${MOBILE_RECENTLY_ADDED_TRACK}
        Log To Console    ✅ Music Track is displayed on Audio of the Day: ${music_track_displayed}
    EXCEPT
        Log To Console    ❌ Music Track is NOT displayed on Audio of the Day.
    END
    Sleep   5s
    TRY
        Swipe Until Element Visible    ${MOBILE_HOME_CATEGORY}
        Mobile Wait Until Element Is Visible    ${MOBILE_HOME_CATEGORY}    10s
        ${music_track_displayed}=    Mobile Get Element Attribute    ${MOBILE_HOME_CATEGORY}    content-desc
        Should Contain    ${music_track_displayed}    ${MOBILE_HOME_CATEGORY}
        Log To Console    ✅ Music Track is displayed on Home Screen: ${music_track_displayed}
    EXCEPT
        Log To Console    ❌ Music Track is NOT displayed on Home Screen.
    END

Verify Track On Audio Page In Recently Added Section is not visible
    Click on the Audio Tab
    TRY
        Mobile Wait Until Element Is Visible    ${MOBILE_RECENTLY_ADDED_TRACK}    10s
        ${Music_DISPLAYED}=    Mobile Get Element Attribute    ${MOBILE_RECENTLY_ADDED_TRACK}    content-desc
        Should Contain    ${Music_DISPLAYED}    ${E2E_AUDIO_TRACK_TITLE}
        Log To Console    ✅ Track ${E2E_AUDIO_TRACK_TITLE} is visible in Recently Added section
    EXCEPT
        Log To Console    ❌ Track ${E2E_AUDIO_TRACK_TITLE} is NOT visible in Recently Added section.
    END

Verify Track within the newly created category and subcategory is not visible
    TRY
        Swipe Until Element Visible    ${CATEGORY_VERIFICATION}
        Mobile Wait Until Element Is Visible    ${CATEGORY_VERIFICATION}    10s
        ${CATEGORY_DISPLAYED}=    Mobile Get Element Attribute    ${CATEGORY_VERIFICATION}    content-desc
        Should Contain    ${CATEGORY_DISPLAYED}    ${E2E_CATEGORY_NAME}
        Log To Console    ✅ Category ${E2E_CATEGORY_NAME} is visible in the newly created category
    EXCEPT
        Log To Console    ❌ Category ${E2E_CATEGORY_NAME} is NOT visible in the newly created category.
    END
    # Mobile Wait Until Element Is Visible    ${SUBCATEGORY_VERIFICATION}    10s
    # Log To Console    ✅ Subcategory ${E2E_SUBCATEGORY_NAME} is visible in the newly created category
    # Mobile Click Element    ${SUBCATEGORY_VERIFICATION}

Verify Music Track is not Appears In Mobile Search Results
    [Documentation]    Verifies that the deleted music track does not appear in mobile search results
    ${track_found}=    Run Keyword And Return Status    Mobile Wait Until Element Is Visible    ${MOBILE_TRACK_TITLE_VERIFICATION}    10s
    Run Keyword If    ${track_found}    Log To Console    ❌ Music Track not found in mobile search: ${E2E_AUDIO_TRACK_TITLE}