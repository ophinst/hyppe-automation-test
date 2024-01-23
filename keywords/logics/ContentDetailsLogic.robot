*** Keywords ***
Click Comment Button
    ContentDetailsPage.Verify On Content Details Page
    ${status}=          Run Keyword And Return Status     ContentDetailsPage.Verify Cart Icon on Fullscreen
    Run Keyword If      '${status}'=='False'              ContentDetailsPage.Click Fullscreen Comment Button
    Run Keyword If      '${status}'=='True'               ContentDetailsPage.Click Hyppepic Fullscren Like Button 

Click Like Button
    AppiumLibrary.Capture Page Screenshot
    ${status}=          Run Keyword And Return Status     ContentDetailsPage.Verify Cart Icon on Fullscreen
    Run Keyword If      '${status}'=='False'              ContentDetailsPage.Click Hyppepic Fullscreen Like Button
    Run Keyword If      '${status}'=='True'               ContentDetailsPage.Click Hyppepic Fullscreen Like Button When Cart Shown
    AppiumLibrary.Capture Page Screenshot

Click Like Vid Button
    AppiumLibrary.Capture Page Screenshot
    ${status}=          Run Keyword And Return Status     ContentDetailsPage.Verify Cart Icon on Fullscreen
    Run Keyword If      '${status}'=='False'              ContentDetailsPage.Click Hyppevid Fullscreen Like Button
    Run Keyword If      '${status}'=='True'               ContentDetailsPage.Click Hyppevid Fullscreen Like Button When Cart Shown
    AppiumLibrary.Capture Page Screenshot