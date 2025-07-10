*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Sign-in action
    Click Link         Sign In  #works even with id=SignIn or name=sign-in-link
    Page Should Contain    Login

User inserts credential for login
    Input Text         id=email-id    admin@robotframeworktutorial.com
    Input Text         id=password    qwe
    Click Button       Submit
    Page Should Contain    Our Happy Customers




