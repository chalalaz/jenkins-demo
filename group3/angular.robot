*** Settings ***
Library		SeleniumLibrary

*** Variables ***
&{file_1}  
*** Testcases ***
try upload angular
    Open upload web
    Select single  index01.png
    Select single  index02.png
    Select single  index03.png
    Page Should have 3 files
    Upload file  1
    Upload should be succeed  33%
    Upload file  2
    Upload should be succeed  67%
    Upload file  3
    Upload should be succeed  100%

*** Keywords ***
Open upload web
	Open Browser   http://nervgh.github.io/pages/angular-file-upload/examples/simple/   chrome

Select single
    [Arguments]   ${file}
    Choose FIle   xpath://*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]   ${CURDIR}/${file}

Page Should have 3 files
    Page Should Contain Element  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr   limit=3

Upload file
    [Arguments]   ${order}
    Click Element  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[${order}]/td[5]/button[1]

Upload should be succeed
    [Arguments]   ${width}
    Wait Until Page Contains Element  xpath://div[@style="width: ${width};"]

    
