*** Keywords ***
Verify On Content Details Page
    AppiumLibrary.Wait Until Element Is Visible         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View     timeout=10s

Click Fullscreen Comment Button
    ${x}=       Set Variable    975
    ${y}=       Set Variable    1900
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}

Verify On Hyppevid Fullscreen
    AppiumLibrary.Wait Until Element Is Visible         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View     timeout=10s

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
    ${x}=       Set Variable    959
    ${y}=       Set Variable    1900
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}

Click Hyppevid Fullscreen Like Button When Cart Shown
    ${x}=       Set Variable    959
    ${y}=       Set Variable    1750
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}

Tap Hyppevid screen
    Sleep       2s
    ${x}=       Evaluate    ${WIDTH}/2
    ${y}=       Evaluate    ${HEIGHT}/2 + 150
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}

Get Content Caption
    ${caption}=         AppiumLibrary.Get Element Attribute         xpath=//android.view.View[@bounds="[29,2043][507,2109]"]      content-desc
    [Return]    ${caption}

Verify Next Content Played
    [Arguments]     ${caption}
    AppiumLibrary.Wait Until Page Does Not Contain          ${caption}          timeout=10s