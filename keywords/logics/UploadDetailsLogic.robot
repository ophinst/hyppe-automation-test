*** Keywords ***
Edit Post Details
    UploadDetailsPage.Click Post Description Input
    ${caption}=     Generate Random String  20
    AppiumLibrary.Input Text Into Current Element           ${caption}
    GeneratorHelper.Choose Random Category

Ignore Content Selling Blocker
    UploadDetailsPage.Verify Content Selling Blocker Shown
    UploadDetailsPage.Click Confirm on Content Selling Blocker

Confirm Upload Post
    UploadDetailsPage.Verify Confirm Upload Button
    UploadDetailsPage.Click Confirm Upload Button

Confirm Upload Story
    UploadDetailsPage.Verify Confirm Upload Story Button
    UploadDetailsPage.Click Confirm Upload Story Button

Choose to Certify and Sell Content
    ${x}=       Set Variable        480
    ${y}=       Set Variable        2002
    @{coordinate}=      Create List         ${x}    ${y}
    AppiumLibrary.Tap With Positions     ${500}  ${coordinate}
    UploadDetailsPage.Verify on Certify and Sell Content Page
    UploadDetailsPage.Click Certify Content Checkbox
    UploadDetailsPage.Verify Certify Content Pop Up Shown
    UploadDetailsPage.Click Confirm Certify Content
    UploadDetailsPage.Verify Content Can be Sold
    UploadDetailsPage.Choose to Sell Content
    UploadDetailsPage.Verify Price Input Shown
    UploadDetailsPage.Click Price Input
    AppiumLibrary.Input Text Into Current Element           5000000
    UploadDetailsPage.Click Confirm Price Button
    UploadDetailsLogic.Confirm Upload Post
    UploadDetailsPage.Verify On Edit Post Page
