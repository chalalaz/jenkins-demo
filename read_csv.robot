*** Setting ***
Library  CSVLib.py

*** Test cases ***
Try to write dictionary data to csv file
    [Tags]  dev
    &{user_info}=  Create Dictionary
    ...  email=somkiat@gmail.com
    ...  mobile_no=089332933
    @{all data}=  Create List
    ...  ${user_info}
    ...  ${user_info}
    Write Data  ${all data}
    Log to console   ${user_info}

Try to read from user.csv with for loop
    ${users}=  Read Data   users.csv
    Log to console   ${users}
    :FOR  ${data}  IN  @{users}
    \  Log to console  @{data}[0]=@{data}[1]

Try to read from user.csv
    ${users}=  Read Data   users.csv
    Log to console   ${users}