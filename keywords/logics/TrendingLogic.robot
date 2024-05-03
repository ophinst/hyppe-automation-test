*** Keywords ***
Select and Scroll Content On Trending Page
    ${start_x}=    Evaluate    ${WIDTH} / 2
    ${start_y}=    Evaluate    ${HEIGHT} * 0.75
    ${end_x}=      Evaluate    ${WIDTH} / 2
    ${end_y}=      Evaluate    ${HEIGHT} * 0.025
    Set Global Variable    ${start_x}
    Set Global Variable    ${start_y}
    Set Global Variable    ${end_x}
    Set Global Variable    ${end_y}
    TrendingPage.Click First Content on Trending Page
    TrendingPage.Verify On Trending Page Content Detail
    Repeat Keyword    9     ContentDetailsLogic.Scroll Page