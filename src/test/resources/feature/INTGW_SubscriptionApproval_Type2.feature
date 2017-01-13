Feature: API Publisher Approves created Subscriptions Type 2


Scenario Outline: DEP-INTGW-1416:Listing unassigned subscription tasks for all Publishers belonging to the same API publisher group
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherOne>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appNameOne>" and "<publisherOneApi>" at the top of the Approval Tasks table for "<usertype>"
And I should see the status of the application "<appNameOne>" approval task as "READY"
Then I should see created subscription with "<appNameTwo>" and "<publisherTwoApi>" at the top of the Approval Tasks table for "<usertype>"
And I should see the status of the application "<appNameTwo>" approval task as "READY"
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherTwo>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appNameOne>" and "<publisherOneApi>" at the top of the Approval Tasks table for "<usertype>"
And I should see the status of the application "<appNameOne>" approval task as "READY"
Then I should see created subscription with "<appNameTwo>" and "<publisherTwoApi>" at the top of the Approval Tasks table for "<usertype>"
And I should see the status of the application "<appNameTwo>" approval task as "READY"
Examples:
|usertype |apiPublisherOne|apiPublisherTwo|appNameOne |appNameTwo |publisherOneApi|publisherTwoApi|
|PUBLISHER|apipublisherOne|apipublisherTwo|AuXTestAPPA|AuXTestAPPB|WeatherAPI - v1|YahooAPI - v1  |


Scenario Outline: DEP-INTGW-1406:API publisher assigns task by specifying throttling layer
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherOne>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appName>" and "<publisherOneApi>" at the top of the Approval Tasks table for "<usertype>"
When I click on Subscription Details drop box for "<appName>" row for "<usertype>"
And I select "<tiers>" for "<appName>" Application Details row for "<usertype>"
And I should see the status of the application "<appName>" approval task as "READY" 
And I click Assign To Me button for "<appName>" Application Details row for "<usertype>"
Then I should see the status of the application "<appName>" approval task as "RESERVED"
And I should see the selected throttling layer as "<tiers>" for "<appName>" Application
Examples:
|usertype |apiPublisherOne|appName     |tiers    |publisherOneApi|
|PUBLISHER|apipublisherOne|AuXTestAPPA |Unlimited|WeatherAPI - v1|


Scenario Outline: DEP-INTGW-1405:API publisher assigns task without specifying throttling layer
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherTwo>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appName>" and "<publisherTwoApi>" at the top of the Approval Tasks table for "<usertype>"
And I should see the status of the application "<appName>" approval task as "READY" 
And I click Assign To Me button for "<appName>" Application Details row for "<usertype>"
Then I should see the status of the application "<appName>" approval task as "RESERVED" 
Examples:
|usertype |apiPublisherTwo |appName     |tiers    |publisherTwoApi|
|PUBLISHER|apipublisherTwo |AuXTestAPPB |Unlimited|YahooAPI - v1  |


Scenario Outline: DEP-INTGW-1417:Listing of Assigned subscription tasks only to the assigned publisher user
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherOne>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appNameOne>" and "<publisherOneApi>" at the top of the Approval Tasks table for "<usertype>"
And I should see the status of the application "<appNameOne>" approval task as "RESERVED"
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherTwo>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appNameTwo>" and "<publisherTwoApi>" at the top of the Approval Tasks table for "<usertype>"
And I should see the status of the application "<appNameTwo>" approval task as "RESERVED"
Examples:
|usertype |apiPublisherOne|apiPublisherTwo|appNameOne |appNameTwo |publisherOneApi|publisherTwoApi|
|PUBLISHER|apipublisherOne|apipublisherTwo|AuXTestAPPA|AuXTestAPPB|WeatherAPI - v1|YahooAPI - v1  |


Scenario Outline: DEP-INTGW-1394:API publisher starts assigned task without specifying throttling layer
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherOne>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appName>" and "<publisherOneApi>" at the top of the Approval Tasks table for "<usertype>"
And I should see the status of the application "<appName>" approval task as "RESERVED" 
And I click on Start button for "<appName>" Application Details row for "<usertype>"
Then I should see the status of the application "<appName>" approval task as "IN_PROGRESS"
Then I click on action dropdown of "<appName>" task
And I should see Action "<options>" of the "<appName>" task in the dropdown
Examples:
|usertype |apiPublisherOne|appName     |options        |publisherOneApi|
|PUBLISHER|apipublisherOne|AuXTestAPPA |Approve,Reject |WeatherAPI - v1|


