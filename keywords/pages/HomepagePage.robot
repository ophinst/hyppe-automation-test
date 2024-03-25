*** Keywords ***
Verify On Homepage
    AppiumLibrary.Wait Until Element Is Visible         xpath=//*[@content-desc='Cerita Anda' or @content-desc='Your story']              timeout=15s
    
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
    @{coordinate}=      Create List     235    1261
    Sleep       1s
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}

Verify Homepage Blocker
    AppiumLibrary.Wait Until Element Is Visible         xpath=//*[@content-desc='Temukan ikon ini pada konten dan beli karya digital dari kreator favoritmu dengan mengetuk ikon keranjang!' or @content-desc='Konten dengan ikon ini menunjukkan konten telah memiliki hak kepemilikan yang di lindungi oleh Hyppe!']      timeout=1s

Close Homepage Blocker
    AppiumLibrary.Click Element         xpath=//*[@content-desc='Temukan ikon ini pada konten dan beli karya digital dari kreator favoritmu dengan mengetuk ikon keranjang!' or @content-desc='Konten dengan ikon ini menunjukkan konten telah memiliki hak kepemilikan yang di lindungi oleh Hyppe!']

Verify Follow Button On Homepage
    AppiumLibrary.Wait Until Element Is Visible         xpath=//*[@content-desc="Ikuti"]        timeout=5s

Click Follow On Homepage
    AppiumLibrary.Click Element         xpath=//*[@content-desc="Ikuti"]

Verify Login Card Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//*[@content-desc="Hyppe Login"]      timeout=5s

Click Options On Homepage
    ${x}=       Set Variable    956
    ${y}=       Set Variable    822
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}

Verify Ads Shown
    AppiumLibrary.Wait Until Page Contains      Lewati Iklan        timeout=15s

Verify Ads Not Shown
    AppiumLibrary.Wait Until Page Does Not Contain      Lewati Iklan

Skip Ads
    AppiumLibrary.Click Element         xpath=//android.view.View[@content-desc="Lewati Iklan"]
