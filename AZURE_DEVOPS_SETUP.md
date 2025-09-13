# 🚀 Azure DevOps Pipeline Setup for Robot Framework Mobile Testing

This guide explains how to set up Azure DevOps Pipelines for automated Robot Framework mobile testing with daily execution at 9 PM and email notifications using your organization's Outlook email.

## 🔍 Understanding Azure DevOps vs GitHub

**Azure DevOps** is Microsoft's platform for CI/CD, similar to GitHub Actions but with different configuration syntax and features.

### Key Differences:
- **Configuration**: Uses `azure-pipelines.yml` instead of `.github/workflows/`
- **Variables**: Uses `$(VARIABLE_NAME)` instead of `${{ secrets.VARIABLE }}`
- **Tasks**: Uses predefined tasks like `UsePythonVersion@0`, `PublishTestResults@2`
- **Email**: Uses PowerShell script instead of GitHub Actions

## 🚀 Step-by-Step Setup for Azure DevOps

### Step 1: Create the Pipeline File

The `azure-pipelines.yml` file has been created in your repository root. This file contains:
- **Trigger**: Runs on push to main/develop branches
- **Schedule**: Daily at 9:00 PM UTC
- **Environment**: Ubuntu latest with Python 3.9
- **Mobile Testing**: Android emulator + Appium setup
- **Email Notifications**: Outlook email integration

### Step 2: Configure Pipeline Variables

1. **Go to your Azure DevOps project**
2. **Click Pipelines** (left sidebar)
3. **Click on your pipeline** (or create new one)
4. **Click Edit** (top right)
5. **Click Variables** (top right)
6. **Add these variables:**

| Variable Name | Value | Description | Secret |
|---------------|-------|-------------|--------|
| `EMAIL_USERNAME` | `warish.kumar@rysun.com` | Your Outlook email | ❌ |
| `EMAIL_PASSWORD` | Your Outlook password | Your password or app password | ✅ |
| `EMAIL_TO` | `warish.kumar@rysun.com` | Where to send reports | ❌ |
| `EMAIL_FROM` | `warish.kumar@rysun.com` | Sender email | ❌ |

**Note**: Mark `EMAIL_PASSWORD` as **Secret** by checking the "Keep this value secret" checkbox.

### Step 3: Create the Pipeline

1. **Go to Pipelines** → **New Pipeline**
2. **Choose Azure Repos Git** (or your source)
3. **Select your repository**
4. **Choose "Existing Azure Pipelines YAML file"**
5. **Select the `azure-pipelines.yml` file**
6. **Click Continue** and **Run**

### Step 4: Configure Email Credentials

#### For Your Organization Email (`warish.kumar@rysun.com`):

**Option A: If 2FA is NOT enabled**
- Use your regular Outlook password
- No additional setup needed

**Option B: If 2FA is enabled**
- You'll need an "App Password"
- Contact your IT department with this request:
  > "I need an app password for my Outlook email to enable automated email notifications from Azure DevOps Pipelines for our Robot Framework testing."

### Step 5: Test the Pipeline

1. **Go to Pipelines** in your Azure DevOps project
2. **Click on your pipeline**
3. **Click "Run pipeline"**
4. **Select branch**: main
5. **Click "Run"**
6. **Monitor the execution** in real-time

## 📧 Email Configuration Details

### Outlook SMTP Settings
```powershell
$smtpServer = "smtp-mail.outlook.com"
$smtpPort = 587
$username = "warish.kumar@rysun.com"
$password = "your-password-or-app-password"
```

### Email Content
- **Subject**: "🤖 Robot Framework Test Results - [Trigger Type]"
- **Body**: Professional HTML formatting with test summary
- **Attachment**: HTML report with detailed test results
- **Styling**: Responsive design with color-coded status

## 🔧 Troubleshooting Azure DevOps Issues

### Common Issues and Solutions

#### Issue 1: "Pipeline not found"
**Solution**: 
- Ensure `azure-pipelines.yml` is in the repository root
- Check that the pipeline is created and configured correctly
- Verify repository permissions

#### Issue 2: "Email authentication failed"
**Solution**:
- Verify your Outlook password is correct
- If 2FA is enabled, use an app password
- Check if the variable is marked as secret
- Contact IT if you need help with app password

