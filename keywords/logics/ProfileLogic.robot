*** Keywords ***
Edit Profile Bio
    ProfilePage.Click Profile Bio Input Field
    ProfilePage.Clear Bio Input Field
    ${bio}=     Generate Random String  10
    AppiumLibrary.Input Text Into Current Element           ${bio}
    Sleep       3s

Select Random Post on Profile Page
    ${x}=       Set Variable    174
    ${y}=       Set Variable    1260
    @{coordinate}=      Create List     ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}

Select Edit Post on Profile Page
    ProfilePage.Verify Edit Post Button Shown
    ProfilePage.Click Edit Post Button
