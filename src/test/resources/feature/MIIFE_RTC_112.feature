Feature: Validate if report can be accessed without a valid session

@Smoke
Scenario Outline: Check if report can be accessed without having a valid session
Given I am in apimanager
When I click on apimanager login
Then I should see the apimanager "Login" pop up
When I enter apimanager Login username and password for "<usertype>" 
And I click on apimanager Login pop up login button
Then I should see apimanager "<usertype>" at the top right corner of the page
When I click on apimanager Manage 
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page admin username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Billing and Metering tab
Then I should see apimanager Manager Total API Traffic page header as "<apiTrafficPageHeader>"
When I click on Operator API Traffic menu item
Then I should see apimanager Manager Opertor API Traffic page header as "<opertorAPITrafficPageHeader>"
When I enter "<fromDate>" as Operator API Traffic from date
And I enter "<toDate>" as Operator API Traffic to date
And I select "<serviceProvider>" as the Operator API Traffic service provider
And I select "<application>" as Operator API Traffic application
And I select "<API>" as Operator API Traffic API
And I click on generate button
Then I should see the generated Operator API Traffic pie chart for "<fromDate>" "<toDate>" "<serviceProvider>" "<application>" "<API>" parameters
When I copy the current URL and access it from a new browser
Then I should see the apimanager Manager page username and password text boxes


Examples:
| usertype|apiTrafficPageHeader|opertorAPITrafficPageHeader|fromDate  |toDate    |serviceProvider|application|API|
|REPORTLOG  |Total API Traffic   |Operator Wise Traffic      |2016-03-01|2016-03-25|AutInvSP1      |AutInvSP1_app1|smsmessaging|