Scenario Outline: DEP-INTGW-1395:API publisher starts assigned task by specifying a throttling layer
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherTwo>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appName>" and "<publisherTwoApi>" at the top of the Approval Tasks table for "<usertype>"
And I should see the status of the application "<appName>" approval task as "RESERVED" 
And I click on Start button for "<appName>" Application Details row for "<usertype>"
When I click on Subscription Details drop box for "<appName>" row for "<usertype>"
And I select "<tiers>" for "<appName>" Application Details row for "<usertype>"
Then I should see the status of the application "<appName>" approval task as "IN_PROGRESS"
And I should see the selected throttling layer as "<tiers>" for "<appName>" Application
Then I click on action dropdown of "<appName>" task
And I should see Action "<options>" of the "<appName>" task in the dropdown
Examples:
|usertype |apiPublisherTwo|appName    |options        |tiers    |publisherTwoApi|
|PUBLISHER|apipublisherTwo|AuXTestAPPB|Approve,Reject |Unlimited|YahooAPI - v1  |


Scenario Outline: DEP-INTGW-1415:Listing of In-progress subscription tasks only to the assigned publisher user
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherOne>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appNameOne>" and "<publisherOneApi>" at the top of the Approval Tasks table for "<usertype>"
And I click on Start button for "<appNameOne>" Application Details row for "<usertype>"
And I should see the status of the application "<appNameOne>" approval task as "IN_PROGRESS"
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherTwo>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appNameTwo>" and "<publisherTwoApi>" at the top of the Approval Tasks table for "<usertype>"
And I click on Start button for "<appNameTwo>" Application Details row for "<usertype>"
And I should see the status of the application "<appNameTwo>" approval task as "IN_PROGRESS"
Examples:
|usertype |apiPublisherOne|apiPublisherTwo|appNameOne |appNameTwo |publisherOneApi|publisherTwoApi|
|PUBLISHER|apipublisherOne|apipublisherTwo|AuXTestAPPA|AuXTestAPPB|WeatherAPI - v1|YahooAPI - v1  |


Scenario Outline: DEP-INTGW-1407:Restriction of subscription task listing to the API publisher group
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherOne>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appNameOne>" and "<publisherOneApi>" at the top of the Approval Tasks table for "<usertype>"
And I should see the status of the application "<appNameOne>" approval task as "READY"
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherThree>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should not see created subscription with "<appName>" and "<subscribeAPI>" in the Approval Tasks table
Examples:
|usertype |apiPublisherOne|apiPublisherThree|appNameOne |publisherOneApi|
|PUBLISHER|apipublisherOne|apipublisherThree|AuXTestAPPC|WeatherAPI - v1|


Scenario Outline: DEP-INTGW-1396:API publisher starts assigned task without changing already applied throttling layer
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherOne>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appName>" and "<publisherOneApi>" at the top of the Approval Tasks table for "<usertype>"
When I click on Subscription Details drop box for "<appName>" row for "<usertype>"
And I select "<tiers>" for "<appName>" Application Details row for "<usertype>"
And I should see the status of the application "<appName>" approval task as "READY" 
And I click Assign To Me button for "<appName>" Application Details row for "<usertype>"
Then I should see the status of the application "<appName>" approval task as "RESERVED"
And I click on Start button for "<appName>" Application Details row for "<usertype>"
Then I should see the status of the application "<appName>" approval task as "IN_PROGRESS"
And I should see the selected throttling layer as "<tiers>" for "<appName>" Application
Then I click on action dropdown of "<appName>" task
And I should see Action "<options>" of the "<appName>" task in the dropdown
Examples:
|usertype |apiPublisherOne|appName    |options       |tiers   |publisherOneApi|
|PUBLISHER|apipublisherOne|AuXTestAPPC|Approve,Reject|Premium |WeatherAPI - v1|


