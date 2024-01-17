*** Keywords ***
Verify On Comment Page
    AppiumLibrary.Page Should Contain Text          Komentar

Click On Comment Input
    ${x}=       Set Variable    500
    ${y}=       Set Variable    2150
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}
