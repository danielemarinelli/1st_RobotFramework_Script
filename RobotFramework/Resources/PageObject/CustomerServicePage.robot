*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
insert information
     Click link       id=new-customer  #it is not a button (NB: dont' use CLICK BUTTON keyword) , it's a link ->anchor tag!!
    Page Should Contain    Add Customer

    Input Text         id=EmailAddress    backtothefuture@test.it
    Input Text         id=FirstName       Martin
    Input Text         id=LastName        Eastwood
    Input Text         id=City            Hill Valley
    Select From List By Value    id=StateOrRegion    NY
    Select Radio Button    gender    male
    Select Checkbox    name=promos-name
    Click Button       Submit  # this is a button not an anchor , tag=button so can use 'click button' keyword
    Wait Until Page Contains    Success! New customer added.




