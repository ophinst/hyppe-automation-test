*** Keywords ***
Select Masuk Button
    ${status}=          Run Keyword And Return Status     OnboardingPage.Verify Masuk Button Shown
    Run Keyword If      '${status}'=='False'              Sleep       15s
    OnboardingPage.Click Masuk Button