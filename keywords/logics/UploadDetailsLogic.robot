*** Keywords ***
Edit Post Details
    Sleep       3s
    UploadDetailsPage.Verify On Upload Details Page
    UploadDetailsPage.Click Post Description Input
    Sleep       3s
    Input Text    xpath=//android.widget.EditText       Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    UploadDetailsPage.Click Post Category

Ignore Content Selling Blocker
    UploadDetailsPage.Verify Content Selling Blocker Shown
    UploadDetailsPage.Click Confirm on Content Selling Blocker

Confirm Upload Post
    UploadDetailsPage.Verify Confirm Upload Button
    UploadDetailsPage.Click Confirm Upload Button

Confirm Upload Story
    UploadDetailsPage.Verify Confirm Upload Story Button
    UploadDetailsPage.Click Confirm Upload Story Button
