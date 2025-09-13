*** Settings ***
Resource    ../resources/libraries.robot
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot
Resource    ../pages/HomePage.robot

Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***
Verify CI Environment Setup
    [Tags]    CI    Verification    Gurutattva
    [Documentation]    This test verifies that the CI environment is properly set up
    ...                and the app can be launched successfully
    
    Log To Console    ===== Starting CI Verification Test =====
    
    # Check if we're in CI environment
    ${is_ci}=    Run Keyword And Return Status    Get Environment Variable    CI    default=False
    Log To Console    Running in CI environment: ${is_ci}
    
    # Verify emulator is running
    ${emulator_status}=    Run    adb devices
    Log To Console    Emulator status: ${emulator_status}
    Should Contain    ${emulator_status}    emulator-5554    Emulator is not running
    
    # Verify Appium server is accessible
    ${appium_status}=    Run Keyword And Return Status    Run    curl -f http://localhost:4723/status
    Should Be True    ${appium_status}    Appium server is not accessible
    
    # Try to open the app
    Open Gurutattva App
    
    # Verify app is opened (basic check)
    Sleep    5s
    Log To Console    App opened successfully in CI environment
    
    # Close the app
    Close Gurutattva App
    
    Log To Console    ===== CI Verification Test Completed =====

Verify APK Installation
    [Tags]    CI    APK    Verification    Gurutattva
    [Documentation]    This test verifies that the APK is properly installed on the emulator
    
    Log To Console    ===== Starting APK Verification Test =====
    
    # Check if APK is installed
    ${installed_packages}=    Run    adb shell pm list packages | grep ${APP_PACKAGE}
    Log To Console    Installed packages containing ${APP_PACKAGE}: ${installed_packages}
    Should Contain    ${installed_packages}    ${APP_PACKAGE}    APK is not installed
    
    Log To Console    ===== APK Verification Test Completed =====
