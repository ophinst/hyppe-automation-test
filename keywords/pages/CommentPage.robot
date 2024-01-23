*** Keywords ***
Verify On Comment Page
    AppiumLibrary.Page Should Contain Text          Komentar

Click On Comment Input
    ${x}=       Set Variable    500
    ${y}=       Set Variable    2150
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}

Verify Kirim Comment Button Shown
    AppiumLibrary.Wait Until Element is Visible         xpath = //android.widget.Button[@content-desc="Kirim"]      timeout=5s

Click Kirim Comment Button
    AppiumLibrary.Click Element         xpath = //android.widget.Button[@content-desc="Kirim"]

Verify Comment Sent
    AppiumLibrary.Page Should Contain Text          Lorem ipsum dolor sit amet, consectetur adipiscing elit.