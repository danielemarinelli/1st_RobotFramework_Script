*** Settings ***

# Variables can be set in two sections
# under Variables and setting them under TestCase



*** Variables ***
${MY_VARIABLE} =  Hello there
${MY_LIST OF VARIABLES} =  Hi all  Goodbye  Goodnight pal  Hello
# N.B. two spaces between variables


*** Test Cases ***
Set a variable in the test case
    [Tags]  CurrentVar
    ${my_new_variable} =  Set Variable  Something else
    Log  ${my_new_variable}

Variable demonstration
    Log  ${MY_VARIABLE}

Variable demonstration 2
    Log  ${MY_VARIABLE}

Extract values from a list
    [Tags]  list
    Log  ${MY_LIST OF VARIABLES}
    Log  ${MY_LIST OF VARIABLES}[3]
    Log  ${MY_LIST OF VARIABLES}[2]
    Log  ${MY_LIST OF VARIABLES}[1]
    Log  ${MY_LIST OF VARIABLES}[0]
    Log To Console  ${MY_LIST OF VARIABLES}


Set list from TestCase
    [Tags]  list
    ${my_list_vars} =  Create List  Item 1  Item 2  Item 3  Item 4
    Log  ${my_list_vars}
    Log  ${my_list_vars}[2]
    Log To Console  ${my_list_vars}


*** Keywords ***