#### Issue 3: "Emulator not starting"
**Solution**:
- Check if the Android SDK installation completed
- Verify system resources are sufficient
- Check pipeline logs for specific error messages

#### Issue 4: "Tests failing"
**Solution**:
- Check your app package/activity names
- Verify Appium server is running
- Check emulator connection
- Review test logs for specific failures

### Debug Mode
To run pipeline in debug mode:
1. Go to Pipelines → Your Pipeline
2. Click "Run pipeline"
3. Click "Variables" → Add `system.debug` = `true`
4. Run the pipeline
5. Check detailed logs

## 📊 Monitoring and Results

### Azure DevOps Dashboard
- **Pipelines Tab**: View all pipeline runs
- **Test Results**: View test execution results
- **Artifacts**: Download test reports and logs
- **Logs**: Detailed execution logs

### Email Reports
- **Daily Summary**: Test results sent to your email
- **HTML Report**: Detailed test execution report
- **Failure Alerts**: Immediate notification on test failures

## ⚙️ Customization Options

### Change Execution Time
Edit the `schedules` section in `azure-pipelines.yml`:

```yaml
schedules:
- cron: "30 15 * * *"  # For IST (UTC+5:30) - 9:00 PM IST
  displayName: Daily Robot Framework Tests
  branches:
    include:
    - main
  always: true
```

### Change Test Selection
Modify the robot command in the pipeline:

```yaml
# Run all tests
robot tests/

# Run specific test file
robot tests/E2ERegistration.robot

# Run tests with multiple tags
robot --include "E2E" --include "Smoke" tests/
```

### Change Email Recipients
Update the `EMAIL_TO` variable with multiple emails:
```
warish.kumar@rysun.com,manager@rysun.com,team@rysun.com
```

## 🔒 Security Best Practices

### For Your Organization
1. **Use App Passwords**: If 2FA is enabled, use app passwords
2. **Limit Access**: Only give pipeline access to necessary team members
3. **Monitor Usage**: Check pipeline logs for unusual activity
4. **Regular Rotation**: Change app passwords periodically

### For Azure DevOps Variables
1. **Mark sensitive data as Secret**: Always mark passwords as secret
2. **Use descriptive names**: Make variable names clear and meaningful
3. **Limit scope**: Only give variables to pipelines that need them
4. **Audit regularly**: Review and update variables periodically

## 📞 Getting Help from IT

### What to Ask Your IT Department

1. **"Can I use my Outlook email for automated notifications from Azure DevOps?"**
2. **"Do I need an app password for Azure DevOps Pipelines?"**
3. **"Are there any restrictions on SMTP connections?"**
4. **"What's the correct SMTP server for our Outlook setup?"**

### Information to Provide to IT
- **Purpose**: Automated test result notifications
- **Service**: Azure DevOps Pipelines
- **Frequency**: Daily at 9 PM
- **Volume**: Low (1 email per day)
- **Security**: Using encrypted SMTP connections

## ✅ Verification Checklist

Before running the pipeline, ensure:

- [ ] `azure-pipelines.yml` file is in repository root
- [ ] Pipeline is created in Azure DevOps
- [ ] All 4 email variables are configured
- [ ] `EMAIL_PASSWORD` is marked as secret
- [ ] Outlook credentials are correct
- [ ] IT has approved automated email usage
- [ ] Pipeline has been tested manually

## 🎯 Expected Results

Once configured correctly, you should receive:

- **Daily Email**: Every day at 9 PM UTC
- **Subject Line**: "🤖 Robot Framework Test Results - Schedule"
- **Content**: Test summary with execution details
- **Attachment**: HTML report with detailed test results
- **Styling**: Professional HTML formatting

## 🔄 Manual Execution

### Trigger Manual Run
1. Go to Pipelines in your Azure DevOps project
2. Click on your pipeline
3. Click "Run pipeline"
4. Select branch and click "Run"

### Local Testing
To test the setup locally:
```bash
# Install dependencies
pip install -r requirements.txt
npm install -g appium@2.0.0

# Run tests locally
robot --outputdir results --include "E2E" tests/
```

---

**Need Help?** Contact your IT department or refer to Azure DevOps documentation at https://docs.microsoft.com/en-us/azure/devops/pipelines/
