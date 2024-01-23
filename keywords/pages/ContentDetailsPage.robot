*** Keywords ***
Verify On Content Details Page
    AppiumLibrary.Wait Until Element Is Visible         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[2]     timeout=10s

Verify On Vid Content Details Page
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View       timeout=10s
	
//android.view.View[@content-desc="00:00/00:00 65 minggu yang lalu"]/android.view.View[1]/android.view.View

Verify Comment Button Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@content-desc="Komentar"]     timeout=10s

Click Comment Button
    AppiumLibrary.Click Element         xpath=//android.view.View[@content-desc="Komentar"]     timeout=10s

Verify On Hyppevid Fullscreen
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View          timeout=10s

Verify Cart Icon on Fullscreen
    AppiumLibrary.Page Should Contain Text        Beli

Click Hyppepic Fullscreen Like Button 
    ${x}=       Set Variable    975
    ${y}=       Set Variable    1744
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}

Click Hyppepic Fullscreen Like Button When Cart Shown
    ${x}=       Set Variable    975
    ${y}=       Set Variable    1558
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}

Click Hyppevid Fullscreen Like Button 
    ${x}=       Set Variable    984
    ${y}=       Set Variable    1840
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}

Click Hyppevid Fullscreen Like Button When Cart Shown
    ${x}=       Set Variable    984
    ${y}=       Set Variable    1840
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}

Tap Hyppevid screen
    ${x}=       Set Variable    235
    ${y}=       Set Variable    1261
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}