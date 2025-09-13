*** Keywords ***

Generate E2E Namkaran Test Data For House
    [Documentation]    Generates unique test data for E2E House Namkaran validation
    ${random_num}=    Evaluate    random.randint(1000, 9999)    random
    Set Test Variable    ${E2E_HOUSE_OWNER_FIRST}    E2E_HouseOwnerFirst_${random_num}
    Set Test Variable    ${E2E_HOUSE_OWNER_MIDDLE}   E2E_HouseOwnerMiddle_${random_num}
    Set Test Variable    ${E2E_HOUSE_OWNER_LAST}     E2E_HouseOwnerLast_${random_num}
    Set Test Variable    ${E2E_HOUSE_EMAIL}          e2ehouse.${random_num}@test.com
    Set Test Variable    ${E2E_HOUSE_PHONE}          80000${random_num}
    Set Test Variable    ${E2E_HOUSE_DESC}           E2E House Description ${random_num}
    Set Test Variable    ${E2E_HOUSE_ADDRESS}        E2E House Address ${random_num}
    Log To Console    🎯 Generated E2E House Namkaran Test Data:
    Log To Console    🎯 Owner: ${E2E_HOUSE_OWNER_FIRST} ${E2E_HOUSE_OWNER_MIDDLE} ${E2E_HOUSE_OWNER_LAST}
    Log To Console    🎯 Email: ${E2E_HOUSE_EMAIL}
    Log To Console    🎯 Phone: ${E2E_HOUSE_PHONE}
    Log To Console    🎯 Description: ${E2E_HOUSE_DESC}
    Log To Console    🎯 Address: ${E2E_HOUSE_ADDRESS}

Enter E2E House Namkaran Data
    [Documentation]    Enters the generated E2E test data into House Namkaran form
    Sleep    2s
    Mobile Input Text    ${OWNER_FIRST_NAME}    ${E2E_HOUSE_OWNER_FIRST}
    Mobile Hide Keyboard
    Mobile Input Text    ${OWNER_MIDDLE_NAME}   ${E2E_HOUSE_OWNER_MIDDLE}
    Mobile Hide Keyboard
    Mobile Input Text    ${OWNER_LAST_NAME}     ${E2E_HOUSE_OWNER_LAST}
    Mobile Hide Keyboard
    Mobile Input Text    ${OWNER_EMAIL}         ${E2E_HOUSE_EMAIL}
    Mobile Hide Keyboard
    Mobile Input Text    ${OWNER_PHONE}         ${E2E_HOUSE_PHONE}
    Mobile Hide Keyboard
    Mobile Input Text    ${BUSINESS_DESC}       ${E2E_HOUSE_DESC}
    Mobile Hide Keyboard
    Mobile Input Text    ${FULL_ADDRESS}        ${E2E_HOUSE_ADDRESS}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered all E2E House Namkaran Data

Generate E2E Namkaran Test Data For Child
    [Documentation]    Generates unique test data for E2E Child Namkaran validation
    ${random_num}=    Evaluate    random.randint(1000, 9999)    random
    Set Test Variable    ${E2E_CHILD_NAME}         E2E_ChildName_${random_num}
    Set Test Variable    ${E2E_MOTHER_FIRST}       E2E_MotherFirst_${random_num}
    Set Test Variable    ${E2E_MOTHER_MIDDLE}      E2E_MotherMiddle_${random_num}
    Set Test Variable    ${E2E_MOTHER_LAST}        E2E_MotherLast_${random_num}
    Set Test Variable    ${E2E_FATHER_FIRST}       E2E_FatherFirst_${random_num}
    Set Test Variable    ${E2E_FATHER_MIDDLE}      E2E_FatherMiddle_${random_num}
    Set Test Variable    ${E2E_FATHER_LAST}        E2E_FatherLast_${random_num}
    Set Test Variable    ${E2E_CHILD_EMAIL}        e2echild.${random_num}@test.com
    Set Test Variable    ${E2E_CHILD_PHONE}        70000${random_num}
    Set Test Variable    ${E2E_CHILD_DOB}          2020-01-01
    Set Test Variable    ${E2E_CHILD_GENDER}       Male
    Set Test Variable    ${E2E_CHILD_BIRTH_TIME}   10:00 AM
    Set Test Variable    ${E2E_CHILD_BIRTH_PLACE}  E2E Child Birth Place ${random_num}
    Log To Console    🎯 Generated E2E Child Namkaran Test Data:
    Log To Console    🎯 Child Name: ${E2E_CHILD_NAME}
    Log To Console    🎯 Mother: ${E2E_MOTHER_FIRST} ${E2E_MOTHER_MIDDLE} ${E2E_MOTHER_LAST}
    Log To Console    🎯 Father: ${E2E_FATHER_FIRST} ${E2E_FATHER_MIDDLE} ${E2E_FATHER_LAST}
    Log To Console    🎯 Email: ${E2E_CHILD_EMAIL}
    Log To Console    🎯 Phone: ${E2E_CHILD_PHONE}
    Log To Console    🎯 DOB: ${E2E_CHILD_DOB}
    Log To Console    🎯 Gender: ${E2E_CHILD_GENDER}
    Log To Console    🎯 Birth Time: ${E2E_CHILD_BIRTH_TIME}
    Log To Console    🎯 Birth Place: ${E2E_CHILD_BIRTH_PLACE}

Enter E2E Child Namkaran Data
    [Documentation]    Enters the generated E2E test data into Child Namkaran form
    Sleep    2s
    Mobile Input Text    ${FNameInputField}    ${E2E_CHILD_NAME}
    Mobile Hide Keyboard
    Mobile Input Text    ${MNameInputField}    ${E2E_MOTHER_FIRST}
    Mobile Hide Keyboard
    Mobile Input Text    ${LNameInputField}    ${E2E_MOTHER_MIDDLE}
    Mobile Hide Keyboard
    Mobile Input Text    ${EmailInputField}    ${E2E_CHILD_EMAIL}
    Mobile Hide Keyboard
    Mobile Input Text    ${PhoneInputField}    ${E2E_CHILD_PHONE}
    Mobile Hide Keyboard
    Mobile Input Text    ${Enter_Birth_Place}  ${E2E_CHILD_BIRTH_PLACE}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered all E2E Child Namkaran Data

*** Settings ***
Resource   ../resources/libraries.robot
Resource   ../resources/web_keywords.robot
Resource   namkaranPage.robot
Library   DateTime
Library   String
Library    Collections
Resource   ../resources/test_setup_teardown.robot


*** Variables ***
# E2E Namkaran Test Data Variables
${E2E_BRIDE_FIRST_NAME}           ${EMPTY}
${E2E_BRIDE_MIDDLE_NAME}          ${EMPTY}
${E2E_BRIDE_LAST_NAME}            ${EMPTY}
${E2E_GROOM_FIRST_NAME}           ${EMPTY}
${E2E_GROOM_MIDDLE_NAME}          ${EMPTY}
${E2E_GROOM_LAST_NAME}            ${EMPTY}
${E2E_NAMKARAN_EMAIL}             ${EMPTY}
${E2E_NAMKARAN_PHONE}             ${EMPTY}
${E2E_MARRIAGE_PLACE}             ${EMPTY}
${E2E_MARRIAGE_DATE}              ${EMPTY}
${E2E_NAMKARAN_ID}                ${EMPTY}

# Web CMS Locators for Namkaran
${Namkaran_Management_MENU}       xpath=//span[contains(text(),'Namkaran')]
${Namkaran_SearchBox}             xpath=//input[@type='search']
${Namkaran_Table_Row}             xpath=//div[@role='row' and contains(@class,'MuiDataGrid-row')]
${Namkaran_ID_Cell}               xpath=//div[@data-field='id']
${Namkaran_Bride_Name_Cell}       xpath=//div[@data-field='brideName']
${Namkaran_Groom_Name_Cell}       xpath=//div[@data-field='groomName']
${Namkaran_Email_Cell}            xpath=//div[@data-field='email']
${Namkaran_Phone_Cell}            xpath=//div[@data-field='phone']
${Namkaran_Status_Cell}           xpath=//div[@data-field='status']
${Namkaran_View_Button}           xpath=//a[@href='/namkaran/view/']
${Namkaran_Edit_Button}           xpath=//a[@href='/namkaran/edit/']

