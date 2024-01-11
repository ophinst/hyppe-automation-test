*** Settings ***
Resource          ../../resource.robot
Suite Setup       Spawn Appium Server
Test Setup        Open App and Login
Test Teardown     Capture Failed
Suite Teardown    Close Appium Server

*** Test Case ***
Upload Video on Hyppestory via Camera Capture
    # Arrange
    NavbarHelper.Verify Floating Button Shown
    NavbarHelper.Click Floating Button
    Sleep       3s
    NavbarHelper.Verify Floating Button Submenu Shown
    NavbarHelper.Click Hyppestory Section
    DeviceHelper.Allow App Permission
    DeviceHelper.Allow App Permission

    # Action
    CameraLogic.Record Hyppestory Video With Camera
    CameraLogic.Upload Story

    # Assertion
    BannerLogic.Close Successfully Uploaded Banner
    HomepagePage.Verify On Homepage

Upload Photo on Hyppestory via Camera Capture
    # Arrange
    NavbarHelper.Verify Floating Button Shown
    NavbarHelper.Click Floating Button
    Sleep       3s
    NavbarHelper.Verify Floating Button Submenu Shown
    NavbarHelper.Click Hyppestory Section
    DeviceHelper.Allow App Permission
    DeviceHelper.Allow App Permission

    # Action
    CameraLogic.Capture Hyppestory Picture With Camera
    CameraLogic.Upload Story

    # Assertion
    BannerLogic.Close Successfully Uploaded Banner
    HomepagePage.Verify On Homepage
