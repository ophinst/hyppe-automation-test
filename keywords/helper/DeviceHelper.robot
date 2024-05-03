*** Keywords ***
Press Back
    AppiumLibrary.Press Keycode     4

Allow App Permission
    ${element} =    Set Variable    com.android.permissioncontroller:id/permission_allow_foreground_only_button
    ${status} =     Run Keyword And Return Status    AppiumLibrary.Wait Until Element Is Visible    id=${element}    timeout=5s
    Run Keyword If    '${status}' == 'False'    Set Suite Variable    ${element}    com.android.permissioncontroller:id/permission_allow_button
    Sleep       3s
    AppiumLibrary.Click Element    id=${element}

Choose Random Device Media
    ${element} =    Set Variable    id=com.google.android.providers.media.module:id/icon_thumbnail
    ${status} =     Run Keyword And Return Status    AppiumLibrary.Wait Until Element Is Visible    ${element}    timeout=10s
    Run Keyword If    '${status}' == 'False'    Set Suite Variable    ${element}    com.google.android.documentsui:id/icon_thumb
    AppiumLibrary.Click Element    ${element}

Verify Success Notification Shown
    AppiumLibrary.Wait Until Page Contains      Congratulations         timeout=60s

Close Homepage Blocker
    ${status} =         Run Keyword And Return Status       BannerLogic.Close Home Banner
    Run Keyword If    '${status}' == 'False'    DeviceHelper.Press Back

Get Screen Size
    ${size} =       AppiumLibrary.Get Element Size          id=android:id/content
    ${dimension} =  Get Dictionary Values    ${size}
    Set Global Variable     ${HEIGHT}        ${dimension}[0]
    Set Global Variable     ${WIDTH}        ${dimension}[1]