# Namkaran Detail Page Locators (based on actual DOM structure)
${Namkaran_Detail_Page_Title}     xpath=//h1[contains(text(),'Namkaran Request For Bride')]
${Bride_First_Name_Field}         xpath=//h6[contains(text(),'Bride First name')]/following-sibling::p[@class='MuiTypography-root MuiTypography-body2 css-13dw0uc']
${Bride_Middle_Name_Field}        xpath=//h6[contains(text(),'Bride Middle name')]/following-sibling::p[@class='MuiTypography-root MuiTypography-body2 css-13dw0uc']
${Bride_Last_Name_Field}          xpath=//h6[contains(text(),'Bride Last name')]/following-sibling::p[@class='MuiTypography-root MuiTypography-body2 css-13dw0uc']
${Groom_First_Name_Field}         xpath=//h6[contains(text(),'Groom First name')]/following-sibling::p[@class='MuiTypography-root MuiTypography-body2 css-13dw0uc']
${Groom_Middle_Name_Field}        xpath=//h6[contains(text(),'Groom Middle name')]/following-sibling::p[@class='MuiTypography-root MuiTypography-body2 css-13dw0uc']
${Groom_Last_Name_Field}          xpath=//h6[contains(text(),'Groom Last name')]/following-sibling::p[@class='MuiTypography-root MuiTypography-body2 css-13dw0uc']
${Marriage_Date_Field}            xpath=//h6[contains(text(),'Marriage Date')]/following-sibling::p[@class='MuiTypography-root MuiTypography-body2 css-13dw0uc']
${Marriage_Place_Field}           xpath=//h6[contains(text(),'Marriage Place')]/following-sibling::p[@class='MuiTypography-root MuiTypography-body2 css-13dw0uc']
${Namkaran_Email_Field}                    xpath=//h6[contains(text(),'Email')]/following-sibling::p[@class='MuiTypography-root MuiTypography-body2 css-13dw0uc']
${Phone_Field}                    xpath=//h6[contains(text(),'Phone')]/following-sibling::p[@class='MuiTypography-root MuiTypography-body2 css-13dw0uc']
${Request_Number_Field}           xpath=//h6[contains(text(),'Request Number')]/following-sibling::p[@class='MuiTypography-root MuiTypography-body2 css-13dw0uc']

# E2E Namkaran Business Test Data Variables
${E2E_BUSINESS_NAME}        ${EMPTY}
${E2E_BUSINESS_OWNER}       ${EMPTY}
${E2E_BUSINESS_EMAIL}       ${EMPTY}
${E2E_BUSINESS_PHONE}       ${EMPTY}
${E2E_BUSINESS_DESC}        ${EMPTY}
${E2E_BUSINESS_ADDRESS}     ${EMPTY}
${E2E_BUSINESS_START_DATE}  ${EMPTY}
${E2E_SECOND_OWNER_FIRST}   ${EMPTY}
${E2E_SECOND_OWNER_MIDDLE}  ${EMPTY}
${E2E_SECOND_OWNER_LAST}    ${EMPTY}
${E2E_THIRD_OWNER_FIRST}    ${EMPTY}
${E2E_THIRD_OWNER_MIDDLE}   ${EMPTY}
${E2E_THIRD_OWNER_LAST}     ${EMPTY}

# Admin Approval Workflow Locators
${NAMKARAN_MANAGEMENT_MENU}       xpath=//span[contains(text(),'Namkaran Management')]
${NAMKARAN_TABLE}                 xpath=//div[@role='grid']
${NAMKARAN_SEARCH_FIELD}          xpath=//input[@placeholder='Search...']
${VIEW_NAMKARAN_BUTTON}           xpath=//li[contains(text(),'View')]
${NAMKARAN_DETAIL_HEADER}         xpath=//h1[contains(text(),'Namkaran Request For')]
${GURUJI_SUGGESTED_NAME_FIELD}    xpath=//input[@placeholder='Enter suggested name']
${NAMKARAN_REMARKS_FIELD}         xpath=//textarea[@placeholder='Enter remarks']
${APPROVE_NAMKARAN_BUTTON}        xpath=//button[contains(text(),'Approve')]
${REJECT_NAMKARAN_BUTTON}          xpath=//button[contains(text(),'Reject')]

*** Keywords ***
Generate E2E Namkaran Test Data For Bride
    [Documentation]    Generates unique test data for E2E Namkaran validation
    ${random_num}=    Evaluate    random.randint(1000, 9999)    random
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    
    Set Test Variable    ${E2E_BRIDE_FIRST_NAME}    E2E_Bride_${random_num}
    Set Test Variable    ${E2E_BRIDE_MIDDLE_NAME}    E2E_Middle_${random_num}
    Set Test Variable    ${E2E_BRIDE_LAST_NAME}    E2E_Bride_Last_${random_num}
    Set Test Variable    ${E2E_GROOM_FIRST_NAME}    E2E_Groom_${random_num}
    Set Test Variable    ${E2E_GROOM_MIDDLE_NAME}    E2E_Groom_Middle_${random_num}
    Set Test Variable    ${E2E_GROOM_LAST_NAME}    E2E_Groom_Last_${random_num}
    Set Test Variable    ${E2E_NAMKARAN_EMAIL}    e2enamkaran.${random_num}@test.com
    Set Test Variable    ${E2E_NAMKARAN_PHONE}    918877${random_num}
    Set Test Variable    ${E2E_MARRIAGE_PLACE}    E2E Test Place, Gujarat, India
    Set Test Variable    ${E2E_MARRIAGE_DATE}    2025-06-19
    
    Log To Console    🎯 Generated E2E Namkaran Test Data:
    Log To Console    🎯 Bride Name: ${E2E_BRIDE_FIRST_NAME} ${E2E_BRIDE_MIDDLE_NAME} ${E2E_BRIDE_LAST_NAME}
    Log To Console    🎯 Groom Name: ${E2E_GROOM_FIRST_NAME} ${E2E_GROOM_MIDDLE_NAME} ${E2E_GROOM_LAST_NAME}
    Log To Console    🎯 Email: ${E2E_NAMKARAN_EMAIL}
    Log To Console    🎯 Phone: ${E2E_NAMKARAN_PHONE}
    Log To Console    🎯 Marriage Place: ${E2E_MARRIAGE_PLACE}
    Log To Console    🎯 Marriage Date: ${E2E_MARRIAGE_DATE}

Enter E2E Bride Namkaran Data
    [Documentation]    Enters the generated E2E test data into Bride Namkaran form
    # Wait for form to be ready
    Sleep    3s
    
    # Enter Bride First Name
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter First Name'][1]    10s
    Mobile Click Element    xpath=//android.widget.EditText[@hint='Enter First Name'][1]
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter First Name'][1]    ${E2E_BRIDE_FIRST_NAME}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Bride First Name: ${E2E_BRIDE_FIRST_NAME}
    
    # Enter Bride Middle Name
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter Middle Name'][1]    10s
    Mobile Click Element    xpath=//android.widget.EditText[@hint='Enter Middle Name'][1]
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Middle Name'][1]    ${E2E_BRIDE_MIDDLE_NAME}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Bride Middle Name: ${E2E_BRIDE_MIDDLE_NAME}
    
    # Enter Bride Last Name
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter Last Name'][1]    10s
    Mobile Click Element    xpath=//android.widget.EditText[@hint='Enter Last Name'][1]
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Last Name'][1]    ${E2E_BRIDE_LAST_NAME}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Bride Last Name: ${E2E_BRIDE_LAST_NAME}
    
    # Enter Groom First Name
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter First Name'][1]    10s
    Mobile Click Element    xpath=//android.widget.EditText[@hint='Enter First Name'][1]
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter First Name'][1]    ${E2E_GROOM_FIRST_NAME}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Groom First Name: ${E2E_GROOM_FIRST_NAME}
    
    # Enter Groom Middle Name
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter Middle Name'][1]    10s
    Mobile Click Element    xpath=//android.widget.EditText[@hint='Enter Middle Name'][1]
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Middle Name'][1]    ${E2E_GROOM_MIDDLE_NAME}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Groom Middle Name: ${E2E_GROOM_MIDDLE_NAME}
    
    # Enter Groom Last Name
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter Last Name'][1]    10s
    Mobile Click Element    xpath=//android.widget.EditText[@hint='Enter Last Name'][1]
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Last Name'][1]    ${E2E_GROOM_LAST_NAME}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Groom Last Name: ${E2E_GROOM_LAST_NAME}
    
    # Enter Email Address
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter Email']    10s
    Mobile Click Element    xpath=//android.widget.EditText[@hint='Enter Email']
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Email']    ${E2E_NAMKARAN_EMAIL}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Email: ${E2E_NAMKARAN_EMAIL}
    
    # Enter Phone Number
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[contains(@hint, '00 0000 0000')]    10s
    Mobile Click Element    xpath=//android.widget.EditText[contains(@hint, '00 0000 0000')]
    Mobile Input Text    xpath=//android.widget.EditText[contains(@hint, '00 0000 0000')]    ${E2E_NAMKARAN_PHONE}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Phone Number: ${E2E_NAMKARAN_PHONE}
    
    # Enter Marriage Place
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter Marriage Place']    10s
    Mobile Click Element    xpath=//android.widget.EditText[@hint='Enter Marriage Place']
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Marriage Place']    ${E2E_MARRIAGE_PLACE}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Marriage Place: ${E2E_MARRIAGE_PLACE}
    
    Log To Console    ✅ Successfully entered E2E Bride Namkaran Data

