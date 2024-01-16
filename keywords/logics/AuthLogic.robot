*** Keywords ***
Select Login Via Email Button
    ${status}=          Run Keyword And Return Status     AuthPage.Verify Login Via Email Button Shown
    Run Keyword If      '${status}'=='False'              Sleep       15s
    AuthPage.Click Login Via Email Button