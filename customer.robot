*** Settings ***
Library Collections

*** Variables ***
&{user_info_1}  email=somkiat@gmail.com  
...   mobile_no=022111111

*** Test Cases ***
Test 1
    Fill in customer information    ${user_info_1}

Test 2
    &{user_info}=  Create Dictionary
    ...  email=somkiat@gmail.com
    ...  mobile_no=089332933
    Fill in customer information    ${user_info}


*** Keywords ***
Fill in customer information
    [Arguments]   ${user}
    Log to console  ${user.email}
    Log to console  ${user.mobile_no}