Click on the Namkaran Management Menu
    [Documentation]    Navigates to Namkaran Management section
    Web Wait Until Page Contains Element    ${Namkaran_Management_MENU}    10s
    Web Click Element    ${Namkaran_Management_MENU}
    Sleep    3s
    
    Log To Console    📋 Navigated to Namkaran Management page

Verify the created Namkaran
    [Documentation]    Verifies that the namkaran data entered in mobile app matches the data in CMS by clicking first record and viewing details
    Sleep    5s
    
    # Wait for table to load
    Web Wait Until Page Contains Element    ${Namkaran_Table_Row}    15s
    
    # Verify the first row column values before proceeding
    # Verify First Row Column Values
    
    # Click on the first record's 3-dot menu (Actions column)
    ${first_row_actions}=    Set Variable    xpath=(//div[@role='row' and contains(@class,'MuiDataGrid-row')])[2]//button[@type='button']
    Web Wait Until Page Contains Element    ${first_row_actions}    10s
    Web Click Element    ${first_row_actions}
    Sleep    2s
    
    # Click on View button from the dropdown menu
    ${view_button}=    Set Variable    xpath=//li[@role='menuitem' and contains(.,'View')]
    Web Wait Until Page Contains Element    ${view_button}    10s
    Web Click Element    ${view_button}
    Sleep    3s
    
    Log To Console    👁️ Clicked on View button for first namkaran record
    
    # Now verify the data on the detail page
    Verify Namkaran Detail Page Data



Verify Namkaran Detail Page Data
    [Documentation]    Verifies the namkaran data on the detail page matches the mobile app data
    Sleep    5s
    
    # Extract data from detail page
    ${cms_bride_first_name}=    Web.Get Text    ${Bride_First_Name_Field}
    ${cms_bride_middle_name}=    Web.Get Text    ${Bride_Middle_Name_Field}
    ${cms_bride_last_name}=    Web.Get Text    ${Bride_Last_Name_Field}
    ${cms_groom_first_name}=    Web.Get Text    ${Groom_First_Name_Field}
    ${cms_groom_middle_name}=    Web.Get Text    ${Groom_Middle_Name_Field}
    ${cms_groom_last_name}=    Web.Get Text    ${Groom_Last_Name_Field}
    ${cms_marriage_date}=    Web.Get Text    ${Marriage_Date_Field}
    ${cms_marriage_place}=    Web.Get Text    ${Marriage_Place_Field}
    ${cms_email}=    Web.Get Text    ${Namkaran_Email_Field}
    ${cms_phone}=    Web.Get Text    ${Phone_Field}
    ${cms_request_number}=    Web.Get Text    ${Request_Number_Field}
    
    # Verify bride details
    Should Be Equal As Strings    ${cms_bride_first_name}    ${E2E_BRIDE_FIRST_NAME}    Bride first name mismatch in CMS
    Should Be Equal As Strings    ${cms_bride_middle_name}    ${E2E_BRIDE_MIDDLE_NAME}    Bride middle name mismatch in CMS
    Should Be Equal As Strings    ${cms_bride_last_name}    ${E2E_BRIDE_LAST_NAME}    Bride last name mismatch in CMS
    
    # Verify groom details
    Should Be Equal As Strings    ${cms_groom_first_name}    ${E2E_GROOM_FIRST_NAME}    Groom first name mismatch in CMS
    Should Be Equal As Strings    ${cms_groom_middle_name}    ${E2E_GROOM_MIDDLE_NAME}    Groom middle name mismatch in CMS
    Should Be Equal As Strings    ${cms_groom_last_name}    ${E2E_GROOM_LAST_NAME}    Groom last name mismatch in CMS
    
    # Verify marriage details
    Should Be Equal As Strings    ${cms_marriage_place}    ${E2E_MARRIAGE_PLACE}    Marriage place mismatch in CMS
    
    # Verify contact details
    Should Be Equal As Strings    ${cms_email}    ${E2E_NAMKARAN_EMAIL}    Email mismatch in CMS
    
    # Handle phone number format variations (with/without space after country code)
    ${expected_phone_with_space}=    Set Variable    +91 ${E2E_NAMKARAN_PHONE}
    ${expected_phone_without_space}=    Set Variable    +${E2E_NAMKARAN_PHONE}
    
    ${phone_match}=    Run Keyword And Return Status    
    ...    Should Be Equal As Strings    ${cms_phone}    ${expected_phone_with_space}
    
    ${phone_match_alt}=    Run Keyword And Return Status    
    ...    Should Be Equal As Strings    ${cms_phone}    ${expected_phone_without_space}
    
    Run Keyword Unless    ${phone_match} or ${phone_match_alt}    
    ...    Fail    Phone mismatch in CMS: ${cms_phone} != ${expected_phone_with_space} or ${expected_phone_without_space}
    
    # Verify request number format
    Should Match Regexp    ${cms_request_number}    \\d+    Invalid request number format
    
    # Store request number for logging
    Set Test Variable    ${E2E_NAMKARAN_ID}    ${cms_request_number}
    
    Log To Console    ✅ Namkaran detail page verification successful:
    Log To Console    ✅ Request Number: ${cms_request_number}
    Log To Console    ✅ Bride: ${cms_bride_first_name} ${cms_bride_middle_name} ${cms_bride_last_name}
    Log To Console    ✅ Groom: ${cms_groom_first_name} ${cms_groom_middle_name} ${cms_groom_last_name}
    Log To Console    ✅ Marriage Place: ${cms_marriage_place}
    Log To Console    ✅ Email: ${cms_email}
    Log To Console    ✅ Phone: ${cms_phone}




Enter E2E Business Namkaran Data
    [Documentation]    Enters the generated E2E test data into Business Namkaran form in the correct field sequence
    Sleep    2s

    # --- First Owner ---
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter First Name'][1]
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter First Name'][1]    ${E2E_BUSINESS_OWNER_FIRST}
    Mobile Hide Keyboard
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Middle Name'][1]   ${E2E_BUSINESS_OWNER_MIDDLE}
    Mobile Hide Keyboard
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Last Name'][1]     ${E2E_BUSINESS_OWNER_LAST}
    Mobile Hide Keyboard

    # --- Second Owner ---
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter First Name'][1]    ${E2E_SECOND_OWNER_FIRST}
    Mobile Hide Keyboard
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Middle Name'][1]   ${E2E_SECOND_OWNER_MIDDLE}
    Mobile Hide Keyboard
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Last Name'][1]     ${E2E_SECOND_OWNER_LAST}
    Mobile Hide Keyboard

    # --- Third Owner ---
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter First Name'][1]    ${E2E_THIRD_OWNER_FIRST}
    Mobile Hide Keyboard
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Middle Name'][1]   ${E2E_THIRD_OWNER_MIDDLE}
    Mobile Hide Keyboard
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Last Name'][1]     ${E2E_THIRD_OWNER_LAST}
    Mobile Hide Keyboard

    # --- Contact & Business Info ---
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Email']            ${E2E_BUSINESS_EMAIL}
    Mobile Hide Keyboard
    Mobile Input Text    xpath=//android.widget.EditText[contains(@hint, '00 0000 0000')]    ${E2E_BUSINESS_PHONE}
    Mobile Hide Keyboard
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Text Here']         ${E2E_BUSINESS_DESC}
    Mobile Hide Keyboard
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Full Address']      ${E2E_BUSINESS_ADDRESS}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered all E2E Business Namkaran Data

Generate E2E Namkaran Test Data For Business
    [Documentation]    Generates unique test data for E2E Business Namkaran validation, with separate variables for each field
    ${random_num}=    Evaluate    random.randint(1000, 9999)    random
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    # First Owner
    Set Test Variable    ${E2E_BUSINESS_OWNER_FIRST}    E2E_BusinessOwnerFirst_${random_num}
    Set Test Variable    ${E2E_BUSINESS_OWNER_MIDDLE}   E2E_BusinessOwnerMiddle_${random_num}
    Set Test Variable    ${E2E_BUSINESS_OWNER_LAST}     E2E_BusinessOwnerLast_${random_num}
    # Second Owner
    Set Test Variable    ${E2E_SECOND_OWNER_FIRST}      E2E_SecondOwnerFirst_${random_num}
    Set Test Variable    ${E2E_SECOND_OWNER_MIDDLE}     E2E_SecondOwnerMiddle_${random_num}
    Set Test Variable    ${E2E_SECOND_OWNER_LAST}       E2E_SecondOwnerLast_${random_num}
    # Third Owner
    Set Test Variable    ${E2E_THIRD_OWNER_FIRST}       E2E_ThirdOwnerFirst_${random_num}
    Set Test Variable    ${E2E_THIRD_OWNER_MIDDLE}      E2E_ThirdOwnerMiddle_${random_num}
    Set Test Variable    ${E2E_THIRD_OWNER_LAST}        E2E_ThirdOwnerLast_${random_num}
    # Contact & Business Info
    Set Test Variable    ${E2E_BUSINESS_EMAIL}          e2ebusiness.${random_num}@test.com
    Set Test Variable    ${E2E_BUSINESS_PHONE}          90000${random_num}
    Set Test Variable    ${E2E_BUSINESS_DESC}           E2E Business Description ${random_num}
    Set Test Variable    ${E2E_BUSINESS_ADDRESS}        E2E Business Address ${random_num}
    Log To Console    🎯 Generated E2E Business Namkaran Test Data:
    Log To Console    🎯 First Owner First Name: ${E2E_BUSINESS_OWNER_FIRST}
    Log To Console    🎯 First Owner Middle Name: ${E2E_BUSINESS_OWNER_MIDDLE}
    Log To Console    🎯 First Owner Last Name: ${E2E_BUSINESS_OWNER_LAST}
    Log To Console    🎯 Second Owner First Name: ${E2E_SECOND_OWNER_FIRST}
    Log To Console    🎯 Second Owner Middle Name: ${E2E_SECOND_OWNER_MIDDLE}
    Log To Console    🎯 Second Owner Last Name: ${E2E_SECOND_OWNER_LAST}
    Log To Console    🎯 Third Owner First Name: ${E2E_THIRD_OWNER_FIRST}
    Log To Console    🎯 Third Owner Middle Name: ${E2E_THIRD_OWNER_MIDDLE}
    Log To Console    🎯 Third Owner Last Name: ${E2E_THIRD_OWNER_LAST}
    Log To Console    🎯 Email: ${E2E_BUSINESS_EMAIL}
    Log To Console    🎯 Phone: ${E2E_BUSINESS_PHONE}
    Log To Console    🎯 Description: ${E2E_BUSINESS_DESC}
    Log To Console    🎯 Address: ${E2E_BUSINESS_ADDRESS}

Generate E2E Namkaran Test Data For Bride With YES Option
    [Documentation]    Generates unique test data for E2E Bride Namkaran with YES option (multiple names)
    ${random_num}=    Evaluate    random.randint(1000, 9999)    random
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    
    Set Test Variable    ${E2E_BRIDE_FIRST_NAME}    E2E_Bride_${random_num}
    Set Test Variable    ${E2E_BRIDE_MIDDLE_NAME}    E2E_Middle_${random_num}
    Set Test Variable    ${E2E_BRIDE_LAST_NAME}    E2E_Bride_Last_${random_num}
    Set Test Variable    ${E2E_GROOM_FIRST_NAME}    E2E_Groom_${random_num}
    Set Test Variable    ${E2E_GROOM_MIDDLE_NAME}    E2E_Groom_Middle_${random_num}
    Set Test Variable    ${E2E_GROOM_LAST_NAME}    E2E_Groom_Last_${random_num}
    Set Test Variable    ${E2E_NAMKARAN_EMAIL}    e2enamkaran.${random_num}@test.com
    Set Test Variable    ${E2E_NAMKARAN_PHONE}    918877${random_num}
    Set Test Variable    ${E2E_MARRIAGE_PLACE}    E2E Test Place, Gujarat, India
    Set Test Variable    ${E2E_MARRIAGE_DATE}    2025-06-19
    
    # Generate random names for multiple choices
    Set Test Variable    ${E2E_FIRST_NAME_CHOICE}    E2E_FirstChoice_${random_num}
    Set Test Variable    ${E2E_SECOND_NAME_CHOICE}    E2E_SecondChoice_${random_num}
    Set Test Variable    ${E2E_THIRD_NAME_CHOICE}    E2E_ThirdChoice_${random_num}
    
    Log To Console    🎯 Generated E2E Bride Namkaran Test Data (YES Option):
    Log To Console    🎯 Bride Name: ${E2E_BRIDE_FIRST_NAME} ${E2E_BRIDE_MIDDLE_NAME} ${E2E_BRIDE_LAST_NAME}
    Log To Console    🎯 Groom Name: ${E2E_GROOM_FIRST_NAME} ${E2E_GROOM_MIDDLE_NAME} ${E2E_GROOM_LAST_NAME}
    Log To Console    🎯 Email: ${E2E_NAMKARAN_EMAIL}
    Log To Console    🎯 Phone: ${E2E_NAMKARAN_PHONE}
    Log To Console    🎯 Marriage Place: ${E2E_MARRIAGE_PLACE}
    Log To Console    🎯 Marriage Date: ${E2E_MARRIAGE_DATE}
    Log To Console    🎯 Name Choices: ${E2E_FIRST_NAME_CHOICE}, ${E2E_SECOND_NAME_CHOICE}, ${E2E_THIRD_NAME_CHOICE}

Enter E2E Bride Namkaran Data With YES Option
    [Documentation]    Enters the generated E2E test data into Bride Namkaran form with YES option for multiple names
    # Wait for form to be ready
    Sleep    3s
    
    # Enter Bride First Name
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter First Name'][1]    10s
    Mobile Click Element    xpath=//android.widget.EditText[@hint='Enter First Name'][1]
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter First Name'][1]    ${E2E_BRIDE_FIRST_NAME}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Bride First Name: ${E2E_BRIDE_FIRST_NAME}
    
    # Enter Bride Middle Name
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter Middle Name'][1]    10s
    Mobile Click Element    xpath=//android.widget.EditText[@hint='Enter Middle Name'][1]
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Middle Name'][1]    ${E2E_BRIDE_MIDDLE_NAME}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Bride Middle Name: ${E2E_BRIDE_MIDDLE_NAME}
    
    # Enter Bride Last Name
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter Last Name'][1]    10s
    Mobile Click Element    xpath=//android.widget.EditText[@hint='Enter Last Name'][1]
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Last Name'][1]    ${E2E_BRIDE_LAST_NAME}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Bride Last Name: ${E2E_BRIDE_LAST_NAME}
    
    # Enter Groom First Name
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter First Name'][1]    10s
    Mobile Click Element    xpath=//android.widget.EditText[@hint='Enter First Name'][1]
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter First Name'][1]    ${E2E_GROOM_FIRST_NAME}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Groom First Name: ${E2E_GROOM_FIRST_NAME}
    
    # Enter Groom Middle Name
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter Middle Name'][1]    10s
    Mobile Click Element    xpath=//android.widget.EditText[@hint='Enter Middle Name'][1]
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Middle Name'][1]    ${E2E_GROOM_MIDDLE_NAME}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Groom Middle Name: ${E2E_GROOM_MIDDLE_NAME}
    
    # Enter Groom Last Name
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter Last Name'][1]    10s
    Mobile Click Element    xpath=//android.widget.EditText[@hint='Enter Last Name'][1]
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Last Name'][1]    ${E2E_GROOM_LAST_NAME}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Groom Last Name: ${E2E_GROOM_LAST_NAME}
    
    # Enter Email Address
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter Email']    10s
    Mobile Click Element    xpath=//android.widget.EditText[@hint='Enter Email']
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Email']    ${E2E_NAMKARAN_EMAIL}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Email: ${E2E_NAMKARAN_EMAIL}
    
    # Enter Phone Number
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[contains(@hint, '00 0000 0000')]    10s
    Mobile Click Element    xpath=//android.widget.EditText[contains(@hint, '00 0000 0000')]
    Mobile Input Text    xpath=//android.widget.EditText[contains(@hint, '00 0000 0000')]    ${E2E_NAMKARAN_PHONE}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Phone Number: ${E2E_NAMKARAN_PHONE}
    
    # Enter Marriage Place
    Mobile Wait Until Element Is Visible    xpath=//android.widget.EditText[@hint='Enter Marriage Place']    10s
    Mobile Click Element    xpath=//android.widget.EditText[@hint='Enter Marriage Place']
    Mobile Input Text    xpath=//android.widget.EditText[@hint='Enter Marriage Place']    ${E2E_MARRIAGE_PLACE}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Marriage Place: ${E2E_MARRIAGE_PLACE}
    
    # Select YES for multiple name choice
    Select Yes for the multiple name choice
    Log To Console    ✅ Selected YES for multiple name choice
    
    # Enter First name choice
    Enter First name choice    ${E2E_FIRST_NAME_CHOICE}
    Log To Console    ✅ Entered First name choice: ${E2E_FIRST_NAME_CHOICE}
    
    # Enter Second name choice
    Enter Second name choice    ${E2E_SECOND_NAME_CHOICE}
    Log To Console    ✅ Entered Second name choice: ${E2E_SECOND_NAME_CHOICE}
    
    # Click on the Add Button for Bride Namkaran
    Click on the Add Button
    Log To Console    ✅ Clicked on Add Button
    
    # Enter Third name choice
    Enter Third name choice    ${E2E_THIRD_NAME_CHOICE}
    Log To Console    ✅ Entered Third name choice: ${E2E_THIRD_NAME_CHOICE}
    
    Log To Console    ✅ Successfully entered E2E Bride Namkaran Data with YES option

Generate E2E Namkaran Test Data For Business With YES Option
    [Documentation]    Generates unique test data for E2E Business Namkaran with YES option (multiple names)
    ${random_num}=    Evaluate    random.randint(1000, 9999)    random
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    
    # Business Owner Info
    Set Test Variable    ${E2E_BUSINESS_OWNER_FIRST}    E2E_BusinessOwnerFirst_${random_num}
    Set Test Variable    ${E2E_BUSINESS_OWNER_MIDDLE}   E2E_BusinessOwnerMiddle_${random_num}
    Set Test Variable    ${E2E_BUSINESS_OWNER_LAST}     E2E_BusinessOwnerLast_${random_num}
    Set Test Variable    ${E2E_BUSINESS_EMAIL}          e2ebusiness.${random_num}@test.com
    Set Test Variable    ${E2E_BUSINESS_PHONE}          90000${random_num}
    Set Test Variable    ${E2E_BUSINESS_DESC}           E2E Business Description ${random_num}
    Set Test Variable    ${E2E_BUSINESS_ADDRESS}        E2E Business Address ${random_num}
    
    # Generate random names for multiple choices
    Set Test Variable    ${E2E_BUSINESS_FIRST_NAME_CHOICE}    E2E_BusinessFirstChoice_${random_num}
    Set Test Variable    ${E2E_BUSINESS_SECOND_NAME_CHOICE}    E2E_BusinessSecondChoice_${random_num}
    Set Test Variable    ${E2E_BUSINESS_THIRD_NAME_CHOICE}    E2E_BusinessThirdChoice_${random_num}
    
    Log To Console    🎯 Generated E2E Business Namkaran Test Data (YES Option):
    Log To Console    🎯 Business Owner: ${E2E_BUSINESS_OWNER_FIRST} ${E2E_BUSINESS_OWNER_MIDDLE} ${E2E_BUSINESS_OWNER_LAST}
    Log To Console    🎯 Email: ${E2E_BUSINESS_EMAIL}
    Log To Console    🎯 Phone: ${E2E_BUSINESS_PHONE}
    Log To Console    🎯 Description: ${E2E_BUSINESS_DESC}
    Log To Console    🎯 Address: ${E2E_BUSINESS_ADDRESS}
    Log To Console    🎯 Business Name Choices: ${E2E_BUSINESS_FIRST_NAME_CHOICE}, ${E2E_BUSINESS_SECOND_NAME_CHOICE}, ${E2E_BUSINESS_THIRD_NAME_CHOICE}

Enter E2E Business Namkaran Data With YES Option
    [Documentation]    Enters the generated E2E test data into Business Namkaran form with YES option for multiple names
    Sleep    2s
    
    # Enter Business Owner First Name
    Mobile Input Text    ${OWNER_FIRST_NAME}    ${E2E_BUSINESS_OWNER_FIRST}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Business Owner First Name: ${E2E_BUSINESS_OWNER_FIRST}
    
    # Enter Business Owner Middle Name
    Mobile Input Text    ${OWNER_MIDDLE_NAME}   ${E2E_BUSINESS_OWNER_MIDDLE}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Business Owner Middle Name: ${E2E_BUSINESS_OWNER_MIDDLE}
    
    # Enter Business Owner Last Name
    Mobile Input Text    ${OWNER_LAST_NAME}     ${E2E_BUSINESS_OWNER_LAST}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Business Owner Last Name: ${E2E_BUSINESS_OWNER_LAST}
    
    # Enter Email Address
    Mobile Input Text    ${OWNER_EMAIL}         ${E2E_BUSINESS_EMAIL}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Email: ${E2E_BUSINESS_EMAIL}
    
    # Enter Phone Number
    Mobile Input Text    ${OWNER_PHONE}         ${E2E_BUSINESS_PHONE}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Phone Number: ${E2E_BUSINESS_PHONE}
    
    # Enter Business Description
    Mobile Input Text    ${BUSINESS_DESC}       ${E2E_BUSINESS_DESC}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Business Description: ${E2E_BUSINESS_DESC}
    
    # Enter Business Address
    Mobile Input Text    ${FULL_ADDRESS}        ${E2E_BUSINESS_ADDRESS}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Business Address: ${E2E_BUSINESS_ADDRESS}
    
    # Select YES for multiple name choice
    Select Yes for the multiple name choice
    Log To Console    ✅ Selected YES for multiple name choice
    
    # Enter First name choice
    Enter First name choice    ${E2E_BUSINESS_FIRST_NAME_CHOICE}
    Log To Console    ✅ Entered First business name choice: ${E2E_BUSINESS_FIRST_NAME_CHOICE}
    
    # Enter Second name choice
    Enter Second name choice    ${E2E_BUSINESS_SECOND_NAME_CHOICE}
    Log To Console    ✅ Entered Second business name choice: ${E2E_BUSINESS_SECOND_NAME_CHOICE}
    
    # Click on the Add Button for Business Namkaran
    Click on the Add Button
    Log To Console    ✅ Clicked on Add Button
    
    # Enter Third name choice
    Enter Third name choice    ${E2E_BUSINESS_THIRD_NAME_CHOICE}
    Log To Console    ✅ Entered Third business name choice: ${E2E_BUSINESS_THIRD_NAME_CHOICE}
    
    Log To Console    ✅ Successfully entered E2E Business Namkaran Data with YES option

Generate E2E Namkaran Test Data For House With YES Option
    [Documentation]    Generates unique test data for E2E House Namkaran with YES option (multiple names)
    ${random_num}=    Evaluate    random.randint(1000, 9999)    random
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    
    # House Owner Info
    Set Test Variable    ${E2E_HOUSE_OWNER_FIRST}    E2E_HouseOwnerFirst_${random_num}
    Set Test Variable    ${E2E_HOUSE_OWNER_MIDDLE}   E2E_HouseOwnerMiddle_${random_num}
    Set Test Variable    ${E2E_HOUSE_OWNER_LAST}     E2E_HouseOwnerLast_${random_num}
    Set Test Variable    ${E2E_HOUSE_EMAIL}          e2ehouse.${random_num}@test.com
    Set Test Variable    ${E2E_HOUSE_PHONE}          80000${random_num}
    Set Test Variable    ${E2E_HOUSE_DESC}           E2E House Description ${random_num}
    Set Test Variable    ${E2E_HOUSE_ADDRESS}        E2E House Address ${random_num}
    
    # Generate random names for multiple choices
    Set Test Variable    ${E2E_HOUSE_FIRST_NAME_CHOICE}    E2E_HouseFirstChoice_${random_num}
    Set Test Variable    ${E2E_HOUSE_SECOND_NAME_CHOICE}    E2E_HouseSecondChoice_${random_num}
    Set Test Variable    ${E2E_HOUSE_THIRD_NAME_CHOICE}    E2E_HouseThirdChoice_${random_num}
    
    Log To Console    🎯 Generated E2E House Namkaran Test Data (YES Option):
    Log To Console    🎯 House Owner: ${E2E_HOUSE_OWNER_FIRST} ${E2E_HOUSE_OWNER_MIDDLE} ${E2E_HOUSE_OWNER_LAST}
    Log To Console    🎯 Email: ${E2E_HOUSE_EMAIL}
    Log To Console    🎯 Phone: ${E2E_HOUSE_PHONE}
    Log To Console    🎯 Description: ${E2E_HOUSE_DESC}
    Log To Console    🎯 Address: ${E2E_HOUSE_ADDRESS}
    Log To Console    🎯 House Name Choices: ${E2E_HOUSE_FIRST_NAME_CHOICE}, ${E2E_HOUSE_SECOND_NAME_CHOICE}, ${E2E_HOUSE_THIRD_NAME_CHOICE}

Enter E2E House Namkaran Data With YES Option
    [Documentation]    Enters the generated E2E test data into House Namkaran form with YES option for multiple names
    Sleep    2s
    
    # Enter House Owner First Name
    Mobile Input Text    ${OWNER_FIRST_NAME}    ${E2E_HOUSE_OWNER_FIRST}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered House Owner First Name: ${E2E_HOUSE_OWNER_FIRST}
    
    # Enter House Owner Middle Name
    Mobile Input Text    ${OWNER_MIDDLE_NAME}   ${E2E_HOUSE_OWNER_MIDDLE}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered House Owner Middle Name: ${E2E_HOUSE_OWNER_MIDDLE}
    
    # Enter House Owner Last Name
    Mobile Input Text    ${OWNER_LAST_NAME}     ${E2E_HOUSE_OWNER_LAST}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered House Owner Last Name: ${E2E_HOUSE_OWNER_LAST}
    
    # Enter Email Address
    Mobile Input Text    ${OWNER_EMAIL}         ${E2E_HOUSE_EMAIL}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Email: ${E2E_HOUSE_EMAIL}
    
    # Enter Phone Number
    Mobile Input Text    ${OWNER_PHONE}         ${E2E_HOUSE_PHONE}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Phone Number: ${E2E_HOUSE_PHONE}
    
    # Enter House Description
    Mobile Input Text    ${BUSINESS_DESC}       ${E2E_HOUSE_DESC}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered House Description: ${E2E_HOUSE_DESC}
    
    # Enter House Address
    Mobile Input Text    ${FULL_ADDRESS}        ${E2E_HOUSE_ADDRESS}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered House Address: ${E2E_HOUSE_ADDRESS}
    
    # Select YES for multiple name choice
    Select Yes for the multiple name choice
    Log To Console    ✅ Selected YES for multiple name choice
    
    # Enter First name choice
    Enter First name choice    ${E2E_HOUSE_FIRST_NAME_CHOICE}
    Log To Console    ✅ Entered First house name choice: ${E2E_HOUSE_FIRST_NAME_CHOICE}
    
    # Enter Second name choice
    Enter Second name choice    ${E2E_HOUSE_SECOND_NAME_CHOICE}
    Log To Console    ✅ Entered Second house name choice: ${E2E_HOUSE_SECOND_NAME_CHOICE}
    
    # Click on the Add Button for House Namkaran
    Click on the Add Button
    Log To Console    ✅ Clicked on Add Button
    
    # Enter Third name choice
    Enter Third name choice    ${E2E_HOUSE_THIRD_NAME_CHOICE}
    Log To Console    ✅ Entered Third house name choice: ${E2E_HOUSE_THIRD_NAME_CHOICE}
    
    Log To Console    ✅ Successfully entered E2E House Namkaran Data with YES option

Generate E2E Namkaran Test Data For Child With YES Option
    [Documentation]    Generates unique test data for E2E Child Namkaran with YES option (multiple names)
    ${random_num}=    Evaluate    random.randint(1000, 9999)    random
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    
    # Child and Parent Info
    Set Test Variable    ${E2E_CHILD_NAME}         E2E_ChildName_${random_num}
    Set Test Variable    ${E2E_MOTHER_FIRST}       E2E_MotherFirst_${random_num}
    Set Test Variable    ${E2E_MOTHER_MIDDLE}      E2E_MotherMiddle_${random_num}
    Set Test Variable    ${E2E_MOTHER_LAST}        E2E_MotherLast_${random_num}
    Set Test Variable    ${E2E_FATHER_FIRST}       E2E_FatherFirst_${random_num}
    Set Test Variable    ${E2E_FATHER_MIDDLE}      E2E_FatherMiddle_${random_num}
    Set Test Variable    ${E2E_FATHER_LAST}        E2E_FatherLast_${random_num}
    Set Test Variable    ${E2E_CHILD_EMAIL}        e2echild.${random_num}@test.com
    Set Test Variable    ${E2E_CHILD_PHONE}        70000${random_num}
    Set Test Variable    ${E2E_CHILD_DOB}          2020-01-01
    Set Test Variable    ${E2E_CHILD_GENDER}       Male
    Set Test Variable    ${E2E_CHILD_BIRTH_TIME}   10:00 AM
    Set Test Variable    ${E2E_CHILD_BIRTH_PLACE}  E2E Child Birth Place ${random_num}
    
    # Generate random names for multiple choices
    Set Test Variable    ${E2E_CHILD_FIRST_NAME_CHOICE}    E2E_ChildFirstChoice_${random_num}
    Set Test Variable    ${E2E_CHILD_SECOND_NAME_CHOICE}    E2E_ChildSecondChoice_${random_num}
    Set Test Variable    ${E2E_CHILD_THIRD_NAME_CHOICE}    E2E_ChildThirdChoice_${random_num}
    
    Log To Console    🎯 Generated E2E Child Namkaran Test Data (YES Option):
    Log To Console    🎯 Child Name: ${E2E_CHILD_NAME}
    Log To Console    🎯 Mother: ${E2E_MOTHER_FIRST} ${E2E_MOTHER_MIDDLE} ${E2E_MOTHER_LAST}
    Log To Console    🎯 Father: ${E2E_FATHER_FIRST} ${E2E_FATHER_MIDDLE} ${E2E_FATHER_LAST}
    Log To Console    🎯 Email: ${E2E_CHILD_EMAIL}
    Log To Console    🎯 Phone: ${E2E_CHILD_PHONE}
    Log To Console    🎯 DOB: ${E2E_CHILD_DOB}
    Log To Console    🎯 Gender: ${E2E_CHILD_GENDER}
    Log To Console    🎯 Birth Time: ${E2E_CHILD_BIRTH_TIME}
    Log To Console    🎯 Birth Place: ${E2E_CHILD_BIRTH_PLACE}
    Log To Console    🎯 Child Name Choices: ${E2E_CHILD_FIRST_NAME_CHOICE}, ${E2E_CHILD_SECOND_NAME_CHOICE}, ${E2E_CHILD_THIRD_NAME_CHOICE}

Enter E2E Child Namkaran Data With YES Option
    [Documentation]    Enters the generated E2E test data into Child Namkaran form with YES option for multiple names
    Sleep    2s
    
    # Enter Child Name
    Mobile Input Text    ${FNameInputField}    ${E2E_CHILD_NAME}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Child Name: ${E2E_CHILD_NAME}
    
    # Enter Mother First Name
    Mobile Input Text    ${MNameInputField}    ${E2E_MOTHER_FIRST}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Mother First Name: ${E2E_MOTHER_FIRST}
    
    # Enter Mother Middle Name
    Mobile Input Text    ${LNameInputField}    ${E2E_MOTHER_MIDDLE}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Mother Middle Name: ${E2E_MOTHER_MIDDLE}
    
    # Enter Mother Last Name
    Mobile Input Text    ${FNameInputField}    ${E2E_MOTHER_LAST}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Mother Last Name: ${E2E_MOTHER_LAST}
    
    # Enter Father First Name
    Mobile Input Text    ${MNameInputField}    ${E2E_FATHER_FIRST}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Father First Name: ${E2E_FATHER_FIRST}
    
    # Enter Father Middle Name
    Mobile Input Text    ${LNameInputField}    ${E2E_FATHER_MIDDLE}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Father Middle Name: ${E2E_FATHER_MIDDLE}
    
    # Enter Father Last Name
    Mobile Input Text    ${FNameInputField}    ${E2E_FATHER_LAST}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Father Last Name: ${E2E_FATHER_LAST}
    
    # Enter Email Address
    Mobile Input Text    ${EmailInputField}    ${E2E_CHILD_EMAIL}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Email: ${E2E_CHILD_EMAIL}
    
    # Enter Phone Number
    Mobile Input Text    ${PhoneInputField}    ${E2E_CHILD_PHONE}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Phone Number: ${E2E_CHILD_PHONE}
    
    # Enter Birth Place
    Mobile Input Text    ${Enter_Birth_Place}  ${E2E_CHILD_BIRTH_PLACE}
    Mobile Hide Keyboard
    Log To Console    ✅ Entered Birth Place: ${E2E_CHILD_BIRTH_PLACE}
    
    # Select YES for multiple name choice for the child
    Select Yes for the multiple name choice for the child
    Log To Console    ✅ Selected YES for multiple name choice for child
    
    # Enter First name choice
    Enter name choice 1    ${E2E_CHILD_FIRST_NAME_CHOICE}
    Log To Console    ✅ Entered First child name choice: ${E2E_CHILD_FIRST_NAME_CHOICE}
    
    # Enter Second name choice
    Enter name choice 2    ${E2E_CHILD_SECOND_NAME_CHOICE}
    Log To Console    ✅ Entered Second child name choice: ${E2E_CHILD_SECOND_NAME_CHOICE}
    
    # Click on the Add Button for Child Namkaran
    Click on the Add Button for Child Namkaran
    Log To Console    ✅ Clicked on Add Button for Child Namkaran
    
    # Enter Third name choice
    Enter name choice 3    ${E2E_CHILD_THIRD_NAME_CHOICE}
    Log To Console    ✅ Entered Third child name choice: ${E2E_CHILD_THIRD_NAME_CHOICE}
    
    Log To Console    ✅ Successfully entered E2E Child Namkaran Data with YES option

Verify First Row Column Values
    [Documentation]    Prints the column values in the first row of the Namkaran table for debugging purposes
    Sleep    3s
    
    # Define locators for first row columns (index 2 because index 1 is usually header)
    ${first_row_bride_name}=    Set Variable    xpath=(//div[@role='row' and contains(@class,'MuiDataGrid-row')])[2]//div[@data-field='brideName']//div[@class='MuiDataGrid-cellContent']
    ${first_row_groom_name}=    Set Variable    xpath=(//div[@role='row' and contains(@class,'MuiDataGrid-row')])[2]//div[@data-field='groomName']//div[@class='MuiDataGrid-cellContent']
    ${first_row_email}=    Set Variable    xpath=(//div[@role='row' and contains(@class,'MuiDataGrid-row')])[2]//div[@data-field='email']//div[@class='MuiDataGrid-cellContent']
    ${first_row_phone}=    Set Variable    xpath=(//div[@role='row' and contains(@class,'MuiDataGrid-row')])[2]//div[@data-field='phone']//div[@class='MuiDataGrid-cellContent']
    ${first_row_status}=    Set Variable    xpath=(//div[@role='row' and contains(@class,'MuiDataGrid-row')])[2]//div[@data-field='status']//div[@class='MuiDataGrid-cellContent']
    
    # Wait for first row to be visible
    Web Wait Until Page Contains Element    ${first_row_bride_name}    10s
    
    # Extract values from first row
    ${table_bride_name}=    Web.Get Text    ${first_row_bride_name}
    ${table_groom_name}=    Web.Get Text    ${first_row_groom_name}
    ${table_email}=    Web.Get Text    ${first_row_email}
    ${table_phone}=    Web.Get Text    ${first_row_phone}
    ${table_status}=    Web.Get Text    ${first_row_status}
    
    # Log the extracted values for debugging (no validation)
    Log To Console    📊 First Row Column Values (For Debugging):
    Log To Console    📊 Bride Name: ${table_bride_name}
    Log To Console    📊 Groom Name: ${table_groom_name}
    Log To Console    📊 Email: ${table_email}
    Log To Console    📊 Phone: ${table_phone}
    Log To Console    📊 Status: ${table_status}
    
    Log To Console    ✅ First row column values extracted successfully (no validation performed)

Verify First Row Column Values Alternative
    [Documentation]    Alternative method to verify first row using more generic locators
    Sleep    3s
    
    # Get all rows and verify the first data row (index 1, since 0 is header)
    ${all_rows}=    Web.Get Webelements    xpath=//div[@role='row' and contains(@class,'MuiDataGrid-row')]
    ${row_count}=    Get Length    ${all_rows}
    
    Log To Console    📊 Total rows found: ${row_count}
    
    # Verify we have at least one data row
    Should Be True    ${row_count} > 1    No data rows found in table
    
    # Get the first data row (index 1)
    ${first_data_row}=    Get From List    ${all_rows}    1
    
    # Extract text from all cells in the first row using absolute XPath
    ${row_cells}=    Web.Get Webelements    xpath=(//div[@role='row' and contains(@class,'MuiDataGrid-row')])[2]//div[@data-field]
    
    # Log all cell values for debugging
    FOR    ${cell}    IN    @{row_cells}
        ${field_name}=    Web.Get Element Attribute    ${cell}    data-field
        ${cell_text}=    Web.Get Text    ${cell}
        Log To Console    📊 Cell ${field_name}: ${cell_text}
    END
    
    # Verify specific fields exist and have expected values using absolute XPath
    ${bride_cell}=    Web.Get Webelement    xpath=(//div[@role='row' and contains(@class,'MuiDataGrid-row')])[2]//div[@data-field='brideName']
    ${groom_cell}=    Web.Get Webelement    xpath=(//div[@role='row' and contains(@class,'MuiDataGrid-row')])[2]//div[@data-field='groomName']
    ${email_cell}=    Web.Get Webelement    xpath=(//div[@role='row' and contains(@class,'MuiDataGrid-row')])[2]//div[@data-field='email']
    
    ${bride_text}=    Web.Get Text    ${bride_cell}
    ${groom_text}=    Web.Get Text    ${groom_cell}
    ${email_text}=    Web.Get Text    ${email_cell}
    
    # Verify the values
    ${expected_bride_full_name}=    Set Variable    ${E2E_BRIDE_FIRST_NAME} ${E2E_BRIDE_MIDDLE_NAME} ${E2E_BRIDE_LAST_NAME}
    ${expected_groom_full_name}=    Set Variable    ${E2E_GROOM_FIRST_NAME} ${E2E_GROOM_MIDDLE_NAME} ${E2E_GROOM_LAST_NAME}
    
    Should Be Equal As Strings    ${bride_text}    ${expected_bride_full_name}    Bride name mismatch in first row
    Should Be Equal As Strings    ${groom_text}    ${expected_groom_full_name}    Groom name mismatch in first row
    Should Be Equal As Strings    ${email_text}    ${E2E_NAMKARAN_EMAIL}    Email mismatch in first row
    
    Log To Console    ✅ Alternative first row verification successful

Generate Random Name For Guruji Suggestion
    [Documentation]    Generates a random name for Guruji suggestion in CMS
    ${random_num}=    Evaluate    random.randint(1000, 9999)    random
    ${random_name}=    Set Variable    E2E_GurujiName_${random_num}
    Set Test Variable    ${GURUJI_SUGGESTED_NAME}    ${random_name}
    Log To Console    🎯 Generated Random Name for Guruji: ${GURUJI_SUGGESTED_NAME}
    [Return]    ${random_name}

Generate Dummy Remarks For Namkaran
    [Documentation]    Generates dummy remarks for Namkaran approval
    ${random_num}=    Evaluate    random.randint(1000, 9999)    random
    ${dummy_remarks}=    Set Variable    E2E Dummy remarks for Namkaran approval ${random_num}. This is a test remark generated for automation testing purposes.
    Set Test Variable    ${NAMKARAN_REMARKS}    ${dummy_remarks}
    Log To Console    🎯 Generated Dummy Remarks: ${NAMKARAN_REMARKS}
    [Return]    ${dummy_remarks}

Navigate To Namkaran Management In CMS
    [Documentation]    Navigates to Namkaran Management section in CMS
    Sleep    2s
    Web.Click Element    ${NAMKARAN_MANAGEMENT_MENU}
    Sleep    3s
    Log To Console    ✅ Navigated to Namkaran Management in CMS

Verify Namkaran In Pending Status
    [Documentation]    Verifies that the created Namkaran appears in the list with pending status
    [Arguments]    ${expected_email}    ${expected_name}
    Sleep    3s
    
    # Wait for the table to load
    Web.Wait Until Element Is Visible    ${NAMKARAN_TABLE}    10s
    
    # Search for the namkaran by email or name
    Web.Input Text    ${NAMKARAN_SEARCH_FIELD}    ${expected_email}
    Sleep    2s
    
    # Verify the namkaran appears in the list
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_email}')]    10s
    
    # Verify status is "In Progress" (pending)
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'In Progress')]    10s
    
    Log To Console    ✅ Found Namkaran with email ${expected_email} in pending status

Click Three Dots And View For Namkaran
    [Documentation]    Clicks on the three dots menu and selects view for a specific namkaran
    [Arguments]    ${expected_email}
    Sleep    2s
    
    # Find the row with the specific email and click three dots
    ${three_dots_locator}=    Set Variable    xpath=//div[contains(text(),'${expected_email}')]/ancestor::div[@role='row']//button[@aria-label='more']
    Web.Wait Until Element Is Visible    ${three_dots_locator}    10s
    Web.Click Element    ${three_dots_locator}
    Sleep    1s
    
    # Click on View button
    Web.Click Element    ${VIEW_NAMKARAN_BUTTON}
    Sleep    3s
    
    Log To Console    ✅ Clicked three dots and selected View for Namkaran with email ${expected_email}

Verify Bride And Groom Details In CMS
    [Documentation]    Verifies the bride and groom details in the CMS Namkaran detail page
    [Arguments]    ${expected_bride_first}    ${expected_bride_middle}    ${expected_bride_last}    ${expected_groom_first}    ${expected_groom_middle}    ${expected_groom_last}
    
    # Wait for the detail page to load
    Web.Wait Until Element Is Visible    ${NAMKARAN_DETAIL_HEADER}    10s
    
    # Verify Bride details
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_bride_first}')]    10s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_bride_middle}')]    10s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_bride_last}')]    10s
    
    # Verify Groom details
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_groom_first}')]    10s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_groom_middle}')]    10s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_groom_last}')]    10s
    
    Log To Console    ✅ Verified Bride details: ${expected_bride_first} ${expected_bride_middle} ${expected_bride_last}
    Log To Console    ✅ Verified Groom details: ${expected_groom_first} ${expected_groom_middle} ${expected_groom_last}

