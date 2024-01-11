*** Keywords ***
Capture Failed
    Run Keyword If Test Failed    Failure Callback

Failure Callback
    AppiumLibrary.Capture Page Screenshot
    AppiumLibrary.Log Source

Kill Appium
    Run Keyword If    '${REMOTE_SELENIUM}' == 'false'     Terminate Process     ${APPIUM_INSTANCE}    kill=true

Close Appium Server
    Close Application
    Kill Appium
