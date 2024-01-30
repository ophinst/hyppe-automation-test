*** Keywords ***
Verify on Profile Page
	Sleep		3s
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
