*** Settings ***
Documentation     This is the test User defined keywords of the application where list of all keywords for the projects suite for lunching the settings
...               Author: Srihari naidu
Library           AppiumLibrary
Resource         ../Elements/Variables.robot

*** Keywords ***

Open android settings
    [Documentation]         Here is the list of desicred capabilites of the device and platform & App activity, Package names of the applicat
    Open application       ${Host}
    ...     platformName=${platformName}
    ...     platformVersion=${platformVersion}
    ...     deviceName=${deviceName}
    ...     appPackage=${app_Package}
    ...     appActivity=${app_Activity}
    ...     fastReset=${FullRest}
    Capture Page Screenshot


Tap Add an account
    [Documentation]         This Keyword is used for tapping on the Add account button
    Wait Until Element Is Visible                ${Text_AddAccount}
    click element                                ${Text_AddAccount}
    Capture Page Screenshot


Tap on exchange email Icon text
    [Documentation]         This Keyword is used for tapping on the Exchange button
    Wait Until Element Is Visible        ${Text_Exchange}
    click element                          ${Text_Exchange}
    Capture Page Screenshot


Enter the email address
    [Documentation]         This Keyword is used entering the input field for email id

    [Arguments]                            ${emailaddress}		#Providng the arguments to enter the Email Id
    Wait Until Element Is Visible          ${Email_Id}		${Wait}
    input text                             ${Email_Id}     	${emailaddress}
    Capture Page Screenshot

Confirm to move Password Page
    [Documentation]         This Keyword is used click next button to enter the password
    ...         Author: Srihari Naidu
    Wait Until Element Is Visible          ${Next_after}
    click element                          ${Next_after}
    Capture Page Screenshot

Enter the password
    [Documentation]         This Keyword is used entering the input fiel
    [Arguments]                            ${enter_password}         #Providng the arguments to enter the password
    Wait Until Element Is Visible          ${Password}
    Hide Keyboard
    input text                             ${Password}     ${enter_password}
    Capture Page Screenshot


Click Next to verify the server addess
    [Documentation]         This Keyword is used click next button after entered the password

    Wait Until Element Is Visible          ${Next_Password-after}
    click element                          ${Next_Password-after}
    Capture Page Screenshot



Verify the Server popup message

    [Documentation]         This Keyword is used to verify the server popped up message
    Wait Until Element Is Visible               ${Server_address_Verify}
    ${Expected_address}=	Get Text	${Server_address_Verify}
    Capture Page Screenshot
    log     		${Expected_address}
    Should Be Equal	${Expected_address}      To configure your account, Gmail is being asked to send account info to https://autodiscover-s.us.bitglass.net/autodiscover/autodiscover.xml. Is this OK?

Contine to move further by clicking OK button
    [Documentation]         This Keyword is used entering the input field for Password

    Wait Until Element Is Visible          ${Press_ok}
    click element                          ${Press_ok}
    Capture Page Screenshot


Verify the auto bitglass server address
    [Documentation]         Make sure auto-populated server address is “auto-btglss.info”
    Wait Until Element Is Visible          	  ${bitglass_server}
    ${Server}=        Get Text                 	  ${bitglass_server}
    Capture Page Screenshot
    log 					   ${Server}
    Should Be Equal        ${Server}		   auto-btglss.info


Verify the outlook office365
    [Documentation]         Verify Outlook office addess outlook-office365-com.us.bitglass.net
    [Arguments]				${address_server_verify}
    Wait Until Element Is Visible          	  ${bitglass_server}
    ${Server}=        Get Text                 	  ${bitglass_server}
    Capture Page Screenshot
    log 					   ${Server}
    Should Be Equal        ${Server}		   ${address_server_verify}


Contine to click next button
    [Documentation]         Click Next button
    ...         Author: Srihari Naidu
    Wait Until Element Is Visible          ${Next_After_ServerVerify}
    click element			   ${Next_After_ServerVerify}
    Capture Page Screenshot


Click ok button on security active page
    [Documentation]         Click OK button
    Wait Until Element Is Visible         ${Security_Ok}	${Wait}
    click element			  ${Security_Ok}
    Capture Page Screenshot


Active this device as a administator
    [Documentation]         Active this device as a administator

    Wait Until Element Is Visible         ${Active_Admin}
    click element			  ${Active_Admin}
    Capture Page Screenshot


Click Next button to add this account
    [Documentation]         Next button to Active this device as a administator

    Wait Until Element Is Visible         ${Final_Security_Ok}
    click element			  ${Final_Security_Ok}
    sleep				  ${LessWait}
    Capture Page Screenshot

Open Gmail app
    [Documentation]         All Desired capabilities of the Gmail application

    Open application       ${Host}
    ...     platformName=${platformName}
    ...     platformVersion=${platformVersion}
    ...     deviceName=${deviceName}
    ...     appPackage=${Gmailapp_Package}
    ...     appActivity=${Gmailapp_Activity}
    Capture Page Screenshot


Go inside the Gmail App to verify the emails
      [Documentation]         Go inside the Gmail app and verify the emails

      Wait Until Element Is Visible          ${Gmail_Welcome}
      click element	      		     ${Gmail_Welcome}
      Capture Page Screenshot
      Wait Until Element Is Visible          ${takemetoGmail}		${LessWait}
      click element	      		     ${takemetoGmail}
      Capture Page Screenshot
      Wait Until Element Is Visible          ${Gmail_Dismiss}
      click element	      		     ${Gmail_Dismiss}
      Capture Page Screenshot
      Wait Until Element Is Visible          ${Gmail_Dismiss}
      click element	      		     ${Gmail_Dismiss}
      Capture Page Screenshot