Scenario Outline: DEP-INTGW-1397:API publisher user starts assigned task and changes the existing throttling layer
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherOne>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appName>" and "<publisherOneApi>" at the top of the Approval Tasks table for "<usertype>"
When I click on Subscription Details drop box for "<appName>" row for "<usertype>"
And I select "<olderTiers>" for "<appName>" Application Details row for "<usertype>"
And I should see the status of the application "<appName>" approval task as "READY" 
And I click Assign To Me button for "<appName>" Application Details row for "<usertype>"
And I should see the selected throttling layer as "<olderTiers>" for "<appName>" Application
Then I should see the status of the application "<appName>" approval task as "RESERVED"
And I click on Start button for "<appName>" Application Details row for "<usertype>"
And I select "<newTiers>" for "<appName>" Application Details row for "<usertype>"
Then I should see the status of the application "<appName>" approval task as "IN_PROGRESS"
And I should see the selected throttling layer as "<newTiers>" for "<appName>" Application
Then I click on action dropdown of "<appName>" task
And I should see Action "<options>" of the "<appName>" task in the dropdown
Examples:
|usertype |apiPublisherOne|appName    |options        |olderTiers   |newTiers |publisherOneApi|
|PUBLISHER|apipublisherOne|AuXTestAPPD|Approve,Reject |Unlimited    |Premium  |WeatherAPI - v1|


Scenario Outline: DEP-INTGW-1398:API publisher approves task without specifiying throttling layer
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherOne>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appName>" and "<publisherOneApi>" at the top of the Approval Tasks table for "<usertype>"
And I should see the status of the application "<appName>" approval task as "RESERVED" 
And I click on Start button for "<appName>" Application Details row for "<usertype>"
Then I should see the status of the application "<appName>" approval task as "IN_PROGRESS" 
And I select "<action>" and click complete button for "<appName>" Application Details row for "<usertype>"
Then I should see Enter aprrove/reject reasons pop up header as "Enter approve/reject reasons"
When I enter aprrove/reject reason as "Approve"
And click aprrove/reject reason ok button
Then I should not see the created application in Approval Tasks table as "<appName>" for "<usertype>"
Given I am in apimanager
When I click on apimanager login
Then I should see the apimanager "Login" pop up
When I enter apimanager Login username and password for "<usertypeSP>" 
And I click on apimanager Login pop up login button
Then I should see apimanager "<usertypeSP>" at the top right corner of the page
When I click on apimanager My Applications
Then I should see the apimanager Application page header as "Applications"
When I click on apimanager Application "<appName>"
Then I click on Application "<appName>" "Subscriptions" tab
Then I should see the API "<publisherOneApi>" status as "<status>" and Subscription Tier as "<tier>"
Examples:
|usertype |apiPublisherOne|usertypeSP  |appName      |action  |status    |tier   |publisherOneApi|
|PUBLISHER|apipublisherOne|APPCREATE   |AuXTestAPPD  |Approve |UNBLOCKED |Bronze |WeatherAPI - v1|


Scenario Outline: DEP-INTGW-1399:API publisher approves task by specifying a throttling layer
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherOne>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appName>" and "<publisherOneApi>" at the top of the Approval Tasks table for "<usertype>"
And I should see the status of the application "<appName>" approval task as "RESERVED" 
When I click on Subscription Details drop box for "<appName>" row for "<usertype>"
And I select "<tier>" for "<appName>" Application Details row for "<usertype>"
And I click on Start button for "<appName>" Application Details row for "<usertype>"
Then I should see the status of the application "<appName>" approval task as "IN_PROGRESS"
And I select "<action>" and click complete button for "<appName>" Application Details row for "<usertype>"
Then I should see Enter aprrove/reject reasons pop up header as "Enter approve/reject reasons"
When I enter aprrove/reject reason as "Approve"
And click aprrove/reject reason ok button
Then I should not see the created application in Approval Tasks table as "<appName>" for "<usertype>"
Given I am in apimanager
When I click on apimanager login
Then I should see the apimanager "Login" pop up
When I enter apimanager Login username and password for "<usertypeSP>" 
And I click on apimanager Login pop up login button
Then I should see apimanager "<usertypeSP>" at the top right corner of the page
When I click on apimanager My Applications
Then I should see the apimanager Application page header as "Applications"
When I click on apimanager Application "<appName>"
Then I click on Application "<appName>" "Subscriptions" tab
Then I should see the API "<publisherOneApi>" status as "<status>" and Subscription Tier as "<tier>"
Examples:
|usertype |apiPublisherOne|usertypeSP  |appName      |action  |status    |tier      |publisherOneApi|
|PUBLISHER|apipublisherOne|APPCREATE   |AuXTestAPPC  |Approve |UNBLOCKED |Premium   |WeatherAPI - v1|


