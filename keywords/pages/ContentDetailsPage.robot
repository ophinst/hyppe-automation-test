*** Keywords ***
Verify On Content Details Page
    AppiumLibrary.Wait Until Element Is Visible         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[2]     timeout=10s

Verify Comment Button Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@content-desc="Komentar"]     timeout=10s

Click Comment Button
    AppiumLibrary.Click Element         xpath=//android.view.View[@content-desc="Komentar"]
         timeout=10s

Verify On Hyppevid Fullscreen
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View          timeout=10s