*** Keywords ***
Verify On Trending Page with Selected Hashtag
    [Arguments]     ${hashtag}
    AppiumLibrary.Wait Until Element Is Visible             xpath=//android.view.View[@content-desc="${hashtag}"]

Click First Content on Trending Page
    @{coordinate}=      Create List     190    880
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}

Verify On Trending Page Content Detail
    AppiumLibrary.Wait Until Page Contains      Pic Teratas         timeout=10s