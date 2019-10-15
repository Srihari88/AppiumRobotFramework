*** Settings ***
Documentation     This is the test suite for launching the application & Adding the different bit glass email account to Gmail & verify the server address  ...the XXXXXX to the
...               Author: Srihari naidu
Library           AppiumLibrary
Resource          ../Keywords/Keywords.robot
Resource          ../Elements/Variables.robot
Metadata   Author 		SriHariNaidu
Metadata   Executed At  	${deviceName}


*** Test Cases ***
TestCase-1: Launch the setting application & verify the bit glass User
    [Documentation]  This is the test flow for first testcas-1 to add the XXXXXX to the Add accounts.
        ...         #Test Work flow#
        ...         a) Go to Settings app on device
        ...         b) Click on the Add An account
        ...         c) Click on the exchange app
        ...         d) Enter email address XXXXXX.info and click “Next”
        ...         e) Enter password “XXXXXX@” and click “Next”
        ...         f) click on the gmail confirmation button “Activate”
        ...         g) click on the gmail active button
        ...         h) click on the finish button
        ...         Author: Srihari Naidu
    Open android settings
    Tap Add an account
    Tap on exchange email Icon text
    Enter the email address		${UserEmail1}
    Confirm to move Password Page
    Enter the password		${User_Password}
    Click Next to verify the server addess
    Verify the Server popup message
    Contine to move further by clicking OK button
	Verify the outlook office365     XXXXXX.net
	Contine to click next button
	Click ok button on security active page
	Active this device as a administator
	Click Next button to add this account
	Allow Gmail for calandar
	Open Gmail app
	Go inside the Gmail App to verify the emails
	Open android settings
	Go back to accounts and click on the exchange button
	Press on the Account Settings
	Click on the added email
	Swipe Up
	Go to incoming settings and passwords
	Verify the Server email address
	Click on the done button
#	[Teardown]   Close Application


TestCase-3:Verify the user jack@auto-btglss.info/Test123@
    [Documentation]  This is the testcase-3 flow for to verify the bit glass user
        ...         #Test-3 Work flow#
	    ...         a) Add following account to email client .
        ...         b) On entering email and password, the server address automatically fills up with “”.
        ...         c) Verify server address
        ...         d) Continue and add this account.
        ...         e) Verify email sync
        ...         f) Go to account settings and re-verify that server address is still same  “”.
        ...         Author: Srihari Naidu
	Open android settings
    Tap Add an account
    Tap on exchange email Icon text
    Enter the email address		${UserEmail3}
    Confirm to move Password Page
    Enter the password		${User_Password}
    Click Next to verify the server addess
    Verify the Server popup message
	Contine to move further by clicking OK button
	Continue OK
#	Verify the outlook office365
	Contine to click next button
	Click ok button on security active page
	Active this device as a administator
	Click Next button to add this account
	Allow Gmail for calandar
	Close Application
	Open Gmail app
	Go inside the Gmail App to verify the emails
	Open android settings
	Go back to accounts and click on the exchange button
	Press on the Account Settings
	Move to email and click on it
	Swipe Up
	Go to incoming settings and passwords
	Server address verify
	Click on the done button
#	[Teardown]   Close Application


TestCase-2:Verify Incorrect user account in bit glass account
    [Documentation]  This is the testcase-2 flow for to verify the incorrect bit glass user
    ...         #Test-2 Work flow#
	...     a) Add  account to email client ''.
	...     b) On entering email and password, the server address automatically fills up with “”.
	...	    c) Verify server address
	...	    d) Continue and try adding the account.
	...	    e) User should not be able to add account and error should show up
	...	    f) Verify error message “Couldn’t open connection to server.”
    ...         Author: Srihari Naidu
	Open android settings
    Tap Add an account
    Tap on exchange email Icon text
    Enter the email address		${UserEmail2}
    Confirm to move Password Page
    Enter the password		${User_Password}
    Click Next to verify the server addess
    Verify the Server popup message
    Continue OK
	Verify the auto bitglass server address
	Contine to click next button
	Verify the server error message
#	Quit Application
#	[Teardown]	Close All Applications


TestCase-4:Delete all added accounts
    [Documentation]  This is the testcase-4 flow to delete the all accounts
    ...         #Test-4 Work flow#
	...         a) Go to the Account settings
    ...         b) Click on the exchange
    ...         c) Click on the added acounts
    ...         d) remove the accounts from the device
    ...         Author: Srihari Naidu
	Open android settings
    Go back to accounts and click on the exchange button
	Click on the account which is added
	Press more button to see delete account options
	Click remove account
	Confirm the remove account
	Close Application
	Open android settings
    Go back to accounts and click on the exchange button
	Move to email and click on it
	Press more button to see delete account options
	Click remove account
	Confirm the remove account
 #  [Teardown]   Close All Applications
