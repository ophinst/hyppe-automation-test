*** Settings ***
Resource		../../resource.robot
Suite Setup		Spawn Appium Server
Test Setup		Open App and Login
Test Teardown	Capture Failed
Suite Teardown	Close Appium Server

*** Test Case ***
Search and View Other User Profile
    # Arrange
    NavbarHelper.Click Explore Section
    ExplorePage.Verify On Explore Page

    # Action
    ExploreLogic.Search User On Explore Page
    
    # Assertion
    ProfilePage.Verify On Other User Profile Page
