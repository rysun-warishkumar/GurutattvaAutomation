*** Settings ***
Resource    ../resources/libraries.robot
Resource    ../resources/keywords.robot
Library    DateTime
Resource   ../resources/web_keywords.robot
Resource   ../pages/PrayerPage.robot

*** Variables ***
${APPILICANT_NAME}                    xpath=//div[@data-field='requesterName' and contains(text(),'FN MN LN')]
${APPILICANT_NAME_OTHER}              xpath=//div[@data-field='requesterName' and contains(text(),'${E2E_PRAYER_APPLICANT_NAME_OTHER}')]
${CATEGORY_CHOICE}                    xpath=//div[@data-field='prayerCategoryId' and contains(text(),'Career')]
${PERSON_NAME}                        xpath=//div[@data-field='personName' and contains(text(),'${E2E_PRAYER_PERSON_NAME}')]
${PERSON_CITY}                        xpath=//div[@data-field='personCity' and contains(text(),'${E2E_PRAYER_FULL_ADDRESS}')]
${OTHER_PERSON_NAME}                  xpath=//div[@data-field='personName' and contains(text(),'${E2E_PRAYER_OTHER_NAME}')]
${OTHER_PERSON_CITY}                  xpath=//div[@data-field='personCity' and contains(text(),'${E2E_PRAYER_OTHER_FULL_ADDRESS}')]
${PRAYER_MENU}                        xpath=//span[contains(text(),'Prayer')]


# E2E Test Data Variables (will be set during test execution)
${E2E_PRAYER_RANDOM_NUMBER}                 ${EMPTY}
${E2E_PRAYER_APPLICANT_NAME}                ${EMPTY}
${E2E_PRAYER_PERSON_NAME}                   ${EMPTY}
${E2E_PRAYER_FULL_ADDRESS}                  ${EMPTY}
${E2E_PRAYER_OTHER_NAME}                    ${EMPTY}
${E2E_PRAYER_OTHER_FULL_ADDRESS}            ${EMPTY}
${E2E_PRAYER_APPLICANT_NAME_OTHER}          ${EMPTY}

*** Keywords ***
Generate E2E Test Data for Prayer
    [Documentation]    Generates unique test data for end-to-end validation
    ${random_num}=    Evaluate    random.randint(1000, 9999)    random
    Set Test Variable    ${E2E_PRAYER_RANDOM_NUMBER}     ${random_num}
    Set Test Variable    ${E2E_PRAYER_APPLICANT_NAME}    E2E_Applicant_Name_${random_num}
    Set Test Variable    ${E2E_PRAYER_PERSON_NAME}       E2E_Person_Name_${random_num}
    Set Test Variable    ${E2E_PRAYER_FULL_ADDRESS}      E2E_Full_Address_${random_num}
    Log To Console    🎯 Generated Test Data for Prayer:
    # Log To Console    🎯 Applicant: ${E2E_PRAYER_APPLICANT_NAME}
    Log To Console    🎯 Person: ${E2E_PRAYER_PERSON_NAME}
    Log To Console    🎯 Full Address: ${E2E_PRAYER_FULL_ADDRESS}

Generate E2E Test Data for selected other prayer    
    [Documentation]    Generates unique test data for end-to-end validation
    ${random_num}=    Evaluate    random.randint(1000, 9999)    random
    Set Test Variable    ${E2E_PRAYER_RANDOM_NUMBER}     ${random_num}
    Set Test Variable    ${E2E_PRAYER_APPLICANT_NAME_OTHER}          E2E_Applicant_Name_Other_${random_num}
    Set Test Variable    ${E2E_PRAYER_OTHER_NAME}                    E2E_Other_Name_${random_num}
    Set Test Variable    ${E2E_PRAYER_OTHER_FULL_ADDRESS}            E2E_Other_Full_Address_${random_num}
    Log To Console    🎯 Generated Test Data for Prayer:
    Log To Console    🎯 Applicant: ${E2E_PRAYER_APPLICANT_NAME_OTHER}
    Log To Console    🎯 Person: ${E2E_PRAYER_OTHER_NAME}
    Log To Console    🎯 Full Address: ${E2E_PRAYER_OTHER_FULL_ADDRESS}
 
Click on the Prayer Menu
    [Documentation]    Clicks on the Prayer menu in the web application
    Web Wait Until Page Contains Element    ${PRAYER_MENU}    10s
    Web Click Element    ${PRAYER_MENU}
	
