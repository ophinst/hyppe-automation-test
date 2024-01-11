*** Keywords ***
Verify Login Email Input Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.EditText                 timeout=10s

Verify Login Password Input Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.ImageView[2]                 timeout=10s

Click Login Email Input
    AppiumLibrary.Click Element         xpath=//android.widget.EditText

Click Login Password Input
    AppiumLibrary.Click Element         xpath=//android.widget.ImageView[2]

Verify Sign In Button Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.Button[@content-desc="Masuk"]

Click Sign In Button
    AppiumLibrary.Click Element         xpath=//android.widget.Button[@content-desc="Masuk"]