Scenario Outline: DEP-INTGW-1400:API publisher approves task without changing already applied throttling layer
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherTwo>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appName>" and "<publisherTwoApi>" at the top of the Approval Tasks table for "<usertype>"
When I click on Subscription Details drop box for "<appName>" row for "<usertype>"
And I select "<olderTier>" for "<appName>" Application Details row for "<usertype>"
And I should see the status of the application "<appName>" approval task as "RESERVED" 
And I click on Start button for "<appName>" Application Details row for "<usertype>"
And I should see the selected throttling layer as "<olderTier>" for "<appName>" Application
Then I should see the status of the application "<appName>" approval task as "IN_PROGRESS"
And I select "<action>" and click complete button for "<appName>" Application Details row for "<usertype>"
Then I should see Enter aprrove/reject reasons pop up header as "Enter approve/reject reasons"
When I enter aprrove/reject reason as "Approve"
And click aprrove/reject reason ok button
Then I should not see the created application in Approval Tasks table as "<appName>" for "<usertype>"
Given I am in apimanager
When I click on apimanager login
Then I should see the apimanager "Login" pop up
When I enter apimanager Login username and password for "<usertypeSP>" 
And I click on apimanager Login pop up login button
Then I should see apimanager "<usertypeSP>" at the top right corner of the page
When I click on apimanager My Applications
Then I should see the apimanager Application page header as "Applications"
When I click on apimanager Application "<appName>"
Then I click on Application "<appName>" "Subscriptions" tab
Then I should see the API "<publisherTwoApi>" status as "<status>" and Subscription Tier as "<olderTier>"
Examples:
|usertype |apiPublisherTwo|usertypeSP|appName        |action  |status    |olderTier   |publisherTwoApi|
|PUBLISHER|apipublisherTwo|APPCREATE |AuXTestAPPB    |Approve |UNBLOCKED |Unlimited   |YahooAPI - v1  |


Scenario Outline: DEP-INTGW-1401:API publisher approves task and changes the previously applied throttling layer
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherOne>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appName>" and "<publisherOneApi>" at the top of the Approval Tasks table for "<usertype>"
When I click on Subscription Details drop box for "<appName>" row for "<usertype>"
And I select "<olderTier>" for "<appName>" Application Details row for "<usertype>"
And I should see the status of the application "<appName>" approval task as "RESERVED"
And I select "<newTier>" for "<appName>" Application Details row for "<usertype>" 
And I click on Start button for "<appName>" Application Details row for "<usertype>"
Then I should see the status of the application "<appName>" approval task as "IN_PROGRESS"
And I select "<action>" and click complete button for "<appName>" Application Details row for "<usertype>"
Then I should see Enter aprrove/reject reasons pop up header as "Enter approve/reject reasons"
When I enter aprrove/reject reason as "Approve"
And click aprrove/reject reason ok button
Then I should not see the created application in Approval Tasks table as "<appName>" for "<usertype>"
Given I am in apimanager
When I click on apimanager login
Then I should see the apimanager "Login" pop up
When I enter apimanager Login username and password for "<usertypeSP>" 
And I click on apimanager Login pop up login button
Then I should see apimanager "<usertypeSP>" at the top right corner of the page
When I click on apimanager My Applications
Then I should see the apimanager Application page header as "Applications"
When I click on apimanager Application "<appName>"
Then I click on Application "<appName>" "Subscriptions" tab
Then I should see the API "<publisherOneApi>" status as "<status>" and Subscription Tier as "<newTier>"
Examples:
|usertype |apiPublisherOne|usertypeSP|appName        |action  |status    |olderTier   |newTier |publisherOneApi|
|PUBLISHER|apipublisherOne|APPCREATE |AuXTestAPPA    |Approve |UNBLOCKED |Unlimited   |Small   |WeatherAPI - v1|


