*** Settings ***
Resource   libraries.robot
Resource   ../pages/loginPage.robot

*** Variables ***
# Web Application Configuration
${WEB_BASE_URL}              https://gurutattvacmsqa.rysun.in:9090/
${WEB_BROWSER}               chrome
${WEB_IMPLICIT_WAIT}         10s 

*** Keywords ***
Open Web Browser
    [Documentation]    Opens web browser and navigates to Gurutattva website
    Web Open Browser    ${WEB_BASE_URL}    ${WEB_BROWSER}
    Web Maximize Browser Window
    Web Set Selenium Implicit Wait    ${WEB_IMPLICIT_WAIT}
     # Clear cookies and cache
    # Delete All Cookies
    # Execute Javascript    window.localStorage.clear();

Close Web Browser
    [Documentation]    Closes web browser
    Web Close All Browsers

