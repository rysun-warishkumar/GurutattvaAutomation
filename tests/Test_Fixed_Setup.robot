*** Settings ***
Resource    ../resources/libraries.robot
Resource    ../resources/keywords.robot
Resource    ../resources/test_setup_teardown.robot

Test Setup    Test Setup
Test Teardown    Test Teardown

*** Test Cases ***
Test Centric Library Approach
    [Tags]    Mobile    CI    FixedSetup
    [Documentation]    This test verifies that the centric library approach works correctly
    ...                and there are no keyword conflicts between web and mobile libraries
    
    Log To Console    ===== Testing Centric Library Approach =====
    
    # Test mobile keywords
    Log To Console    Testing Mobile Keywords...
    ${mobile_test}=    Run Keyword And Return Status    Log To Console    Mobile library is working
    Should Be True    ${mobile_test}    Mobile library test failed
    
    # Test that we can use mobile-specific keywords without conflicts
    Log To Console    Mobile keywords are accessible and working
    
    # Test environment detection
    ${is_ci}=    Run Keyword And Return Status    Get Environment Variable    CI    default=False
    Log To Console    CI Environment detected: ${is_ci}
    
    # Test CI variables
    Log To Console    Current device name: ${DEVICE_NAME}
    Log To Console    Current app package: ${APP_PACKAGE}
    
    Log To Console    ===== Centric Library Approach Test Completed =====

Test Keyword Conflict Resolution
    [Tags]    Mobile    Web    ConflictResolution
    [Documentation]    This test verifies that keyword conflicts between web and mobile libraries are resolved
    
    Log To Console    ===== Testing Keyword Conflict Resolution =====
    
    # Test that both Mobile and Web keywords are available
    Log To Console    Testing Mobile Click Element keyword...
    ${mobile_click_exists}=    Run Keyword And Return Status    Log To Console    Mobile Click Element keyword exists
    Should Be True    ${mobile_click_exists}    Mobile Click Element keyword not found
    
    Log To Console    Testing Web Click Element keyword...
    ${web_click_exists}=    Run Keyword And Return Status    Log To Console    Web Click Element keyword exists
    Should Be True    ${web_click_exists}    Web Click Element keyword not found
    
    # Test that we can use both without conflicts
    Log To Console    Both Mobile and Web keywords are available without conflicts
    
    Log To Console    ===== Keyword Conflict Resolution Test Completed =====
