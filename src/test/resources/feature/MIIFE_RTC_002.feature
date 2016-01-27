Feature: Check if the users can login to all the modules in API Manager with the aggrigator role

@Smoke
Scenario Outline: Check if the users can login to all the modules in API Manager with the aggrigator role
Given I am in ids page
When I enter ids username credentials
And I click on ids sign in
Then I should see the ids Home page
When I click on ids Configuration tab
Then I should see ids Configuration menu
When I click on ids Configuration Users and Roles link
Then I should see ids User Management page
When I click ids User Management Roles link
Then I should see ids User Management Roles page
And I clear existing aggrigator role
When I click on ids User Management Roles add new role link
Then I should see ids User Management Add Role page
When I enter ids Add Role role name as "aggrigator"
And I click on ids Add Role next button
Then I should see ids Add Role Select permission to Add Role page
When I click on ids Add Role Select permission to Add Role next button
Then I should see ids Add Role Select Users to Add Role page
When I enter ids Select Users to Add Role user name pattern as "<username>"
And I click on ids Select Users to Add Role search
And I select ids Select Users to Add Role "<username>" check box
And I click on ids Select Users to Add Role Finish
Then I should see  ids Add Role Success pop up
When I close the browser
And I am in apimanager
And I click on apimanager login
Then I should see the apimanager Login pop up
When I enter apimanager Login username as "<username>" and password as "<Password>" 
And I click on apimanager Login pop up login button
Then I should see apimanager "<username>" at the top right corner of the page
When I click on apimanager APIs module
Then I should see the apimanager APIs page 
When I click on apimanager My Applications
Then I should see the apimanager Application page
When I click on apimanager My Subscriptions
Then I should see the apimanager Subscriptions page
When I click on apimanager Manage 
Then I should see the apimanager Manager page
When I enter apimanager Manager page "<username>" as user name and "<Password>" as password
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page
When I click on close window
And I click on apimanager Sandbox
Then I should see the Login in apimanager Sandbox page
When I enter apimanager Sandbox page "<username>" as user name and "<Password>" as password
And I click on apimanager Sandbox page login button
Then I should see the apimanager sandbox index page


Examples:
|username|Password|
|AuxTestUser|1qaz2wsx@|


#H line 53 please check error message, ideally user should be able to logged in.
#J cannot login to sandbox
