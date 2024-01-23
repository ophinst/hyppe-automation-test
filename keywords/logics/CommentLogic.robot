*** Keywords ***
Input Comment
	Sleep	3s
    CommentPage.Verify On Comment Page
	CommentPage.Click On Comment Input
	Sleep	3s
	AppiumLibrary.Input Text Into Current Element			Lorem ipsum dolor sit amet, consectetur adipiscing elit.
	CommentLogic.Send Comment

Send Comment
	CommentPage.Verify Kirim Comment Button Shown
	CommentPage.Click Kirim Comment Button