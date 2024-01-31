*** Keywords ***
Verify On Upload Details Page
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@content-desc="Postingan Baru"]                timeout=10s

Verify Confirm Upload Button
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.Button[@content-desc="Konfirmasi"]                timeout=10s

Click Confirm Upload Button
    AppiumLibrary.Click Element         xpath=//android.widget.Button[@content-desc="Konfirmasi"]

Click Post Description Input
    AppiumLibrary.Click Element         xpath=//android.widget.EditText

Click Post Category
    AppiumLibrary.Click Element         xpath=//android.view.View[@content-desc="Hewan"]

Verify Content Selling Blocker Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@content-desc="Apa anda yakin?"]          timeout=10s
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.widget.Button[@content-desc="Ya, Tetap Posting"]          timeout=10s

Click Confirm on Content Selling Blocker
    AppiumLibrary.Click Element         xpath=//android.widget.Button[@content-desc="Ya, Tetap Posting"]

Verify on Certify and Sell Content Page
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@content-desc="Kepemilikan & Penjualan"]        timeout=10s

Click Certify Content Checkbox
    AppiumLibrary.Click Element         xpath=//android.widget.CheckBox

Verify Certify Content Pop Up Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@content-desc="Pendaftaran Kepemilikan Konten"]        timeout=10s

Click Confirm Certify Content
    AppiumLibrary.Click Element         xpath=//android.widget.Button[@content-desc="Iya, Yakin"]

Verify Content Can be Sold
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@content-desc="Jual Konten"]      timeout=10s

Choose to Sell Content
    AppiumLibrary.Click Element         xpath=//android.widget.Switch

Verify Price Input Shown
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@content-desc="Tentukan Harga"]       timeout=10s

Click Price Input
    AppiumLibrary.Click Element         xpath=//android.widget.EditText

Click Confirm Price Button
    AppiumLibrary.Click Element         xpath=//android.view.View[@content-desc="Tentukan Harga"]

Verify On Edit Post Page
    AppiumLibrary.Wait Until Element Is Visible         xpath=//android.view.View[@content-desc="Sunting Kirim"]        timeout=10s

Click on Confirm Edit Post
    AppiumLibrary.Click Element         xpath=//android.widget.Button[@content-desc="Simpan"]