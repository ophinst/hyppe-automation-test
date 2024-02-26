*** Settings ***
Resource		../../resource.robot
Suite Setup		Spawn Appium Server
Test Setup		Open App and Login
Test Teardown	Capture Failed
Suite Teardown	Close Appium Server

*** Test Case ***
User Can See and Scroll Trending Hyppepic Content via Hashtag
    # Arrange
    NavbarHelper.Click Explore Section
    
    # Action
    ${hashtag}=     ExploreLogic.Click Hashtag On Explore Page
    TrendingPage.Verify On Trending Page with Selected Hashtag  ${hashtag}
    Sleep       3s
    TrendingLogic.Select and Scroll Content On Trending Page
    
    # Assertion
    TrendingPage.Verify On Trending Page Content Detail
    AppiumLibrary.Capture Page Screenshot
