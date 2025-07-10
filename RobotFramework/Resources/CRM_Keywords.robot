*** Settings ***
Library                SeleniumLibrary
Resource  ../Resources/PageObject/LoginPage.robot
Resource  ../Resources/PageObject/CustomerServicePage.robot

*** Keywords ***

Click on Sign-in button
    LoginPage.Sign-in action

Insert credentials
    LoginPage.User inserts credential for login

Click on new-customer button and insert mandatory fields
    CustomerServicePage.insert information



