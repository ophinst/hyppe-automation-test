*** Settings ***
Resource          ../../resource.robot
Suite Setup       Spawn Appium Server
Test Setup        Open App and Login
Test Teardown     Capture Failed
Suite Teardown    Close Appium Server

*** Test Case ***
Upload Hyppediary via Camera Capture
    # Arrange
    NavbarHelper.Verify Floating Button Shown
    NavbarHelper.Click Floating Button
    Sleep       3s
    NavbarHelper.Verify Floating Button Submenu Shown
    NavbarHelper.Click Hyppediary Section
    DeviceHelper.Allow App Permission
    DeviceHelper.Allow App Permission

    # Action
    CameraLogic.Record With Camera
    CameraLogic.Press Upload Button
    UploadDetailsLogic.Edit Post Details
    Sleep       3s
    UploadDetailsLogic.Confirm Upload Post
    UploadDetailsLogic.Ignore Content Selling Blocker

    # Assertion
    BannerLogic.Close Successfully Uploaded Banner
    HomepagePage.Verify On Homepage

Upload Hyppediary via Import Media
    # Arrange
    NavbarHelper.Verify Floating Button Shown
    NavbarHelper.Click Floating Button
    Sleep       3s
    NavbarHelper.Verify Floating Button Submenu Shown
    NavbarHelper.Click Hyppediary Section
    DeviceHelper.Allow App Permission
    DeviceHelper.Allow App Permission

    # Action
    CameraLogic.Select Import Device Media
    Sleep       3s
    CameraPage.Pause Video Preview
    CameraLogic.Press Upload Button
    UploadDetailsLogic.Edit Post Details
    Sleep       3s
    UploadDetailsLogic.Confirm Upload Post
    UploadDetailsLogic.Ignore Content Selling Blocker

    # Assertion
    BannerLogic.Close Successfully Uploaded Banner
    HomepagePage.Verify On Homepage