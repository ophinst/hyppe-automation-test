*** Keywords ***
Verify On Explore Page
    AppiumLibrary.Wait Until Element Is Visible             xpath=//android.view.View[@content-desc="Tren Buat Kamu"]       timeout=10s

Click On First Hashtag
    AppiumLibrary.Click Element         xpath=//android.view.View/android.view.View/android.view.View[6]/android.view.View/android.widget.ImageView[@index=0]

Get First Hashtag Value
    ${raw_hashtag}=         AppiumLibrary.Get Element Attribute     xpath=//android.view.View/android.view.View/android.view.View[6]/android.view.View/android.widget.ImageView[@index=0]       content-desc
    @{hashtag}=    Split String    ${raw_hashtag}
    [Return]    ${hashtag}[0]


