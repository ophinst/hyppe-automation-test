*** Settings ***
Library           OperatingSystem
Library           random
Library           Collections

*** Keywords ***
Generate Random String
    [Arguments]    ${length}
    @{chars}=    Create List    a    b    c    d    e    f    g    h    i    j    k    l    m    n    o    p    q    r    s    t    u    v    w    x    y    z
    ${output}=    Set Variable    ${EMPTY}
    FOR    ${index}    IN RANGE    ${length}
        ${character}=    Evaluate    random.choice(${chars})    modules=random
        ${output}=    Set Variable    ${output}${character}
    END
    [Return]    ${output}
