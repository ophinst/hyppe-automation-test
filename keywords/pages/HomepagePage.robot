*** Keywords ***
Verify On Homepage
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.ImageView[@content-desc="Cerita Anda"]                timeout=10s
    