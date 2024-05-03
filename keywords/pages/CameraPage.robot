*** Keywords ***
Verify On Camera Page
    AppiumLibrary.Wait Until Element Is Visible         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View                 timeout=10s

Verify Import Media Button Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[4]                 timeout=10s

Click Import Media Button Shown
    AppiumLibrary.Click Element         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[4]

Verify Upload Button Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.Button[@content-desc="Selanjutnya" or @content-desc="Next"]                 timeout=10s

Click Upload Button
    AppiumLibrary.Click Element         xpath=//android.widget.Button[@content-desc="Selanjutnya" or @content-desc="Next"]

Verify Confirm Upload Story Button
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.Button[@content-desc="Kirim"]                timeout=10s

Click Confirm Upload Story Button
    AppiumLibrary.Click Element         xpath=//android.widget.Button[@content-desc="Kirim"]

Verify Capture Button Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[5]                 timeout=10s

Click Capture Button
    AppiumLibrary.Click Element         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[5]

Hold Capture Button
    AppiumLibrary.Long Press       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[5]            duration=5000

Verify Stop Record Button Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@index=1]                 timeout=10s

Click Stop Record Button
    AppiumLibrary.Click Element         xpath=//android.view.View[@index=1]

Pause Video Preview
    AppiumLibrary.Click Element         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View 
