*** Settings ***
Resource   libraries.robot
Resource   variables.robot

*** Variables ***
${SKIP_INTRO_GUIDE}               xpath=//android.widget.Button[@content-desc="Skip"]

*** Keywords ***
Open Gurutattva App
    Mobile Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    automationName=${AUTOMATION_NAME}
    ...    noReset=${NO_RESET}
    ...    newCommandTimeout=${NEW_COMMAND_TIMEOUT}
    ...    autoGrantPermissions=${AUTO_GRANT_PERMISSIONS}
    ...    autoAcceptAlerts=${AUTO_ACCEPT_ALERTS}
    ...    skipServerInstallation=true
    ...    skipDeviceInitialization=true
    Sleep    10s

Close Gurutattva App
    Mobile Terminate Application    ${APP_PACKAGE}     
    Sleep    2s
    Mobile Press Keycode    187    # Opens recent apps
    Sleep    2s
    # Example: Swipe to remove (coordinates depend on device)
    Mobile Swipe    500    1200    500    400    500
    Mobile Close Application

Scroll Until Element Visible
    [Arguments]    ${locator}
    ${height}=      Mobile Get Window Height
    ${width}=       Mobile Get Window Width
    ${start_x}=     Evaluate    ${width} * 0.5
    ${start_y}=     Evaluate    ${height} * 0.6
    ${offset_x}=    Set Variable    0
    ${offset_y}=    Evaluate    -1 * ${height} * 0.4
 

    FOR    ${i}    IN RANGE    0    5
        ${visible}=    Run Keyword And Return Status    Mobile Page Should Contain Element    ${locator}
        Exit For Loop If    ${visible}
        Mobile Swipe    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}    800
    END

Scroll Up Until Element Visible
    [Arguments]    ${locator}
    ${height}=      Mobile Get Window Height
    ${width}=       Mobile Get Window Width
    ${start_x}=     Evaluate    ${width} * 0.5
    ${start_y}=     Evaluate    ${height} * 0.4
    ${end_x}=       Set Variable    ${start_x}
    ${end_y}=       Evaluate    ${height} * 0.8    # Swipe from 40% to 80% (upwards)
 
    FOR    ${i}    IN RANGE    0    5
        ${visible}=    Run Keyword And Return Status    Mobile Page Should Contain Element    ${locator}
        Exit For Loop If    ${visible}
        Mobile Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}    800
    END

Swipe Until Element Visible
    [Arguments]    ${locator}
    ${height}=      Mobile Get Window Height
    ${width}=       Mobile Get Window Width
    ${start_x}=     Evaluate    ${width} * 0.5
    ${start_y}=     Evaluate    ${height} * 0.8
    ${end_y}=       Evaluate    ${height} * 0.2

    FOR    ${i}    IN RANGE    0    7
        ${visible}=    Run Keyword And Return Status    Mobile Page Should Contain Element    ${locator}
        Exit For Loop If    ${visible}
        Mobile Swipe    ${start_x}    ${start_y}    ${start_x}    ${end_y}    800
    END


Clear Name Field
    [Arguments]    ${field_locator}
    Mobile Wait Until Element Is Visible    ${field_locator}    10s
    Mobile Click Element                    ${field_locator}
    Mobile Clear Text                       ${field_locator}

Swipe Audio of the Day Section To Second Card
    [Documentation]    Swipe left on the Audio of the Day section so only the second card is fully visible.
    Mobile Wait Until Element Is Visible    ${Audio_of_the_day}    10s
    ${location}=    Mobile Get Element Location    ${Audio_of_the_day}
    ${size}=        Mobile Get Element Size        ${Audio_of_the_day}
    # Start and end X are set to avoid the screen edge (swipe within the card area)
    ${start_x}=     Evaluate    ${location['x']} + int(${size['width']} * 0.9)
    ${end_x}=       Evaluate    ${location['x']} + int(${size['width']} * 0.2)
    ${y}=           Evaluate    ${location['y']} + int(${size['height']} / 2)
    Mobile Swipe    ${start_x}    ${y}    ${end_x}    ${y}    800   

Swipe Right Until Element Visible
    [Arguments]    ${Audio_of_the_day}    ${locator}
    Mobile Wait Until Element Is Visible    ${Audio_of_the_day}    10s
    ${location}=    Mobile Get Element Location    ${Audio_of_the_day}
    ${size}=        Mobile Get Element Size        ${Audio_of_the_day}

    ${start_x}=     Evaluate    ${location['x']} + int(${size['width']} * 0.9)
    ${end_x}=       Evaluate    ${location['x']} + int(${size['width']} * 0.1)
    ${y}=           Evaluate    ${location['y']} + int(${size['height']} / 2)

    FOR    ${i}    IN RANGE    0    7
        ${visible}=    Run Keyword And Return Status    Mobile Page Should Contain Element    ${locator}
        Exit For Loop If    ${visible}
        Mobile Swipe    ${start_x}    ${y}    ${end_x}    ${y}    800
    END

Take Mobile Screenshot
    [Documentation]    Takes a screenshot for mobile tests and saves it to results/Screenshot directory
    [Arguments]    ${filename}
    
    # Create screenshot directory if it doesn't exist
    Create Directory    ${EXECDIR}/results/Screenshot
    
    # Take screenshot using the proper Mobile prefix
    Mobile Capture Page Screenshot    ${EXECDIR}/results/Screenshot/${filename}
    Log To Console    📸 Mobile screenshot saved to: ${EXECDIR}/results/Screenshot/${filename}

Capture Screenshot On Failure
    [Arguments]    ${test_name}
    ${timestamp}=    Get Time    epoch
    ${mobile_file}=    Set Variable    ${EXECDIR}/results/Screenshot/${test_name}_${timestamp}_mobile.png
    ${web_file}=    Set Variable    ${EXECDIR}/results/Screenshot/${test_name}_${timestamp}_web.png
    Create Directory    ${EXECDIR}/results/Screenshot
    ${mobile_status}=    Run Keyword And Ignore Error    Mobile.Capture Page Screenshot    ${mobile_file}
    IF    '${mobile_status[0]}' == 'PASS'
        Log To Console    ✅ Mobile screenshot captured for test: ${test_name}
        Log    Mobile screenshot: ${mobile_file}
    ELSE
        Log To Console    ⚠️ Mobile screenshot capture failed, capturing web screenshot...
        Web.Capture Page Screenshot    ${web_file}
        Log    Web screenshot: ${web_file}
    END

Skip introductory guide on initial application launch
    [Documentation]    Skips the introductory guide if it appears on the first app launch.
    Mobile Wait Until Element Is Visible    ${SKIP_INTRO_GUIDE}    10s
    Mobile Click Element    ${SKIP_INTRO_GUIDE}
    Sleep    2s