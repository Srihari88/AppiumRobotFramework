	Confirm the remove account      
        [Teardown]   Close All Applications

TestCase-2:Verify Incorrect user account with bit glass
        [documentation]  This is the testcase-2 flow for to verify the bit glass user 
        ...         #Test-2 Work flow#
	...         a) Add  account to email client 'jill@auto-btglss.info (Test123@)'.
	...         b) On entering email and password, the server address automatically fills up with “auto-btglss.info”.
	...	    c) Verify server address
	...	    d) Continue and try adding the account.
	...	    e) User should not be able to add account and error should show up
	...	    f) Verify error message “Couldn’t open connection to server.”
        ...         Author: Srihari Naidu
	Open android settings        
        Tap Add an account       
        Tap on exchange email Icon text       
        Enter the email address		jill@auto-btglss.info       
        Confirm to move Password Page        
        Enter the password		Test123@
        Click Next to verify the server addess
        Verify the Server popup message
        Contine to move further by clicking OK button
	Verify server address
	Contine to click next button 
	Verify the server error message
	Background App
	[Teardown]   Close All Applications
	
	

TestCase-3:Verify the user jack@auto-btglss.info/Test123@
        [documentation]  This is the testcase-3 flow for to verify the bit glass user
        ...         #Test-3 Work flow#
	...         a) Add following account to email client jack@auto-btglss.info (Test123@).
        ...         b) On entering email and password, the server address automatically fills up with “outlook.office365.com”.
        ...         c) Verify server address
        ...         d) Continue and add this account.
        ...         e) Verify email sync
        ...         f) Go to account settings and re-verify that server address is still same  “outlook.office365.com”.
        ...         Author: Srihari Naidu
	Open android settings
        Tap Add an account
        Tap on exchange email Icon text
        Enter the email address		jack@auto-btglss.info
        Confirm to move Password Page
        Enter the password		Test123@
        Click Next to verify the server addess
        Verify the Server popup message
	Click Next to verify the server addess
	Verify server address outlook.office365.com
	Background App
	[Teardown]   Close All Applications


#TestCase-4:Delete all added accounts 
        [documentation]  This is the testcase-4 flow to delete the all accounts
        ...         #Test-4 Work flow#
	...         a) Go to the Account settings 
        ...         b) Click on the exchange 
        ...         c) Click on the added acounts
        ...         d) remove the accounts from the device 
        ...         e) Verify email sync         
        ...         Author: Srihari Naidu
	Open android settings
        Tap Add an account
        Go back to accounts and click on the exchange button
	Click on the account which is added
	Press more button to see delete account options
	Click remove account
	Confirm the remove account      
        [Teardown]   Close All Applications
	
	
	
	
        