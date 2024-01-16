*** Keywords ***
Verify Home Banner 
    AppiumLibrary.Wait Until Element Is Visible         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.widget.ImageView                 timeout=25s

Verify Close Home Banner Button Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.widget.ImageView                 timeout=10s

Click Close Home Banner Button
    AppiumLibrary.Click Element         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.widget.ImageView

Verify Upload Guide Banner Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@content-desc="Pilih kategori Konten, menambah kategori akan memperluas jangkauan konten mu!"]                 timeout=10s

Verify Content Successfully Uploaded Banner Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@content-desc="Konten diupload"]                timeout=30s
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.Button[@content-desc="Ok"]                timeout=30s

Click OK on Content Uploaded Banner
    AppiumLibrary.Click Element         xpath=//android.widget.Button[@content-desc="Ok"]
