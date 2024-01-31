*** Settings ***
Resource          ../../resource.robot
Suite Setup       Spawn Appium Server
Test Setup        Open App and Login
Test Teardown     Capture Failed
Suite Teardown    Close Appium Server

*** Test Case ***
Upload Hyppepic via Import Media
    # Arrange
    NavbarHelper.Verify Floating Button Shown
    NavbarHelper.Click Floating Button
    Sleep       3s
    NavbarHelper.Verify Floating Button Submenu Shown
    NavbarHelper.Click Hyppepic Section
    DeviceHelper.Allow App Permission
    DeviceHelper.Allow App Permission

    # Action
    CameraLogic.Select Import Device Media
    CameraLogic.Press Upload Button
    UploadDetailsPage.Verify On Upload Details Page
    UploadDetailsLogic.Edit Post Details
    UploadDetailsLogic.Confirm Upload Post
    UploadDetailsLogic.Ignore Content Selling Blocker

    # Assertion
    BannerLogic.Close Successfully Uploaded Banner
    HomepagePage.Verify On Homepage

Upload Hyppepic via Camera Capture
    # Arrange
    NavbarHelper.Verify Floating Button Shown
    NavbarHelper.Click Floating Button
    Sleep       3s
    NavbarHelper.Verify Floating Button Submenu Shown
    NavbarHelper.Click Hyppepic Section
    DeviceHelper.Allow App Permission
    DeviceHelper.Allow App Permission

    # Action
    CameraLogic.Capture With Camera
    CameraLogic.Press Upload Button
    UploadDetailsPage.Verify On Upload Details Page
    UploadDetailsLogic.Edit Post Details
    UploadDetailsLogic.Confirm Upload Post
    UploadDetailsLogic.Ignore Content Selling Blocker

    # Assertion
    BannerLogic.Close Successfully Uploaded Banner
    HomepagePage.Verify On Homepage

View Hyppepic Content Details
    # Arrange
    HomepageLogic.Select Hyppepic Tab

    # Action
    HomepagePage.Choose Random Content

    # Assertion
    ContentDetailsPage.Verify On Content Details Page

Click on Like at Hyppepic Content Details
    # Arrange
    HomepageLogic.Select Hyppepic Tab

    # Action
    HomepagePage.Choose Random Content
    Sleep       3s
    ContentDetailsLogic.Click Like Button

    # Assertion
    ContentDetailsPage.Verify On Content Details Page

Comment On Hyppepic Content Details
    # Arrange
    HomepageLogic.Select Hyppepic Tab
    HomepagePage.Choose Random Content
    Sleep   3s
    ContentDetailsPage.Verify On Content Details Page

    # Action
    ContentDetailsLogic.Click Comment Button
    CommentLogic.Input Comment

    # Assertion
    CommentPage.Verify Comment Sent