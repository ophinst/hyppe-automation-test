*** Keywords ***
Select Import Device Media
    CameraPage.Verify On Camera Page
    CameraPage.Verify Import Media Button Shown
    CameraPage.Click Import Media Button Shown
    Run Keyword And Ignore Error        DeviceHelper.Allow App Permission
    DeviceHelper.Choose Random Device Media

Capture With Camera
    CameraPage.Verify On Camera Page
    CameraPage.Verify Capture Button Shown
    CameraPage.Click Capture Button

Record With Camera
    CameraPage.Verify On Camera Page
    CameraPage.Verify Capture Button Shown
    CameraPage.Click Capture Button
    Sleep       17s
    CameraPage.Verify Stop Record Button Shown
    CameraPage.Click Stop Record Button
    Sleep       3s
    CameraPage.Pause Video Preview

Record Hyppestory Video With Camera
    CameraPage.Verify On Camera Page
    CameraPage.Verify Capture Button Shown
    CameraPage.Hold Capture Button
    Sleep       3s
    CameraPage.Pause Video Preview

Capture Hyppestory Picture With Camera
    CameraPage.Verify On Camera Page
    CameraPage.Verify Capture Button Shown
    CameraPage.Click Capture Button

Press Upload Button
    CameraPage.Verify Upload Button Shown
    CameraPage.Click Upload Button

Upload Story
    CameraPage.Verify Confirm Upload Story Button
    CameraPage.Click Confirm Upload Story Button
