*** Keywords ***
Verify On Interest Page
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.ScrollView/android.widget.ImageView[1]   timeout=10s

Click Hyppepic Tab On Interest Page
    AppiumLibrary.Click Element         xpath=//*[@content-desc="Pic"]

Click Hyppevid Tab On Interest Page
    AppiumLibrary.Click Element         xpath=//*[@content-desc="Vid"]

Verify Selected Interest
    AppiumLibrary.Page Should Contain Text          ${interest}
