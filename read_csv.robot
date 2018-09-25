*** Setting ***
Library  CSVLib.py

*** Test cases ***
Try to read from user.csv with for loop
    ${users}=  Read Data   users.csv
    Log to console   ${users}
    :FOR  ${data}  IN  @{users}
    \  Log to console  @{data}[0]=@{data}[1]

Try to read from user.csv
    ${users}=  Read Data   users.csv
    Log to console   ${users}