Verify Business Owner Details In CMS
    [Documentation]    Verifies the business owner details in the CMS Namkaran detail page
    [Arguments]    ${expected_owner_first}    ${expected_owner_middle}    ${expected_owner_last}
    
    # Wait for the detail page to load
    Web.Wait Until Element Is Visible    ${NAMKARAN_DETAIL_HEADER}    10s
    
    # Verify Business Owner details
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_owner_first}')]    10s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_owner_middle}')]    10s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_owner_last}')]    10s
    
    Log To Console    ✅ Verified Business Owner details: ${expected_owner_first} ${expected_owner_middle} ${expected_owner_last}

Verify House Owner Details In CMS
    [Documentation]    Verifies the house owner details in the CMS Namkaran detail page
    [Arguments]    ${expected_owner_first}    ${expected_owner_middle}    ${expected_owner_last}
    
    # Wait for the detail page to load
    Web.Wait Until Element Is Visible    ${NAMKARAN_DETAIL_HEADER}    10s
    
    # Verify House Owner details
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_owner_first}')]    10s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_owner_middle}')]    10s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_owner_last}')]    10s
    
    Log To Console    ✅ Verified House Owner details: ${expected_owner_first} ${expected_owner_middle} ${expected_owner_last}

Verify Child And Parent Details In CMS
    [Documentation]    Verifies the child and parent details in the CMS Namkaran detail page
    [Arguments]    ${expected_child_name}    ${expected_mother_first}    ${expected_mother_middle}    ${expected_mother_last}    ${expected_father_first}    ${expected_father_middle}    ${expected_father_last}
    
    # Wait for the detail page to load
    Web.Wait Until Element Is Visible    ${NAMKARAN_DETAIL_HEADER}    10s
    
    # Verify Child details
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_child_name}')]    10s
    
    # Verify Mother details
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_mother_first}')]    10s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_mother_middle}')]    10s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_mother_last}')]    10s
    
    # Verify Father details
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_father_first}')]    10s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_father_middle}')]    10s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_father_last}')]    10s
    
    Log To Console    ✅ Verified Child details: ${expected_child_name}
    Log To Console    ✅ Verified Mother details: ${expected_mother_first} ${expected_mother_middle} ${expected_mother_last}
    Log To Console    ✅ Verified Father details: ${expected_father_first} ${expected_father_middle} ${expected_father_last}

