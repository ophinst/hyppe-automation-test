*** Keywords ***
Select Comment Button
    ContentDetailsPage.Verify On Content Details Page
    ContentDetailsPage.Verify Comment Button Shown
    ContentDetailsPage.Click Comment Button

Click Like Button
    ${status}=          Run Keyword And Return Status     ContentDetailsPage.Verify Cart Icon on Fullscreen
    Run Keyword If      '${status}'=='False'              ContentDetailsPage.Click Hyppepic Fullscren Like Button
    Run Keyword If      '${status}'=='True'               ContentDetailsPage.Click Hyppepic Fullscren Like Button When Cart Shown
