*** Keywords ***
Input Login and Password Via Email Login
    LoginPage.Verify Login Email Input Shown
    LoginPage.Click Login Email Input
    Sleep       0.5s
    Input Text    xpath=//android.widget.EditText  ilhamarahman97@gmail.com
    LoginPage.Verify Login Password Input Shown
    LoginPage.Click Login Password Input
    Sleep       0.5s
    Input Text    xpath=//android.widget.ImageView[2]  test12345