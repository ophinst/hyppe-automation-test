*** Keywords ***
Verify On Homepage
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@content-desc="Cerita Anda"]              timeout=15s
    
Verify Hyppepic Tab
    AppiumLibrary.Wait Until Element Is Visible         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.ScrollView/android.view.View[4]/android.view.View[@index=0]   timeout=15s

Click Hyppepic Tab
    AppiumLibrary.Click Element         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.ScrollView/android.view.View[4]/android.view.View[@index=0]

Verify Hyppediary Tab
    AppiumLibrary.Wait Until Element Is Visible         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.ScrollView/android.view.View[4]/android.view.View[@index=1]   timeout=15s

Click Hyppediary Tab
    AppiumLibrary.Click Element         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.ScrollView/android.view.View[4]/android.view.View[@index=1]

Verify Hyppevid Tab
    AppiumLibrary.Wait Until Element Is Visible         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.ScrollView/android.view.View[4]/android.view.View[@index=2]   timeout=15s

Click Hyppevid Tab
    AppiumLibrary.Click Element         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.ScrollView/android.view.View[4]/android.view.View[@index=2]

Verify Hyppepic Tab Is Focused
    AppiumLibrary.Element Attribute Should Match            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.ScrollView/android.view.View[4]/android.view.View[@index=0]           selected        true

Verify Hyppediary Tab Is Focused
    AppiumLibrary.Element Attribute Should Match            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.ScrollView/android.view.View[4]/android.view.View[@index=1]           selected        true

Verify Hyppevid Tab Is Focused
    AppiumLibrary.Element Attribute Should Match            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.ScrollView/android.view.View[4]/android.view.View[@index=2]           selected        true

Choose Random Content
    [Documentation]     Will choose first content appears in the homepage
    ${x}=       Set Variable    528
    ${y}=       Set Variable    1261
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}
