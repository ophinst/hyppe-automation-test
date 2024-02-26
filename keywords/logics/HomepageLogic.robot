*** Keywords ***
Select Hyppepic Tab
    HomepagePage.Verify Hyppepic Tab
    HomepagePage.Click Hyppepic Tab
    HomepagePage.Verify Hyppepic Tab Is Focused

Select Hyppediary Tab
    HomepagePage.Verify Hyppediary Tab
    HomepagePage.Click Hyppediary Tab
    HomepagePage.Verify Hyppediary Tab Is Focused

Select Hyppevid Tab
    HomepagePage.Verify Hyppevid Tab
    HomepagePage.Click Hyppevid Tab
    HomepagePage.Verify Hyppevid Tab Is Focused

Scroll On Homepage and Ignore Blocker
    FOR    ${index}    IN RANGE    6
        ${status}=          Run Keyword And Return Status       HomepagePage.Verify Homepage Blocker
        Run Keyword If      '${status}'=='True'         HomepagePage.Click Homepage Blocker
        ContentDetailsLogic.Swipe Up to Next Content
    END

Ignore Login Card
    HomepagePage.Verify Login Card Shown
    DeviceHelper.Press Back

Ads Handler
    ${status}=          Run Keyword And Return Status   HomepagePage.Verify Ads Shown
    Run Keyword If      '${status}'=='True'         HomepagePage.Skip Ads