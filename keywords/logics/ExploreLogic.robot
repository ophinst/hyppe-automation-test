*** Keywords ***
Click Hashtag On Explore Page
    ExplorePage.Verify On Explore Page
    ${hashtag}=     ExplorePage.Get First Hashtag Value
    ExplorePage.Click On First Hashtag
    [Return]        ${hashtag}

Select View More On Search Page
    ExplorePage.Verify View More Button Shown
    ExplorePage.Click View More Button

Select Search Box On Explore Page
    ExplorePage.Verify On Explore Page
    ExplorePage.Click On Search Box

Search User On Explore Page
    ExploreLogic.Select Search Box On Explore Page
    ExplorePage.Verify On Search Page
    AppiumLibrary.Input Text Into Current Element           hyppe
    ExploreLogic.Select View More On Search Page