*** Settings ***
Documentation     This is the varible file where stored all Varibles stored for the YYYY application:
...		  These Variables are to Launch Main activity of the Settings applicatin & Running the application
...       Author: Srihari naidu

*** Variables ***
${app_Activity}        com.android.settings.Settings$AccountSettingsActivity    # Application Activity
${app_Package}         com.android.settings                                     # Application Package
${platformName}        Android                                                  # Platform Name
${Host}   	            http://localhost:4723/wd/hub                             # Appium Sever Address
${platformVersion}     7.0                                                      # Android Version- 6
${deviceName}          Gionee
${FullRest}	            true

${LessWait}            3s
${LongWait}	       40s
${Wait}		       10s




#List of the variables to find & launch the Gmail app.
${Gmailapp_Activity}        .ConversationListActivityGmail   				 # Application Activity
${Gmailapp_Package}         com.google.android.gm                                        # Application Package



# User login details
${UserEmail1}			XXXXXX
${UserEmail2}			XXXXXX
${UserEmail3}			XXXXXX
${User_Password}		XXXXXX

${VerifyAddessBitGlass}			XXXXXX
${VerifyAddessBitGlass2}		XXXXXX
${VerifyAddessBitGlass3}	        XXXXXX




# This is the inside the settings application Variables

${Text_AddAccount}                  xpath=//android.widget.TextView[@text='Add account']
${Text_Exchange}                    xpath=//android.widget.TextView[@text='Exchange']

# Email field
${Email_Id}                         com.google.android.gm:id/account_email

# Next button after entering the email
${Next_after}                      xpath=//android.widget.Button[@text='NEXT']

# Password field
${Password}                         com.google.android.gm:id/regular_password

# Next button after entering the password
${Next_Password-after}              xpath=//android.widget.Button[@text='NEXT']

# Server address verification point

${Actual_Verification}			To configure your account, Gmail is being asked to send account info to https://autodiscover-s.us.bitglass.net/autodiscover/autodiscover.xml. Is this OK?
${Server_address_Verify}		android:id/message

# Press OK button after verifcation
${Press_ok}				android:id/button1


# Verifying the server address on the Popup page
${bitglass_server}                   com.google.android.gm:id/account_server


# Next button after verifying the server address
${Next_After_ServerVerify}	     xpath=//android.widget.Button[@text='NEXT']

# click OK on the Security Settings
${Security_Ok}			       xpath=//android.widget.Button[@text='OK']


# Find the element of Active this device as a administator
${Active_Admin}			        xpath=//android.widget.Button[@text='Activate this device administrator']

# click next to active this device as admin
${Final_Security_Ok}			xpath=//android.widget.Button[@text='NEXT']


# Find the element of Exchane using text
${delete_account_ClickExchange}         xpath=//android.widget.TextView[@text='Exchange']

#Find the Element of Account Settings
${Click_Accouts}			xpath=//android.widget.TextView[@text='XXXXXXo']

# Find the element of more button
${more_button}                          xpath=//android.widget.LinearLayout[@index='2']

# Find the element of Remove account
${Remove_Account}                       xpath=//android.widget.LinearLayout[@index='1']

# Find the element of COnfirm Remove account
${Confirm_Remove_Account}               xpath=//android.widget.Button[@index='1']


# These are variables of the second test cases.

${Verify_ServerAddress}			com.google.android.gm:id/account_server

${CLick Request}			xpath=//android.widget.Button[@text='OK']

${Verify_Server_Error}			com.google.android.gm:id/setup_error_label


# These are variables of the third test cases.

${Excpect_Text}			To configure your account, Gmail is being asked to send account info to https://autodiscover-s.outlook.com/autodiscover/autodiscover.xml. Is this OK?

${Popup_Text}			android:id/message



#Gamil verification Variables

${Gmail_Welcome}		com.google.android.gm:id/welcome_tour_got_it
${takemetoGmail}		com.google.android.gm:id/action_done
${Gmail_Dismiss}		com.google.android.gm:id/gm_dismiss_button

${Switch_account}		com.google.android.gm:id/og_apd_internal_image_view
${Dispaly_Account}		com.google.android.gm:id/account_display_name


# Mobile setting and verify the incomeing emails
${incoming}			android:id/summary
${Email_bitglass}		xpath=//android.widget.TextView[@text='XXXXXX']
${Press_IncomingSettings}	xpath=//android.widget.TextView[@text='Incoming settings']

# Mobile account settings

${Notifications_Note}		xpath=//android.widget.RelativeLayout[@index='0']

${CLick_Bigglass}		xpath=//android.widget.TextView[@text='XXXXXX']

${Incoming_account}		xpath=//android.widget.TextView[@text='Username, password, and other incoming server settings']

${Verify_Final_Account}		com.google.android.gm:id/account_server

${Expect_Server_Email}		XXXXXX

${Server_Email2_expext}		XXXXXX

${Done}				com.google.android.gm:id/done



# Second email address elements
${Email_second_Bigglass}		xpath=//android.widget.TextView[@text='XXXXXX']


# Allow Gmail to login

${Gmail_Calandar}			xpath=//android.widget.Button[@text='ALLOW']











