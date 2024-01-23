*** Settings ***
Resource          ../../resource.robot

Test Setup        Open App and Login
Test Teardown     Capture Failed


*** Test Case ***
Upload Hyppevid via Import Media
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
    UploadDetailsLogic.Edit Post Details
    Sleep       3s
    UploadDetailsLogic.Confirm Upload Post
    UploadDetailsLogic.Ignore Content Selling Blocker

    # Assertion
    BannerLogic.Close Successfully Uploaded Banner
    HomepagePage.Verify On Homepage

Upload Hyppevid via Camera Capture
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
    UploadDetailsLogic.Edit Post Details
    Sleep       3s
    UploadDetailsLogic.Confirm Upload Post
    UploadDetailsLogic.Ignore Content Selling Blocker

    # Assertion
    BannerLogic.Close Successfully Uploaded Banner
    HomepagePage.Verify On Homepage

View Hyppevid Content Details
    # Arrange
    HomepageLogic.Select Hyppevid Tab

    # Action
    HomepagePage.Choose Random Content

    # Assertion
    ContentDetailsPage.Verify On Hyppevid Fullscreen

Click on Like at Hyppevid Content Details
    # Arrange
    HomepageLogic.Select Hyppevid Tab

    # Action
    HomepagePage.Choose Random Content
    Sleep       2s
    ContentDetailsPage.Tap Hyppevid screen
    Sleep       2s
    ContentDetailsLogic.Click Like Vid Button
    
    # Assertion
    ContentDetailsPage.Verify On Vid Content Details Page
