*** Keywords ***
Press Back
    AppiumLibrary.Press Keycode     4

Allow App Permission
    ${element} =    Set Variable    com.android.permissioncontroller:id/permission_allow_foreground_only_button
    ${status} =     Run Keyword And Return Status    AppiumLibrary.Wait Until Element Is Visible    id=${element}    timeout=10s
    Run Keyword If    '${status}' == 'False'    Set Suite Variable    ${element}    com.android.permissioncontroller:id/permission_allow_button
    AppiumLibrary.Click Element    id=${element}

Choose Random Device Media
    ${element} =    Set Variable    id=com.google.android.providers.media.module:id/icon_thumbnail
    ${status} =     Run Keyword And Return Status    AppiumLibrary.Wait Until Element Is Visible    id=${element}    timeout=10s
    Run Keyword If    '${status}' == 'False'    Set Suite Variable    ${element}    com.google.android.documentsui:id/icon_thumb
    AppiumLibrary.Click Element    id=${element}

