*** Keywords ***
Verify Floating Button Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView                  timeout=10s

Click Floating Button
    AppiumLibrary.Click Element         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView

Verify Floating Button Submenu Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View

Click Hyppepic Section
    AppiumLibrary.Click Element         xpath=//android.widget.ImageView[@index=5]

Click Hyppediary Section
    AppiumLibrary.Click Element         xpath=//android.widget.ImageView[@index=4]

Click Hyppevid Section
    AppiumLibrary.Click Element         xpath=//android.widget.ImageView[@index=3]

Click Hyppestory Section
    AppiumLibrary.Click Element         xpath=//android.widget.ImageView[@index=2]
