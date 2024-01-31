*** Settings ***
Resource          ../../resource.robot
Suite Setup       Spawn Appium Server
Test Setup        Open App, Login, and Post Content
Test Teardown     Capture Failed
Suite Teardown    Close Appium Server

*** Test Case ***
User Edit Post via Profile Page
    [Documentation]     Waiting for client side bug fixed
    # Arrange
    NavbarHelper.Verify Profile Section Shown
    NavbarHelper.Click Profile Section
    Sleep       3s
    ProfileLogic.Select Random Post on Profile Page
    Sleep       3s
    ProfilePage.Click on Setting

    # Action
    ProfilePage.Verify Edit Post Button Shown
    ProfilePage.Click Edit Post Button
    UploadDetailsPage.Verify On Edit Post Page
    UploadDetailsLogic.Edit Post Details
    UploadDetailsLogic.Choose to Certify and Sell Content
    UploadDetailsPage.Click on Confirm Edit Post

    # Assertion
    DeviceHelper.Verify Success Notification Shown
    # BannerPage.Verify Hyppepic Content Successfully Edited Banner Shown