Scenario Outline: DEP-INTGW-1402:API publisher rejects subscription approval task
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherOne>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appName>" and "<publisherOneApi>" at the top of the Approval Tasks table for "<usertype>"
And I should see the status of the application "<appName>" approval task as "READY" 
And I click Assign To Me button for "<appName>" Application Details row for "<usertype>"
And I should see the status of the application "<appName>" approval task as "RESERVED" 
And I click on Start button for "<appName>" Application Details row for "<usertype>"
Then I should see the status of the application "<appName>" approval task as "IN_PROGRESS" 
And I select "<action>" and click complete button for "<appName>" Application Details row for "<usertype>"
Then I should see Enter aprrove/reject reasons pop up header as "Enter approve/reject reasons"
When I enter aprrove/reject reason as "Reject"
And click aprrove/reject reason ok button
Then I should not see the created application in Approval Tasks table as "<appname>" for "<usertype>"
Given I am in apimanager
When I click on apimanager login
Then I should see the apimanager "Login" pop up
When I enter apimanager Login username and password for "<usertypeSP>" 
And I click on apimanager Login pop up login button
Then I should see apimanager "<usertypeSP>" at the top right corner of the page
When I click on apimanager My Applications
Then I should see the apimanager Application page header as "Applications"
When I click on apimanager Application "<appName>"
Then I click on Application "<appName>" "Subscriptions" tab
Then I should see the API "<publisherOneApi>" status as "<status>" and Subscription Tier as "<tier>"
Examples:
|usertype |apiPublisherOne|usertypeSP  |appName        |action  |status   |tier    |publisherOneApi|
|PUBLISHER|apipublisherOne|APPCREATE   |AuXTestAPPE    |Reject  |REJECTED |Default |WeatherAPI - v1|


Scenario Outline: DEP-INTGW-1413:Task recreation for a resubscription
Given I am in apimanager
When I click on apimanager login
Then I should see the apimanager "Login" pop up
When I enter apimanager Login username and password for "<usertypeSP>" 
And I click on apimanager Login pop up login button
Then I should see apimanager "<usertypeSP>" at the top right corner of the page
When I click on apimanager My Applications
Then I should see the apimanager Application page header as "Applications"
When I click on apimanager Application "<appName>"
When I click on Application "<appName>" "Subscriptions" tab
Then I should see the "<apiName>" and "<version>" under Subscribed APIs
When I unsubscribe existing "<apiName>" with "<version>"
Then I should see the confirm delete popup with "Confirm Delete"
And I click on confirm delete popup Yes button
When I click on apimanager APIs module
Then I should see the apimanager APIs page header as "APIs"
Then I should search apimanager API "<apiName>"
When I click on the apimanager "<apiName>" "<version>" api
Then I should see the apimanager APIs "<apiName>" status as "Published"
When I click on Applications dropdown
Then I should see "<appName>" Application for "<usertypeSP>"
When I select "<appName>" for "<usertypeSP>"
And I click apimanager "<apiName>" API page subscribe button
Then I should see "Subscription Awaiting Approval" on Subscription Successful pop up
When I click Go to My Subscription button
Then I should see the apimanager Application "<appName>" Subscriptions page header as "Subscriptions"
Then I should see the "<apiName>" and "<version>" under Subscribed APIs
Given I am in hubmanager
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page "<apiPublisherOne>" username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Workflow tab
Then I should see apimanager Manager Approval Tasks page header as "Approval Tasks"
And I click on subscriptions creation under tasks
Then I should see created subscription with "<appName>" and "<publisherOneApi>" at the top of the Approval Tasks table for "<usertype>"
And I should see the status of the application "<appName>" approval task as "READY"
And I click Assign To Me button for "<appName>" Application Details row for "<usertype>"
And I should see the status of the application "<appName>" approval task as "RESERVED" 
And I click on Start button for "<appName>" Application Details row for "<usertype>"
Then I should see the status of the application "<appName>" approval task as "IN_PROGRESS" 
And I select "<action>" and click complete button for "<appName>" Application Details row for "<usertype>"
Then I should see Enter aprrove/reject reasons pop up header as "Enter approve/reject reasons"
When I enter aprrove/reject reason as "Approve"
And click aprrove/reject reason ok button
Then I should not see the created application in Approval Tasks table as "<appName>" for "<usertype>"
Given I am in apimanager
When I click on apimanager login
Then I should see the apimanager "Login" pop up
When I enter apimanager Login username and password for "<usertypeSP>" 
And I click on apimanager Login pop up login button
Then I should see apimanager "<usertypeSP>" at the top right corner of the page
When I click on apimanager My Applications
Then I should see the apimanager Application page header as "Applications"
When I click on apimanager Application "<appName>"
Then I click on Application "<appName>" "Subscriptions" tab
Then I should see the API "<publisherOneApi>" status as "<status>" and Subscription Tier as "<tier>"
Examples:
|usertypeSP|usertype |apiPublisherOne|appName      |action  |status    |tier    |publisherOneApi|apiName   |version|
|APPCREATE |PUBLISHER|apipublisherOne|AuXTestAPPC  |Approve |UNBLOCKED |Bronze  |WeatherAPI - v1|WeatherAPI|v1     |