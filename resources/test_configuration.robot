*** Settings ***
Resource    libraries.robot
Resource    ci_variables.robot

*** Variables ***
# Test execution configuration
${TEST_TIMEOUT}         300s
${IMPLICIT_WAIT}        10s
${PAGE_LOAD_TIMEOUT}    30s

*** Keywords ***
Initialize Test Environment
    [Documentation]    Initialize the test environment based on test type
    [Arguments]    ${test_type}=mobile
    
    Log To Console    ===== Initializing Test Environment =====
    Log To Console    Test Type: ${test_type}
    
    # Check CI environment
    Check CI Environment
    
    # Get CI variables if in CI
    Get CI Variables
    
    # Set up test-specific configurations
    IF    '${test_type}' == 'mobile'
        Initialize Mobile Environment
    ELSE IF    '${test_type}' == 'web'
        Initialize Web Environment
    ELSE
        Log To Console    Unknown test type: ${test_type}
        Fail    Invalid test type: ${test_type}
    END
    
    Log To Console    ===== Test Environment Initialized =====

Initialize Mobile Environment
    [Documentation]    Initialize mobile-specific environment
    Log To Console    Initializing Mobile Environment...
    
    # Wait for emulator in CI
    Wait For Emulator Ready
    
    # Verify Appium connection in CI
    Verify Appium Connection
    
    # Set mobile-specific timeouts
    Set Suite Variable    ${TEST_TIMEOUT}    300s
    Set Suite Variable    ${IMPLICIT_WAIT}    10s
    
    Log To Console    Mobile Environment Initialized

Initialize Web Environment
    [Documentation]    Initialize web-specific environment
    Log To Console    Initializing Web Environment...
    
    # Set web-specific timeouts
    Set Suite Variable    ${TEST_TIMEOUT}    60s
    Set Suite Variable    ${IMPLICIT_WAIT}    10s
    Set Suite Variable    ${PAGE_LOAD_TIMEOUT}    30s
    
    Log To Console    Web Environment Initialized

Cleanup Test Environment
    [Documentation]    Clean up test environment
    [Arguments]    ${test_type}=mobile
    
    Log To Console    ===== Cleaning Up Test Environment =====
    Log To Console    Test Type: ${test_type}
    
    IF    '${test_type}' == 'mobile'
        Cleanup Mobile Environment
    ELSE IF    '${test_type}' == 'web'
        Cleanup Web Environment
    END
    
    Log To Console    ===== Test Environment Cleaned Up =====

Cleanup Mobile Environment
    [Documentation]    Clean up mobile-specific environment
    Log To Console    Cleaning up Mobile Environment...
    
    # Close any open mobile applications
    Run Keyword And Ignore Error    Mobile Close Application
    
    Log To Console    Mobile Environment Cleaned Up

Cleanup Web Environment
    [Documentation]    Clean up web-specific environment
    Log To Console    Cleaning up Web Environment...
    
    # Close any open browsers
    Run Keyword And Ignore Error    Web Close All Browsers
    
    Log To Console    Web Environment Cleaned Up

Get Test Type From Tags
    [Documentation]    Determine test type from test tags
    [Arguments]    ${test_tags}
    
    ${is_mobile}=    Run Keyword And Return Status    Should Contain    ${test_tags}    Mobile
    ${is_web}=    Run Keyword And Return Status    Should Contain    ${test_tags}    Web
    
    IF    ${is_mobile}
        RETURN    mobile
    ELSE IF    ${is_web}
        RETURN    web
    ELSE
        RETURN    mobile    # Default to mobile for backward compatibility
    END

Setup Test Based On Type
    [Documentation]    Setup test based on test type determined from tags
    ${test_type}=    Get Test Type From Tags    ${TEST TAGS}
    Initialize Test Environment    ${test_type}

Teardown Test Based On Type
    [Documentation]    Teardown test based on test type determined from tags
    ${test_type}=    Get Test Type From Tags    ${TEST TAGS}
    Cleanup Test Environment    ${test_type}
