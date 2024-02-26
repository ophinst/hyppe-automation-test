*** Keywords ***
Click Hashtag On Explore Page
    ExplorePage.Verify On Explore Page
    ${hashtag}=     ExplorePage.Get First Hashtag Value
    ExplorePage.Click On First Hashtag
    [Return]        ${hashtag}