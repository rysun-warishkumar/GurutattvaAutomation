*** Settings ***
Library    OperatingSystem
Library    String

*** Variables ***
# CI-specific variables for GitHub Actions
${CI_REMOTE_URL}        http://localhost:4723
${CI_PLATFORM_NAME}     Android
${CI_DEVICE_NAME}       emulator-5554
${CI_APP_PACKAGE}       com.org.gurutattva.app
${CI_APP_ACTIVITY}      com.example.gurutattva_flutter_app.MainActivity
${CI_AUTOMATION_NAME}   UiAutomator2
${CI_NO_RESET}          true
${CI_NEW_COMMAND_TIMEOUT}    300
${CI_AUTO_GRANT_PERMISSIONS}    true
${CI_AUTO_ACCEPT_ALERTS}       true
${CI_SKIP_SERVER_INSTALLATION}  true
${CI_SKIP_DEVICE_INITIALIZATION}    true

*** Keywords ***
Get CI Variables
    [Documentation]    Returns CI-specific variables if running in CI, otherwise returns local variables
    ${is_ci}=    Run Keyword And Return Status    Get Environment Variable    CI    default=False
    
    IF    ${is_ci}
        Log To Console    Using CI environment variables
        Set Suite Variable    ${REMOTE_URL}    ${CI_REMOTE_URL}
        Set Suite Variable    ${PLATFORM_NAME}    ${CI_PLATFORM_NAME}
        Set Suite Variable    ${DEVICE_NAME}    ${CI_DEVICE_NAME}
        Set Suite Variable    ${APP_PACKAGE}    ${CI_APP_PACKAGE}
        Set Suite Variable    ${APP_ACTIVITY}    ${CI_APP_ACTIVITY}
        Set Suite Variable    ${AUTOMATION_NAME}    ${CI_AUTOMATION_NAME}
        Set Suite Variable    ${NO_RESET}    ${CI_NO_RESET}
        Set Suite Variable    ${NEW_COMMAND_TIMEOUT}    ${CI_NEW_COMMAND_TIMEOUT}
        Set Suite Variable    ${AUTO_GRANT_PERMISSIONS}    ${CI_AUTO_GRANT_PERMISSIONS}
        Set Suite Variable    ${AUTO_ACCEPT_ALERTS}    ${CI_AUTO_ACCEPT_ALERTS}
        Set Suite Variable    ${SKIP_SERVER_INSTALLATION}    ${CI_SKIP_SERVER_INSTALLATION}
        Set Suite Variable    ${SKIP_DEVICE_INITIALIZATION}    ${CI_SKIP_DEVICE_INITIALIZATION}
    ELSE
        Log To Console    Using local environment variables
    END

Wait For Emulator Ready
    [Documentation]    Wait for emulator to be ready in CI environment
    ${is_ci}=    Run Keyword And Return Status    Get Environment Variable    CI    default=False
    
    IF    ${is_ci}
        Log To Console    Emulator should already be ready from workflow setup
        # Just verify the emulator is accessible
        ${device_info}=    Run    adb devices
        Log To Console    Device status: ${device_info}
        Should Contain    ${device_info}    emulator-5554    Emulator not found in device list
    END

Verify Appium Connection
    [Documentation]    Verify Appium server is running and accessible
    ${is_ci}=    Run Keyword And Return Status    Get Environment Variable    CI    default=False
    
    IF    ${is_ci}
        Log To Console    Verifying Appium connection...
        FOR    ${i}    IN RANGE    10
            ${status}=    Run Keyword And Return Status    Run    curl -f http://localhost:4723/status
            Exit For Loop If    ${status}
            Sleep    3s
        END
        
        Should Be True    ${status}    Appium server is not responding
        Log To Console    Appium connection verified!
    END

Check CI Environment
    [Documentation]    Check if running in CI environment and log relevant information
    ${is_ci}=    Run Keyword And Return Status    Get Environment Variable    CI    default=False
    Log To Console    ===== Environment Check =====
    Log To Console    Running in CI: ${is_ci}
    
    IF    ${is_ci}
        ${github_actor}=    Get Environment Variable    GITHUB_ACTOR    default=Unknown
        ${github_ref}=    Get Environment Variable    GITHUB_REF    default=Unknown
        Log To Console    GitHub Actor: ${github_actor}
        Log To Console    GitHub Ref: ${github_ref}
    END
    
    Log To Console    ===== Environment Check Complete =====
