*** Keywords ***
Verify on Profile Page
	Sleep		2s
    AppiumLibrary.Page Should Contain Text          Profil

Verify Edit Profile Button Shown
    AppiumLibrary.Wait Until Element Is Visible     xpath=//android.widget.Button[@content-desc="Sunting Profil"]       timeout=10s

Click Edit Profile Button
    AppiumLibrary.Click Element         xpath=//android.widget.Button[@content-desc="Sunting Profil"]

Verify Profile Bio Input Field
    AppiumLibrary.Wait Until Element Is Visible     xpath=//android.widget.EditText[3]       timeout=10s

Click Profile Bio Input Field
    AppiumLibrary.Click Element         xpath=//android.widget.EditText[3]

Clear Bio Input Field
    Clear Text          xpath=//android.widget.EditText[3]

Verify on Edit Profile Page
    Sleep       3s
    AppiumLibrary.Page Should Contain Text      Preferensi Akun

Verify Save Profile Change Button Shown
    AppiumLibrary.Wait Until Element Is Visible     xpath=//android.widget.Button[@content-desc=" Simpan"]       timeout=10s

Click Save Profile Change Button
    AppiumLibrary.Click Element         xpath=//android.widget.Button[@content-desc=" Simpan"]

Select Random Post on Profile Page
    ${x}=       Set Variable    174
    ${y}=       Set Variable    1260
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}

Verify Post Setting Shown
    AppiumLibrary.Wait Until Element Is Visible     xpath=//android.view.View[@index=2]     timeout=10s

Click on Setting
    AppiumLibrary.Click Element         xpath=//android.view.View[@index=2]

Click on Share
    AppiumLibrary.Click Element         xpath=//android.widget.ImageView[@content-desc="Bagikan"]

Verify Share Content
    AppiumLibrary.Page Should Contain Text      https://share.hyppe.app

Click on Copy Link
    AppiumLibrary.Click Element         xpath=//android.widget.ImageView[@content-desc="Salin Tautan"]

Verify Copy Link Button Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.ImageView[@content-desc="Salin Tautan"]      timeout=10s

Verify Share Button Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.ImageView[@content-desc="Bagikan"]      timeout=10s

Verify Edit Post Button Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.ImageView[@content-desc="Sunting"]       timeout=10s

Click Edit Post Button
    AppiumLibrary.Click Element         xpath=//android.widget.ImageView[@content-desc="Sunting"]