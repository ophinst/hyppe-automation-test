*** Settings ***
Resource          ../../resource.robot
Suite Setup       Spawn Appium Server
Test Setup        Open App and Login
Test Teardown     Capture Failed
Suite Teardown    Close Appium Server

*** Test Case ***
Upload Hyppevid via Import Media
    [Tags]  Staging
    # Arrange
    NavbarHelper.Verify Floating Button Shown
    NavbarHelper.Click Floating Button
    Sleep       3s
    NavbarHelper.Verify Floating Button Submenu Shown
    NavbarHelper.Click Hyppevid Section
    DeviceHelper.Allow App Permission
    DeviceHelper.Allow App Permission

    # Action
    CameraLogic.Select Import Device Media
    Sleep       3s
    CameraPage.Pause Video Preview
    CameraLogic.Press Upload Button
    UploadDetailsPage.Verify On Upload Details Page
    UploadDetailsLogic.Edit Post Details
    Sleep       3s
    UploadDetailsLogic.Confirm Upload Post
    UploadDetailsLogic.Ignore Content Selling Blocker

    # Assertion
    BannerLogic.Close Successfully Uploaded Banner
    HomepagePage.Verify On Homepage

Upload Hyppevid via Camera Capture
    [Tags]  Staging
    # Arrange
    NavbarHelper.Verify Floating Button Shown
    NavbarHelper.Click Floating Button
    Sleep       3s
    NavbarHelper.Verify Floating Button Submenu Shown
    NavbarHelper.Click Hyppevid Section
    DeviceHelper.Allow App Permission
    DeviceHelper.Allow App Permission

    # Action
    CameraLogic.Record With Camera
    CameraLogic.Press Upload Button
    UploadDetailsPage.Verify On Upload Details Page
    UploadDetailsLogic.Edit Post Details
    UploadDetailsLogic.Confirm Upload Post
    UploadDetailsLogic.Ignore Content Selling Blocker

    # Assertion
    BannerLogic.Close Successfully Uploaded Banner
    HomepagePage.Verify On Homepage

View Hyppevid Fullscreen
    # Arrange
    HomepageLogic.Select Hyppevid Tab
    HomepageLogic.Ads Handler

    # Action
    HomepagePage.Choose Random Content

    # Assertion
    ContentDetailsPage.Verify On Content Details Page

Click on Like at Hyppevid Fullscreen
    # Arrange
    HomepageLogic.Select Hyppevid Tab
    HomepageLogic.Ads Handler

    # Action
    HomepagePage.Choose Random Content
    ContentDetailsPage.Tap Hyppevid screen
    ContentDetailsLogic.Click Like Vid Button
    
    # Assertion
    ContentDetailsPage.Verify On Content Details Page
