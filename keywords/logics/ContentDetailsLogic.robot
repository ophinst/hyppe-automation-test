*** Keywords ***
Click Comment Button
    ContentDetailsPage.Verify On Content Details Page
    ${status}=          Run Keyword And Return Status     ContentDetailsPage.Verify Cart Icon on Fullscreen
    Run Keyword If      '${status}'=='False'              ContentDetailsPage.Click Fullscreen Comment Button
    Run Keyword If      '${status}'=='True'               ContentDetailsPage.Click Hyppepic Fullscren Like Button 

Click Like Button
    Sleep       0.5s
    Run Keyword and Ignore Error        AppiumLibrary.Capture Page Screenshot
    ${status}=          Run Keyword And Return Status     ContentDetailsPage.Verify Cart Icon on Fullscreen
    Run Keyword If      '${status}'=='False'              ContentDetailsPage.Click Hyppepic Fullscreen Like Button
    Run Keyword If      '${status}'=='True'               ContentDetailsPage.Click Hyppepic Fullscreen Like Button When Cart Shown
    Sleep       0.5s
    Run Keyword and Ignore Error        AppiumLibrary.Capture Page Screenshot

Click Like Vid Button
    Sleep       0.5s
    Run Keyword and Ignore Error        AppiumLibrary.Capture Page Screenshot
    ${status}=          Run Keyword And Return Status     ContentDetailsPage.Verify Cart Icon on Fullscreen
    Run Keyword If      '${status}'=='False'              ContentDetailsPage.Click Hyppevid Fullscreen Like Button
    Run Keyword If      '${status}'=='True'               ContentDetailsPage.Click Hyppevid Fullscreen Like Button When Cart Shown
    Sleep       0.5s
    Run Keyword and Ignore Error        AppiumLibrary.Capture Page Screenshot

Swipe to Next Content on Fullscreen
    AppiumLibrary.Swipe     500     2000    0       0       0

Scroll Page
    AppiumLibrary.Swipe         ${start_x}      ${start_y}      ${end_x}        ${end_y}        700