*** Keywords ***
Edit Profile Bio
    ProfilePage.Click Profile Bio Input Field
    ProfilePage.Clear Bio Input Field
    ${bio}=     Generate Random String  10
    AppiumLibrary.Input Text Into Current Element           ${bio}
    Sleep       3s