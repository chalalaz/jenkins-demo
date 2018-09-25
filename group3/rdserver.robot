*** Settings ***
Library		SeleniumLibrary
# Suite Teardown	Close Browser

*** Testcases ***
ยื่นแบบ Online ไม่ได้
	[Tags]  dev
	Open tax online page
	Open manual of compatability view Settings
	Close warning popup
	Close Browser

*** Keywords ***
Open tax online page
	Open Browser   https://rdserver.rd.go.th/publish/index.php?page=taxonline   chrome

Open manual of compatability view Settings
	Select Frame    xpath://*[@id="lightboxdialog"]/p/iframe
	Click Link    คลิก

Close warning popup
	Select Window
	Click Element    xpath://*[@id="lightboxdialog"]/button