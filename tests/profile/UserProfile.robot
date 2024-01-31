*** Settings ***
Resource		../../resource.robot
Suite Setup		Spawn Appium Server
Test Setup		Open App and Login
Test Teardown	Capture Failed
Suite Teardown	Close Appium Server

*** Test Case ***
User can Go to Profile Page
	# Arrange
	NavbarHelper.Verify Profile Section Shown

	# Action
	NavbarHelper.Click Profile Section

	# Assertion
	ProfilePage.Verify on Profile Page

User can Copy Content
	# Arrange
	NavbarHelper.Verify Profile Section Shown
	NavbarHelper.Click Profile Section
	ProfilePage.Verify on Profile Page

	# Action
	ProfileLogic.Select Random Post on Profile Page
	Sleep		3s
	ProfilePage.Click on Setting
	ProfilePage.Verify Copy Link Button Shown
	ProfilePage.Click on Copy Link
	
	# Assertion
	Sleep		3s
	BannerPage.Click OK on Sucess Banner

User can Share the Content
	# Arrange
	NavbarHelper.Verify Profile Section Shown
	NavbarHelper.Click Profile Section
	ProfilePage.Verify on Profile Page

	# Action
	ProfileLogic.Select Random Post on Profile Page
	Sleep		3s
	ProfilePage.Click on Setting
	ProfilePage.Verify Share Button Shown
	ProfilePage.Click on Share

	# Assertion
	Sleep  		3s
	ProfilePage.Verify Share Content