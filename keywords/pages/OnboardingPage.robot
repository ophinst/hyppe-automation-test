*** Keywords ***
Verify Masuk Button Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@content-desc="Masuk"]                timeout=15s

Click Masuk Button
    AppiumLibrary.Click Element         xpath=//android.view.View[@content-desc="Masuk"]