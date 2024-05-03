*** Settings ***
Resource            ../../resource.robot
Suite Setup         Spawn Appium Server
Test Setup          Open App as Guest
Test Teardown       Capture Failed
Suite Teardown      Close Appium Server

*** Test Case ***
Guest Scroll on Landing Page
    # Arrange and Action
    AppiumLibrary.Start Screen Recording
    HomepagePage.Verify Hyppepic Tab Is Focused
    HomepageLogic.Scroll On Homepage and Ignore Blocker
    Run Keyword And Ignore Error    AppiumLibrary.Capture Page Screenshot
    NavbarHelper.Click Homepage Section
    HomepageLogic.Select Hyppevid Tab
    HomepageLogic.Scroll On Homepage and Ignore Blocker

    # Assertion
    AppiumLibrary.Stop Screen Recording
    [Documentation]     Ignore Error because we can't screenshot on certified content
    Run Keyword And Ignore Error    AppiumLibrary.Capture Page Screenshot
    
Guest Cannot Use Full Feature
    # Arrange, Action, and Assertion
    HomepagePage.Click Follow On Homepage
    HomepageLogic.Ignore Login Card
    HomepagePage.Click Options On Homepage
    HomepageLogic.Ignore Login Card
    NavbarHelper.Verify Notification Section Shown
    NavbarHelper.Click Notification Section
    HomepageLogic.Ignore Login Card
    NavbarHelper.Verify Profile Section Shown
    NavbarHelper.Click Profile Section
    HomepageLogic.Ignore Login Card