Enter Guruji Suggested Name
    [Documentation]    Enters a random generated name in the Suggested Name by Guruji field
    [Arguments]    ${suggested_name}
    
    # Wait for the suggested name field to be visible
    Web.Wait Until Element Is Visible    ${GURUJI_SUGGESTED_NAME_FIELD}    10s
    
    # Clear and enter the suggested name
    Web.Clear Element Text    ${GURUJI_SUGGESTED_NAME_FIELD}
    Web.Input Text    ${GURUJI_SUGGESTED_NAME_FIELD}    ${suggested_name}
    
    Log To Console    ✅ Entered Guruji Suggested Name: ${suggested_name}

Enter Namkaran Remarks
    [Documentation]    Enters dummy remarks in the Remark field
    [Arguments]    ${remarks}
    
    # Wait for the remarks field to be visible
    Web.Wait Until Element Is Visible    ${NAMKARAN_REMARKS_FIELD}    10s
    
    # Clear and enter the remarks
    Web.Clear Element Text    ${NAMKARAN_REMARKS_FIELD}
    Web.Input Text    ${NAMKARAN_REMARKS_FIELD}    ${remarks}
    
    Log To Console    ✅ Entered Namkaran Remarks: ${remarks}

Click Approve Button
    [Documentation]    Clicks on the Approve button to approve the Namkaran request
    Sleep    2s
    
    # Wait for the approve button to be visible
    Web.Wait Until Element Is Visible    ${APPROVE_NAMKARAN_BUTTON}    10s
    
    # Click on Approve button
    Web.Click Element    ${APPROVE_NAMKARAN_BUTTON}
    Sleep    3s
    
    Log To Console    ✅ Clicked on Approve Button

