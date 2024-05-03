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

Start Capturing Logs
    ${logfile_path}=    Set Variable    /home/dubstic/Workspaces/hyppe-test/logcat.txt
    Log    Logfile path: ${logfile_path}
    Run Process    adb -s ${UDID} logcat -c time | tee ${logfile_path}    shell=True
    Run Process    adb -s ${UDID} logcat time > ${logfile_path}    shell=True


Stop Capturing Logs
    Run Process    pkill -f 'adb -s ${UDID} logcat'    shell=True
