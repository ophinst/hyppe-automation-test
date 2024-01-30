*** Settings ***
Resource          ../../resource.robot
Suite Setup       Spawn Appium Server
Test Setup        Open App and Login
Test Teardown     Capture Failed
Suite Teardown    Close Appium Server

*** Test Case ***
User can Edit Profile
	# Arrange
	NavbarHelper.Verify Profile Section Shown
	NavbarHelper.Click Profile Section
	ProfilePage.Verify on Profile Page
	ProfilePage.Verify Edit Profile Button Shown
	ProfilePage.Click Edit Profile Button

	# Action
	ProfilePage.Verify on Edit Profile Page
    ProfilePage.Verify Profile Bio Input Field
	ProfileLogic.Edit Profile Bio
	DeviceHelper.Press Back
	ProfilePage.Verify Save Profile Change Button Shown
	ProfilePage.Click Save Profile Change Button

    # Assertion
	BannerPage.Verify Save Profile Success Banner
