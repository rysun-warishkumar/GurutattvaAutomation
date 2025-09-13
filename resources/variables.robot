*** Variables ***
${REMOTE_URL}        http://localhost:4723
${PLATFORM_NAME}     Android
${DEVICE_NAME}       emulator-5554
${APP_PACKAGE}       com.org.gurutattva.app
${APP_ACTIVITY}      com.example.gurutattva_flutter_app.MainActivity
${AUTOMATION_NAME}   UiAutomator2
${NO_RESET}          true
${NEW_COMMAND_TIMEOUT}    300
${AUTO_GRANT_PERMISSIONS}    true
${AUTO_ACCEPT_ALERTS}       true
${Audio_of_the_day}    xpath=//android.view.View[contains(@content-desc,'Audio of the Day')]