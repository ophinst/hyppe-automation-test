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
    ${start_x}=    Evaluate    ${WIDTH} / 2
    ${start_y}=    Evaluate    ${HEIGHT} * 0.75
    ${end_x}=      Evaluate    ${WIDTH} / 2
    ${end_y}=      Evaluate    ${HEIGHT} * 0.025
    Set Global Variable    ${start_x}
    Set Global Variable    ${start_y}
    Set Global Variable    ${end_x}
    Set Global Variable    ${end_y}
    FOR    ${index}    IN RANGE    10
        ${status}=          Run Keyword And Return Status       HomepagePage.Verify Homepage Blocker
        Run Keyword If      '${status}'=='True'         HomepagePage.Close Homepage Blocker
        ContentDetailsLogic.Scroll Page
    END

Ignore Login Card
    HomepagePage.Verify Login Card Shown
    DeviceHelper.Press Back

Ads Handler
    ${status}=          Run Keyword And Return Status   HomepagePage.Verify Ads Shown
    Run Keyword If      '${status}'=='True'         HomepagePage.Skip Ads