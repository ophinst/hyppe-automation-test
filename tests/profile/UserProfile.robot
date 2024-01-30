*** Settings ***
Resource          ../../resource.robot
Suite Setup       Spawn Appium Server
Test Setup        Open App and Login
Test Teardown     Capture Failed
Suite Teardown    Close Appium Server

*** Test Case ***
User can Go to Profile Page
	# Arrange
	NavbarHelper.Verify Profile Section Shown

	# Action
	NavbarHelper.Click Profile Section

	# Assertion
	ProfilePage.Verify on Profile Page
