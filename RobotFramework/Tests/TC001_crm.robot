*** Settings ***
Documentation          This is some basic info about the whole suite
Library                SeleniumLibrary

# Run the script --> robot -d results ./Tests/crm.robot
# https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]    This is basic info about the test
    [Tags]             1006    Smoke    Contacts
    Initialize Selenium
    Open the browser
    Click on Sign-in button
    Insert credentials
    Click on new-customer button and insert mandatory fields
    End test case



*** Keywords ***
Initialize Selenium
    Set selenium speed    .2s
    Set Selenium Timeout   7s

Open the browser
    Log                Starting test case!!
    Open Browser       https://automationplayground.com/crm/        chrome
    Maximize Browser Window
    Page Should Contain    Customers Are Priority One!

Click on Sign-in button
    Click Link         Sign In  #works even with id=SignIn or name=sign-in-link
    Page Should Contain    Login

Insert credentials
    Input Text         id=email-id    admin@robotframeworktutorial.com
    Input Text         id=password    qwe
    Click Button       Submit
    Page Should Contain    Our Happy Customers

Click on new-customer button and insert mandatory fields
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

End test case
     Sleep              3s
     Close browser