Search for the created prayer
    Web Wait Until Page Contains Element    xpath=//input[@type='search' and @placeholder='Search…']    10s
    Web Click Element    xpath=//input[@type='search' and @placeholder='Search…']
    Sleep    2s
    Web Input Text    xpath=//input[@type='search' and @placeholder='Search…']    ${E2E_PRAYER_PERSON_NAME}
    Sleep    2s

Search for the created other prayer
    Web Wait Until Page Contains Element    xpath=//input[@type='search' and @placeholder='Search…']    10s
    Web Click Element    xpath=//input[@type='search' and @placeholder='Search…']
    Sleep    2s
    Web Input Text    xpath=//input[@type='search' and @placeholder='Search…']    ${E2E_PRAYER_APPLICANT_NAME_OTHER}
    Sleep    2s
	
Verify the Newly added Self Prayer is displayed in the CMS
     [Documentation]    Verify the Newly added Self Prayer is displayed in the CMS
     Web Wait Until Page Contains Element    ${APPILICANT_NAME}    5s
	 Web Page Should Contain Element    ${APPILICANT_NAME}
     Web Wait Until Page Contains Element    ${CATEGORY_CHOICE}    5s
     Web Page Should Contain Element    ${CATEGORY_CHOICE}
	 Web Wait Until Page Contains Element    ${PERSON_NAME}    5s
     Web Page Should Contain Element    ${PERSON_NAME}
	 Web Wait Until Page Contains Element    ${PERSON_CITY}    5s
     Web Page Should Contain Element    ${PERSON_CITY}
     Log To Console   Self Prayer displayed in list
     Sleep   2s
     
Verify the Newly added Other Prayer is displayed in the CMS
     [Documentation]    Verify the Newly added Other Prayer is displayed in the CMS
     Web Wait Until Page Contains Element    ${APPILICANT_NAME_OTHER}    5s
	 Web Page Should Contain Element    ${APPILICANT_NAME_OTHER}
     Web Wait Until Page Contains Element    ${CATEGORY_CHOICE}    5s
     Web Page Should Contain Element    ${CATEGORY_CHOICE}
     Web Wait Until Page Contains Element    ${OTHER_PERSON_NAME}    5s
     Web Page Should Contain Element    ${OTHER_PERSON_NAME}
     Web Wait Until Page Contains Element    ${OTHER_PERSON_CITY}    5s
     Web Page Should Contain Element    ${OTHER_PERSON_CITY}
     Log To Console   Other Prayer displayed in list
     Sleep   2s     	

Enter Second Name for Other Prayer
    Swipe Until Element Visible    ${Submit_Prayer_Button}
    Mobile.Wait Until Element Is Visible    ${Enter_Name}    10s
    Mobile.Click Element    ${Enter_Name}
    Mobile.Input Text    ${Enter_Name}   ${E2E_PRAYER_OTHER_NAME}
    Mobile.Hide Keyboard      
    
Enter Full Address for Other Prayer
    Mobile.Wait Until Element Is Visible    ${Enter_Address}    10s
    Mobile.Click Element    ${Enter_Address}
    Mobile.Input Text    ${Enter_Address}    ${E2E_PRAYER_OTHER_FULL_ADDRESS}
    Mobile.Hide Keyboard

Enter Generated Name for Prayer
    # Scroll Up Until Element Visible    ${Verify_Prayer_Screen}
    Mobile.Wait Until Element Is Visible    ${Enter_Name}    10s
    Mobile.Click Element    ${Enter_Name}
    Mobile.Input Text    ${Enter_Name}      ${E2E_PRAYER_APPLICANT_NAME_OTHER}
    Mobile.Hide Keyboard    

Enter Generated Second Name for Prayer
    Swipe Until Element Visible    ${Submit_Prayer_Button}
    Mobile.Wait Until Element Is Visible    ${Enter_Name}    10s
    Mobile.Click Element    ${Enter_Name}
    Mobile.Input Text    ${Enter_Name}   ${E2E_PRAYER_PERSON_NAME}
    Mobile.Hide Keyboard

Enter Generated Address for Prayer
    Mobile.Wait Until Element Is Visible    ${Enter_Address}    10s
    Mobile.Click Element    ${Enter_Address}
    Mobile.Input Text    ${Enter_Address}    ${E2E_PRAYER_FULL_ADDRESS}
    Mobile.Hide Keyboard        

Click on Other Prayer Option
    Mobile.Wait Until Element Is Visible    ${other_Prayer}    10s
    Mobile.Click Element    ${other_Prayer}    