Verify Namkaran Status Changed To Completed
    [Documentation]    Verifies that the Namkaran status has changed from pending to completed
    [Arguments]    ${expected_email}
    Sleep    3s
    
    # Navigate back to the list if needed
    Web.Go Back
    Sleep    2s
    
    # Search for the namkaran by email
    Web.Input Text    ${NAMKARAN_SEARCH_FIELD}    ${expected_email}
    Sleep    2s
    
    # Verify the namkaran appears in the list with "Completed" status
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_email}')]    10s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'Completed')]    10s
    
    Log To Console    ✅ Verified Namkaran status changed to Completed for email ${expected_email}

Click Reject Button
    [Documentation]    Clicks on the Reject button to reject the Namkaran request
    Sleep    2s
    
    # Wait for the reject button to be visible
    Web.Wait Until Element Is Visible    ${REJECT_NAMKARAN_BUTTON}    10s
    
    # Click on Reject button
    Web.Click Element    ${REJECT_NAMKARAN_BUTTON}
    Sleep    3s
    
    Log To Console    ✅ Clicked on Reject Button

Verify Namkaran Status Changed To Rejected
    [Documentation]    Verifies that the Namkaran status has changed from pending to rejected
    [Arguments]    ${expected_email}
    Sleep    3s
    
    # Navigate back to the list if needed
    Web.Go Back
    Sleep    2s
    
    # Search for the namkaran by email
    Web.Input Text    ${NAMKARAN_SEARCH_FIELD}    ${expected_email}
    Sleep    2s
    
    # Verify the namkaran appears in the list with "Rejected" status
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'${expected_email}')]    10s
    Web.Wait Until Element Is Visible    xpath=//div[contains(text(),'Rejected')]    10s
    
    Log To Console    ✅ Verified Namkaran status changed to Rejected for email ${expected_email}
