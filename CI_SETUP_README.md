# CI/CD Setup for Gurutattva Mobile App Automation

This document explains the CI/CD setup for running Robot Framework tests on Android emulator in GitHub Actions.

## Overview

The automation framework is configured to run Android app tests using:
- **Robot Framework** for test automation
- **Appium** for mobile app automation
- **Android Emulator** for device simulation
- **GitHub Actions** for CI/CD pipeline

## Key Features

### 1. Automated Scheduling
- Tests run on every push to `main` branch
- Tests run on pull requests to `main` branch
- **Daily scheduled runs at 2 AM UTC** (configurable)

### 2. Android Emulator Setup
- Uses Android API 34 with Google APIs
- Pixel 7 profile for consistent testing
- Automatic APK installation
- Proper emulator lifecycle management

### 3. Appium Integration
- Automatic Appium server setup
- UiAutomator2 driver installation
- Connection verification
- Proper cleanup on completion

## File Structure

```
├── .github/workflows/
│   └── robot-framework-tests.yml    # Main CI/CD workflow
├── resources/
│   ├── ci_variables.robot           # CI-specific variables and keywords
│   ├── test_setup_teardown.robot    # Enhanced setup/teardown for CI
│   ├── variables.robot              # Updated with CI-compatible device name
│   └── keywords.robot               # Updated with CI capabilities
├── tests/
│   └── CI_Verification.robot        # CI environment verification tests
└── automation_dhyan_9thSept 1.apk   # APK file for testing
```

## Key Improvements Made

### 1. Fixed APK File Reference
- **Issue**: Workflow referenced `automation_dhyan_9thSept.apk` but actual file is `automation_dhyan_9thSept 1.apk`
- **Solution**: Updated workflow to check for both file names

### 2. Added Node.js Setup
- **Issue**: Appium requires Node.js but wasn't installed
- **Solution**: Added Node.js 18 setup with npm caching

### 3. Enhanced Android SDK Setup
- **Issue**: Incomplete Android SDK configuration
- **Solution**: Added proper SDK component installation and licensing

### 4. Improved Device Configuration
- **Issue**: Hardcoded device name `f1ed7c9d` wouldn't work in CI
- **Solution**: Changed to `emulator-5554` (standard emulator device name)

### 5. Added CI-Specific Variables
- **Issue**: No distinction between local and CI environments
- **Solution**: Created `ci_variables.robot` with CI-specific configurations

### 6. Enhanced Error Handling
- **Issue**: Limited error handling and debugging information
- **Solution**: Added comprehensive logging and verification steps

## Workflow Steps

1. **Environment Setup**
   - Checkout code
   - Setup Python 3.12
   - Setup Node.js 18
   - Install Python dependencies

2. **Android Setup**
   - Setup JDK 17
   - Setup Android SDK
   - Install required SDK components
   - Create Android Virtual Device (AVD)

3. **Test Execution**
   - Start emulator
   - Install APK
   - Setup Appium server
   - Run verification tests
   - Run main test suite
   - Cleanup

4. **Results**
   - Upload test artifacts
   - Publish test results

## Environment Variables

The following environment variables are automatically set in CI:

- `CI=true` - Indicates running in CI environment
- `ANDROID_SDK_ROOT` - Android SDK location
- `ANDROID_HOME` - Android SDK home directory

## Test Tags

- `CI` - CI-specific tests
- `WarishTest` - Main test suite
- `Verification` - Environment verification tests

## Troubleshooting

### Common Issues

1. **APK Installation Fails**
   - Check APK file name matches exactly
   - Verify APK is not corrupted
   - Ensure emulator is fully booted

2. **Appium Connection Issues**
   - Verify Appium server is running on port 4723
   - Check if port is not blocked
   - Ensure proper wait time for server startup

3. **Emulator Not Starting**
   - Check Android SDK installation
   - Verify system images are downloaded
   - Ensure sufficient disk space

### Debug Commands

```bash
# Check emulator status
adb devices

# Check installed packages
adb shell pm list packages | grep com.org.gurutattva.app

# Check Appium status
curl http://localhost:4723/status

# View emulator logs
adb logcat
```

## Local Development

To run tests locally:

1. Install Android SDK and emulator
2. Install Appium and UiAutomator2 driver
3. Start emulator manually
4. Run tests: `robot --include "WarishTest" tests/`

## Monitoring

- Test results are uploaded as artifacts
- Test reports are published to GitHub
- Failed tests include screenshots
- All logs are available in GitHub Actions

## Customization

### Changing Schedule
Edit the cron expression in `.github/workflows/robot-framework-tests.yml`:
```yaml
schedule:
  - cron: '0 2 * * *'  # Daily at 2 AM UTC
```

### Adding New Tests
1. Create test file in `tests/` directory
2. Add appropriate tags
3. Include in workflow with `--include` or `--exclude` options

### Modifying Emulator Configuration
Update the `android-emulator-runner` configuration in the workflow file.

## Support

For issues or questions:
1. Check GitHub Actions logs
2. Review test artifacts
3. Verify environment setup
4. Check this documentation
