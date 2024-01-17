*** Keywords ***
Press Back
    AppiumLibrary.Press Keycode     66

Allow App Permission
    AppiumLibrary.Wait Until Element Is Visible         id=com.android.permissioncontroller:id/permission_allow_foreground_only_button           timeout=10s
    AppiumLibrary.Click Element         id=com.android.permissioncontroller:id/permission_allow_foreground_only_button

Choose Random Device Media
    AppiumLibrary.Wait Until Element Is Visible         xpath=(//android.widget.ImageView[@resource-id="com.google.android.providers.media.module:id/icon_thumbnail"])[2]              timeout=10s
    AppiumLibrary.Click Element         xpath=(//android.widget.ImageView[@resource-id="com.google.android.providers.media.module:id/icon_thumbnail"])[2]