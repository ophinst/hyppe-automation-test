*** Keywords ***
Verify On Content Details Page
    AppiumLibrary.Wait Until Element Is Visible         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[2]     timeout=10s

Click Fullscreen Comment Button
    ${x}=       Set Variable    975
    ${y}=       Set Variable    1900
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}

Verify On Hyppevid Fullscreen
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View          timeout=10s

Verify Cart Icon on Fullscreen
    AppiumLibrary.Page Should Contain Text        Beli

Click Hyppepic Fullscren Like Button 
    ${x}=       Set Variable    975
    ${y}=       Set Variable    1744
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}

Click Hyppepic Fullscren Like Button When Cart Shown
    ${x}=       Set Variable    975
    ${y}=       Set Variable    1558
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}
