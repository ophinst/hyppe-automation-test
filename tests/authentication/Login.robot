*** Settings ***
Resource            ../../resource.robot
Suite Setup         Spawn Appium Server
Test Setup          Open App
Test Teardown       Capture Failed
Suite Teardown      Close Appium Server

*** Test Case ***
User Login
    # Arrange
    OnboardingLogic.Select Masuk Button
    AuthLogic.Select Login Via Email Button

    # Action
    LoginLogic.Input Login and Password Via Email Login
    DeviceHelper.Press Back
    LoginPage.Verify Sign In Button Shown
    LoginPage.Click Sign In Button
    DeviceHelper.Allow App Permission
    DeviceHelper.Allow App Permission
    DeviceHelper.Close Homepage Blocker

    # Assertion
    HomepagePage.Verify On Homepage
