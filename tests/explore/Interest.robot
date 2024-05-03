*** Settings ***
Resource		../../resource.robot
Suite Setup		Spawn Appium Server
Test Setup		Open App and Login
Test Teardown	Capture Failed
Suite Teardown	Close Appium Server

*** Test Case ***
User Can See Interest Page
    # Arrange
    AppiumLibrary.Start Screen Recording
    NavbarHelper.Click Explore Section
    ExplorePage.Verify On Explore Page
    
    # Action
    InterestLogic.Select Random Interest
    InterestPage.Verify On Interest Page
    InterestPage.Click Hyppevid Tab On Interest Page
    InterestPage.Verify On Interest Page
    InterestLogic.Scroll Up Page In Interest Page
    Run Keyword And Ignore Error        AppiumLibrary.Capture Page Screenshot
    InterestLogic.Swipe Down In Interest Page
    InterestPage.Click Hyppepic Tab On Interest Page
    InterestPage.Verify On Interest Page
    InterestLogic.Scroll Up Page In Interest Page
    Run Keyword And Ignore Error        AppiumLibrary.Capture Page Screenshot

    # Assert
    InterestPage.Verify Selected Interest
    AppiumLibrary.Stop Screen Recording