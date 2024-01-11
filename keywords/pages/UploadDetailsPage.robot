*** Keywords ***
Verify On Upload Details Page
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@content-desc="Postingan Baru"]                timeout=10s

Verify Confirm Upload Button
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.Button[@content-desc="Konfirmasi"]                timeout=10s

Click Confirm Upload Button
    AppiumLibrary.Click Element         xpath=//android.widget.Button[@content-desc="Konfirmasi"]

Click Post Description Input
    AppiumLibrary.Click Element         xpath=//android.widget.EditText

Click Post Category
    AppiumLibrary.Click Element         xpath=//android.view.View[@content-desc="Hewan"]

Verify Content Selling Blocker Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@content-desc="Apa anda yakin?"]          timeout=10s
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.Button[@content-desc="Ya, Tetap Posting"]          timeout=10s

Click Confirm on Content Selling Blocker
    AppiumLibrary.Click Element         xpath=//android.widget.Button[@content-desc="Ya, Tetap Posting"]
