*** Settings ***
Resource          ../../resource.robot

Test Setup        Open App and Login
Test Teardown     Capture Failed


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

	# Action
	NavbarHelper.Click Profile Section
	ProfilePage.Verify on Profile Page
	ProfilePage.Click a Pic Content
	ProfilePage.Click on Setting
	Sleep 		3s
	ProfilePage.Click on Copy 
	
	# Assertion
	Sleep 		5s
	debug
	ProfilePage.Verify Copy Content

User can Share the Content
		# Arrange
	NavbarHelper.Verify Profile Section Shown

	# Action
	NavbarHelper.Click Profile Section
	ProfilePage.Verify on Profile Page
	ProfilePage.Click a Pic Content
	ProfilePage.Click on Setting
	ProfilePage.Click on Share

	# Assertion
	Sleep  		3s
	ProfilePage.Verify Share Content