*** Keywords ***
Press Back
    AppiumLibrary.Press Keycode     66

Allow App Permission
    AppiumLibrary.Wait Until Element Is Visible         id=com.android.packageinstaller:id/permission_allow_button                 timeout=10s
    AppiumLibrary.Click Element         id=com.android.packageinstaller:id/permission_allow_button

Choose Random Device Media
    AppiumLibrary.Wait Until Element Is Visible         id=com.android.documentsui:id/nameplate                timeout=10s
    AppiumLibrary.Click Element         id=com.android.documentsui:id/nameplate