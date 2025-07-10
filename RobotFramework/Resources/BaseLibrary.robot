*** Settings ***
Library                SeleniumLibrary

*** Keywords ***
Initialize Selenium
    Set selenium speed    .2s
    Set Selenium Timeout   7s

Launch the browser
    Log                Starting test case!!
    Open Browser       https://automationplayground.com/crm/        chrome
    Maximize Browser Window
    Page Should Contain    Customers Are Priority One!


Close the browser
     Sleep              3s
     Close browser