Switch to the Gmail account
      [Documentation]         Switch to Gmail account on the email app.
      ...         Author: Srihari Naidu
      Wait Until Element Is Visible          ${Switch_account}
      click element	      		     ${Switch_account}
      Capture Page Screenshot
      Wait Until Element Is Visible          ${Dispaly_Account}		${LessWait}
      click element	      		     ${Dispaly_Account}
      Capture Page Screenshot
      sleep				      ${LongWait}


Go back to accounts and click on the exchange button
     [Documentation]         Go back to accounts settings and click on the exchange icon.
     Wait Until Element Is Visible          ${delete_account_ClickExchange}     ${LessWait}
     click element                          ${delete_account_ClickExchange}
     Capture Page Screenshot

Click on the account which is added
     [Documentation]         Click on the account which is added for email.

     Wait Until Element Is Visible          ${Click_Accouts}
     click element                          ${Click_Accouts}
     Capture Page Screenshot
     sleep		                  ${LongWait}

Press more button to see delete account options
     [Documentation]         By clicking on the more button you can see delete account options

     Wait Until Element Is Visible          ${more_button}          ${LessWait}
     click element                          ${more_button}
     Capture Page Screenshot

Click remove account
     [Documentation]         Click on the remove account to remove the email from list

     Wait Until Element Is Visible          ${Remove_account}
     click element                          ${Remove_account}
     Capture Page Screenshot

Confirm the remove account
    [Documentation]         Re-confirm to remove the account

    Wait Until Element Is Visible          ${Confirm_Remove_Account}
    click element                          ${Confirm_Remove_Account}
    Capture Page Screenshot


Verify server address
     [Documentation]         To Verify the Server address

     Wait Until Element Is Visible          ${Verify_ServerAddress}
     Capture Page Screenshot
     log 					  ${Verify_ServerAddress}
     Element Should Contain Text                  ${Verify_ServerAddress}              outlook-office365-com.us.bitglass.net


Continue OK
     [Documentation]         CLick on the OK button
     ...         Author: Srihari Naidu
     Wait Until Element Is Visible          ${CLick Request}
     Capture Page Screenshot
     Click Element                          ${CLick Request}




Verify the server error message
     [Documentation]         To Verify the error message
     ...         Author: Srihari Naidu
     Wait Until Element Is Visible          ${Verify_Server_Error}
     Capture Page Screenshot
     log                                    ${Verify_Server_Error}
     Element Should Contain Text            ${Verify_Server_Error}	    Couldn't open connection to server.

Verify server address outlook.office365.com
    [Documentation]         Verify address outlook.office365.com
    ...         Author: Srihari Naidu
    Wait Until Element Is Visible           ${Final_Security_Ok}
    ${Text_bitclass}=		Get Text    ${Popup_Text}
    log                        		    ${Text_bitclass}
    Capture Page Screenshot
    Element Should Contain Text    ${Text_bitclass}	outlook.office365.com

Press on the Account Settings
    [Documentation]         Click on the account settings button
    ...         Author: Srihari Naidu
    Wait Until Element Is Visible           ${Notifications_Note}	${LessWait}
    Click Element			    ${Notifications_Note}
    Capture Page Screenshot


Click on the added email
    [Documentation]         Click on the Added email account
    ...         Author: Srihari Naidu
    Wait Until Element Is Visible           ${CLick_Bigglass}
    Click Element			    ${CLick_Bigglass}
    Capture Page Screenshot


Move to email and click on it
    [Documentation]         Click on the added email to open the settings
    ...         Author: Srihari Naidu
    [Arguments]				    ${MovetoEmail}
    Wait Until Element Is Visible           ${Email_second_Bigglass}
    Click Element			    ${MovetoEmail}
    Capture Page Screenshot

Go to incoming settings and passwords
    [Documentation]         This is the Keyword to move/scroll the Incoming setting & password tab
    ...         Author: Srihari Naidu
    Wait Until Element Is Visible           ${Incoming_account}
    Click Element			    ${Incoming_account}
    Capture Page Screenshot

Verify the Server email address
    [Documentation]         Email verify
    ...         Author: Srihari Naidu
    Wait Until Element Is Visible          ${Verify_Final_Account}
    ${d}=		Get Text           ${Verify_Final_Account}
    Should be equal	${d}	 	   ${Expect_Server_Email}
    Capture Page Screenshot

Server address verify
    [Documentation]         Email verify
    ...         Author: Srihari Naidu
    Wait Until Element Is Visible          ${Verify_Final_Account}
    ${m}=		Get Text           ${Verify_Final_Account}
    Should be equal	${m}	 	   ${Server_Email2_expext}
    Capture Page Screenshot


Click on the done button
    [Documentation]         Verify Done
    Wait Until Element Is Visible          ${Done}
    Click Element          		   ${Done}
    sleep		                   ${LessWait}
    Capture Page Screenshot


Swipe Up
  [Documentation]         Scroll down the screen
  ${element_size}=    Get Element Size    		android:id/prefs_frame
  ${element_location}=    Get Element Location    android:id/prefs_frame
  ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
  ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
  ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
  ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
  Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500


Allow Gmail for calandar
    [Documentation]         This is the Keyword is used click allow the Google Calendar options
    Wait Until Element Is Visible          ${Gmail_Calandar}
    click element                          ${Gmail_Calandar}
    Capture Page Screenshot

Initialize Metadata
    ${data}=  Get environment variable   COMPUTERNAME
    Set suite metadata    Executed At    ${data}


