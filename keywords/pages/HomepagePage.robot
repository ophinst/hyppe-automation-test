*** Keywords ***
Verify On Homepage
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@content-desc="Cerita Anda"]              timeout=15s
    