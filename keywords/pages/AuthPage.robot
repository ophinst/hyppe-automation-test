*** Keywords ***
Verify Login Via Email Button Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.ImageView[@content-desc="Gunakan alamat Email lainnya"]                 timeout=10s

Click Login Via Email Button
    AppiumLibrary.Click Element         xpath=//android.widget.ImageView[@content-desc="Gunakan alamat Email lainnya"]