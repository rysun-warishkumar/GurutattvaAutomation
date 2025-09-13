*** Settings ***
# Import libraries with aliases to avoid conflicts
Library    AppiumLibrary    WITH NAME    Mobile
Library    SeleniumLibrary    WITH NAME    Web
Library    OperatingSystem
Library    AppiumLibrary    run_on_failure=No Operation
Library    SeleniumLibrary    run_on_failure=No Operation

*** Keywords ***
# Mobile-specific keywords
Mobile Click Element
    [Arguments]    ${locator}
    Mobile.Click Element    ${locator}

Mobile Wait Until Element Is Visible
    [Arguments]    ${locator}    ${timeout}=10s
    Mobile.Wait Until Element Is Visible    ${locator}    ${timeout}

Mobile Input Text
    [Arguments]    ${locator}    ${text}
    Mobile.Input Text    ${locator}    ${text}

Mobile Clear Text
    [Arguments]    ${locator}
    Mobile.Clear Text    ${locator}

Mobile Get Element Attribute
    [Arguments]    ${locator}    ${attribute}
    ${result}=    Mobile.Get Element Attribute    ${locator}    ${attribute}
    RETURN    ${result}

Mobile Get Element Location
    [Arguments]    ${locator}
    ${result}=    Mobile.Get Element Location    ${locator}
    RETURN    ${result}

Mobile Get Element Size
    [Arguments]    ${locator}
    ${result}=    Mobile.Get Element Size    ${locator}
    RETURN    ${result}

Mobile Get Webelements
    [Arguments]    ${locator}
    ${result}=    Mobile.Get Webelements    ${locator}
    RETURN    ${result}

Mobile Element Should Be Visible
    [Arguments]    ${locator}
    Mobile.Element Should Be Visible    ${locator}

Mobile Element Should Be Disabled
    [Arguments]    ${locator}
    [Documentation]    Checks if a mobile element is disabled by examining its enabled attribute
    ${enabled}=    Mobile.Get Element Attribute    ${locator}    enabled
    Should Be Equal As Strings    ${enabled}    false    Element should be disabled but it is enabled
    Log To Console    ✅ Element is disabled: ${locator}

Mobile Page Should Contain Element
    [Arguments]    ${locator}
    Mobile.Page Should Contain Element    ${locator}

# Mobile screenshot capture with explicit naming
Mobile Capture Page Screenshot
    [Arguments]    ${filename}
    Mobile.Capture Page Screenshot    ${filename}

# Mobile Application Management
Mobile Open Application
    [Arguments]    ${remote_url}    &{kwargs}
    Mobile.Open Application    ${remote_url}    &{kwargs}

Mobile Close Application
    Mobile.Close Application



# Mobile Gestures and Actions
Mobile Swipe
    [Arguments]    ${start_x}    ${start_y}    ${end_x}    ${end_y}    ${duration}=1000
    Mobile.Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}    ${duration}

Mobile Press Keycode
    [Arguments]    ${keycode}
    Mobile.Press Keycode    ${keycode}

Mobile Hide Keyboard
    Mobile.Hide Keyboard

Mobile Get Window Height
    ${result}=    Mobile.Get Window Height
    RETURN    ${result}

Mobile Get Window Width
    ${result}=    Mobile.Get Window Width
    RETURN    ${result}

# Additional Mobile Keywords
Mobile Tap
    [Arguments]    ${x}    ${y}
    Mobile.Tap    ${x}    ${y}

Mobile Long Press
    [Arguments]    ${locator}    ${duration}=1000ms
    Mobile.Long Press    ${locator}    ${duration}

Mobile Execute Script
    [Arguments]    ${script}
    Mobile.Execute Script    ${script}

# Web-specific keywords
Web Click Element
    [Arguments]    ${locator}
    Web.Click Element    ${locator}

Web Wait Until Element Is Visible
    [Arguments]    ${locator}    ${timeout}=10s
    Web.Wait Until Element Is Visible    ${locator}    ${timeout}

Web Input Text
    [Arguments]    ${locator}    ${text}
    Web.Input Text    ${locator}    ${text}

Web Clear Element Text
    [Arguments]    ${locator}
    Web.Clear Element Text    ${locator}

Web Get Element Attribute
    [Arguments]    ${locator}    ${attribute}
    ${result}=    Web.Get Element Attribute    ${locator}    ${attribute}
    RETURN    ${result}

Web Element Should Be Visible
    [Arguments]    ${locator}
    Web.Element Should Be Visible    ${locator}

Web Page Should Contain Element
    [Arguments]    ${locator}
    Web.Page Should Contain Element    ${locator}

# Web screenshot capture with explicit naming
Web Capture Page Screenshot
    [Arguments]    ${filename}
    Web.Capture Page Screenshot    ${filename}

# Web Browser Management
Web Open Browser
    [Arguments]    ${url}    ${browser}=chrome    ${alias}=${EMPTY}    ${remote_url}=${EMPTY}    &{kwargs}
    Web.Open Browser    ${url}    ${browser}    ${alias}    ${remote_url}    &{kwargs}

Web Close Browser
    Web.Close Browser

Web Close All Browsers
    Web.Close All Browsers

# Additional Web Keywords
Web Wait Until Page Contains Element
    [Arguments]    ${locator}    ${timeout}=10s
    Web.Wait Until Page Contains Element    ${locator}    ${timeout}

Web Choose File
    [Arguments]    ${locator}    ${file_path}
    Web.Choose File    ${locator}    ${file_path}

Web Scroll Element Into View
    [Arguments]    ${locator}
    Web.Scroll Element Into View    ${locator}

Web Click Button
    [Arguments]    ${locator}
    Web.Click Button    ${locator}

Web Element Should Be Disabled
    [Arguments]    ${locator}
    Web.Element Should Be Disabled    ${locator}

Web Maximize Browser Window
    Web.Maximize Browser Window

Web Set Selenium Implicit Wait
    [Arguments]    ${timeout}
    Web.Set Selenium Implicit Wait    ${timeout}

Web Press Keys
    [Arguments]    ${locator}    ${key}
    Web.Press Keys    ${locator}    ${key}

Web Input Password
    [Arguments]    ${locator}    ${password}
    Web.Input Password    ${locator}    ${password}

Web Wait Until Page Contains
    [Arguments]    ${text}    ${timeout}=10s
    Web.Wait Until Page Contains    ${text}    ${timeout} 


# Central screenshot keyword to avoid conflicts between Mobile and Web libraries
Custom Capture Screenshot
    [Arguments]    ${filename}
    ${mobile_status}=    Run Keyword And Return Status    Mobile.Capture Page Screenshot    ${filename}
    Log To Console    ✅ Mobile screenshot captured: ${filename}
    IF    not ${mobile_status}
        Log To Console    ⚠️ Mobile screenshot capture failed, capturing web screenshot...
        Web.Capture Page Screenshot    ${filename}
    END




