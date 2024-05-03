*** Keywords ***
Verify On Explore Page
    AppiumLibrary.Wait Until Element Is Visible             xpath=//android.view.View[@content-desc="Tren Buat Kamu"]       timeout=10s

Click On First Hashtag
    AppiumLibrary.Click Element         xpath=//android.view.View/android.view.View/android.view.View[6]/android.view.View/android.widget.ImageView[@index=0]

Get First Hashtag Value
    ${raw_hashtag}=         AppiumLibrary.Get Element Attribute     xpath=//android.view.View/android.view.View/android.view.View[6]/android.view.View/android.widget.ImageView[@index=0]       content-desc
    @{hashtag}=    Split String    ${raw_hashtag}
    [Return]    ${hashtag}[0]

Click On Search Box
    @{coordinate}=      Create List        540      607
    AppiumLibrary.Tap With Positions        ${500}      ${coordinate}

Verify On Search Page
    AppiumLibrary.Wait Until Element Is Visible             xpath=//*[@content-desc="Riwayat Pencarian"]        timeout=10s

Verify View More Button Shown
    AppiumLibrary.Wait Until Element Is Visible             xpath=//*[@content-desc="Lihat Selengkapnya"]        timeout=10s

Click View More Button
    AppiumLibrary.Click Element         xpath=//*[@content-desc="Lihat Selengkapnya"]

Verify Hyppe Offical Account Shown On Explore Page
    AppiumLibrary.Wait Until Element Is Visible             xpath=//*[@content-desc="Hyppe" or @content-desc="hyppe"]        timeout=10s

Click Hyppe Offical Account On Explore Page
    AppiumLibrary.Click Element         xpath=//*[@content-desc="Hyppe" or @content-desc="hyppe"]