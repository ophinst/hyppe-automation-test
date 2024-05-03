*** Keywords ***
Select Random Interest
    ${start_x}=    Evaluate    ${WIDTH} / 2
    ${start_y}=    Evaluate    ${HEIGHT} * 0.75
    ${end_x}=      Evaluate    ${WIDTH} / 2
    ${end_y}=      Evaluate    ${HEIGHT} * 0.025
    Set Global Variable    ${start_x}
    Set Global Variable    ${start_y}
    Set Global Variable    ${end_x}
    Set Global Variable    ${end_y}
    ContentDetailsLogic.Scroll Page
    GeneratorHelper.Choose Random Interest

Scroll Up Page In Interest Page
    ${start_x}=    Evaluate    ${WIDTH} / 2
    ${start_y}=    Evaluate    ${HEIGHT} * 0.75
    ${end_x}=      Evaluate    ${WIDTH} / 2
    ${end_y}=      Evaluate    ${HEIGHT} * 0.025
    Set Global Variable    ${start_x}
    Set Global Variable    ${start_y}
    Set Global Variable    ${end_x}
    Set Global Variable    ${end_y}
    Repeat Keyword      9            ContentDetailsLogic.Scroll Page

Swipe Down In Interest Page
    ${start_x}=    Evaluate    ${WIDTH} / 2
    ${start_y}=      Evaluate    ${HEIGHT} * 0.24
    ${end_x}=      Evaluate    ${WIDTH} / 2
    ${end_y}=    Evaluate    ${HEIGHT} * 0.75
    Set Global Variable    ${start_x}
    Set Global Variable    ${start_y}
    Set Global Variable    ${end_x}
    Set Global Variable    ${end_y}
    Repeat Keyword      15            ContentDetailsLogic.Scroll Page
