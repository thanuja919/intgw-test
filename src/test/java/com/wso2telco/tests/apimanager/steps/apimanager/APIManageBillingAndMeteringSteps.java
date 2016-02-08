package com.wso2telco.tests.apimanager.steps.apimanager;

import org.junit.Assert;

import com.wso2telco.apimanager.pageobjects.apihome.manager.ManagerPage;
import com.wso2telco.tests.apimanager.base.BasicTestObject;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class APIManageBillingAndMeteringSteps extends BasicTestObject {

	@When("^I click on apimanager Manager page Billing and Metering tab$")
	public void i_click_on_apimanager_Manager_page_Billing_and_Metering_tab()
			throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.clickOnBillingandMetering();
	}

	@Then("^I should see apimanager Manager Total API Traffic page header as \"([^\"]*)\"$")
	public void i_should_see_apimanager_Manager_Total_API_Traffic_page_header_as(
			String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		Assert.assertTrue("Total API traffic page did not appear",
				managerpage.isTotalAPITrafficPageDisplayed(arg1));
	}

	@When("^I enter \"([^\"]*)\" as Total API Traffic from date$")
	public void i_enter_as_Total_API_Traffic_from_date(String arg1)
			throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.enterAPITrafficFromDate(arg1);
	}

	@When("^I enter \"([^\"]*)\" as Total API Traffic to date$")
	public void i_enter_as_Total_API_Traffic_to_date(String arg1)
			throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.enterAPITrafficToDate(arg1);
	}

	@When("^I select \"([^\"]*)\" as Total API Traffic operator$")
	public void i_select_as_Total_API_Traffic_operator(String arg1)
			throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.selectAPITrafficOperator(arg1);
	}
	
	@When("^I select \"([^\"]*)\" as the Total API Traffic service provider$")
	public void i_select_as_the_Total_API_Traffic_service_provider(String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.selectTotalAPITrafficServiceProvider(arg1);
	}

	@When("^I select \"([^\"]*)\" as Total API Traffic application$")
	public void i_select_as_Total_API_Traffic_application(String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.selectTotalAPITrafficApplication(arg1);
	}

	@When("^I select \"([^\"]*)\" as Total API Traffic API$")
	public void i_select_as_Total_API_Traffic_API(String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.selectTotalAPITrafficAPI(arg1);
	}
	
	@When("^I click on generate button$")
	public void i_click_on_generate_button() throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.clickOnGenerate();
	} 

	@Then("^I should see generated Total API Traffic pie chart and the line graph$")
	public void i_should_see_generated_Total_API_Traffic_pie_chart_and_the_line_graph() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    
	}
	
	@When("^I click on Transaction log menu item$")
	public void i_click_on_Transaction_log_menu_item() throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.clickOnTransactionLog();
	}
	
	@Then("^I should see apimanager Manager Transaction Log page header as \"([^\"]*)\"$")
	public void i_should_see_apimanager_Manager_Transaction_Log_page_header_as(String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		Assert.assertTrue("Transaction Log page did not appear",
				managerpage.isTransactionLogPageDisplayed(arg1));
	}
	
	@When("^I enter \"([^\"]*)\" as Transaction Log from date$")
	public void i_enter_as_Transaction_Log_from_date(String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.enterTransactionLogFromDate(arg1);
	}
	
	@When("^I enter \"([^\"]*)\" as Transaction Log to date$")
	public void i_enter_as_Transaction_Log_to_date(String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.enterTransactionLogToDate(arg1);
	}

	@When("^I select \"([^\"]*)\" as Transaction Log operator$")
	public void i_select_as_Transaction_Log_operator(String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.selectTransactionLogOperator(arg1);
	}
	
	@When("^I select \"([^\"]*)\" as the Transaction Log service provider$")
	public void i_select_as_the_Transaction_Log_service_provider(String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.selectTransactionLogServiceProvider(arg1);
	}
	

	@When("^I select \"([^\"]*)\" as Transaction Log API$")
	public void i_select_as_Transaction_Log_API(String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.selectTransactionLogAPI(arg1);
	}
	
	@When("^I select \"([^\"]*)\" as Transaction Log Status$")
	public void i_select_as_Transaction_Log_Status(String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.selectTransactionLogStatus(arg1);
	}

	@When("^I click on Download report button$")
	public void i_click_on_Download_report_button() throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.clickDownloadFile();
	}
	
	@Then("^I should see downloaded excel sheet$")
	public void i_should_see_downloaded_excel_sheet() throws Throwable {
       //enter code here
	}
	
	@When("^I click on Operator API Traffic menu item$")
	public void i_click_on_Operator_API_Traffic_menu_item() throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.clickOperatorAPITraffic();
	}
	
	@Then("^I should see apimanager Manager Opertor API Traffic page header as \"([^\"]*)\"$")
	public void i_should_see_apimanager_Manager_Opertor_API_Traffic_page_header_as(String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		Assert.assertTrue("Operator wise API Traffic page did not appear",
				managerpage.isOperatorAPITrafficPageDisplayed(arg1));
	}

	@When("^I enter \"([^\"]*)\" as Operator API Traffic from date$")
	public void i_enter_as_Operator_API_Traffic_from_date(String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.enterOperatorAPITrafficFromDate(arg1);
	}
	
	@When("^I enter \"([^\"]*)\" as Operator API Traffic to date$")
	public void i_enter_as_Operator_API_Traffic_to_date(String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.enterOperatorAPITrafficToDate(arg1);
	}
	
	@When("^I select \"([^\"]*)\" as the Operator API Traffic service provider$")
	public void i_select_as_the_Operator_API_Traffic_service_provider(String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.selectOperatorAPITrafficServiceProvider(arg1);
	}

	@When("^I select \"([^\"]*)\" as Operator API Traffic application$")
	public void i_select_as_Operator_API_Traffic_application(String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.selectOperatorAPITrafficApplication(arg1);
	}

	@When("^I select \"([^\"]*)\" as Operator API Traffic API$")
	public void i_select_as_Operator_API_Traffic_API(String arg1) throws Throwable {
		ManagerPage managerpage = new ManagerPage(driver);
		managerpage.selectOperatorAPITrafficAPI(arg1);
	}
	
	@Then("^I should see the generated Operator API Traffic pie chart$")
	public void i_should_see_the_generated_Operator_API_Traffic_pie_chart() throws Throwable {
	    // Write code here to validate the graph 
	    
	}
}
