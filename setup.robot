*** Keywords ***
Spawn Appium Server
    [Documentation]     Use cmd /c path to your appium.cmd if you are on Windows
    # ${APPIUM_INSTANCE}    Start Process    cmd    /c    E:\\Node.js\\appium.cmd 
    ${APPIUM_INSTANCE}    Start Process    appium
    ...                   -p               ${PORT}
    ...                   stdout=${EXECDIR}/appium-log.txt
    Set Suite Variable    ${APPIUM_INSTANCE}
    Wait Until Appium Ready    ${PORT}    40

Open App
    Open Application
    ...    ${APPIUM_SERVER}
    ...    udid=${UDID}
    ...    platformName=Android
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    newCommandTimeout=15000
    ...    noReset=false
    ...    automationName=UiAutomator2
    ...    disableWindowAnimation=true
    ...    waitForIdleTimeout=${100}
    ...    uiautomator2ServerInstallTimeout=90000
    ...    adbExecTimeout=90000

Open App and Login
    Open App
    OnboardingLogic.Select Masuk Button
    AuthLogic.Select Login Via Email Button
    LoginLogic.Input Login and Password Via Email Login
    DeviceHelper.Press Back
    LoginPage.Verify Sign In Button Shown
    LoginPage.Click Sign In Button
    DeviceHelper.Allow App Permission
    Sleep       10s
    DeviceHelper.Press Back
    HomepagePage.Verify On Homepage
