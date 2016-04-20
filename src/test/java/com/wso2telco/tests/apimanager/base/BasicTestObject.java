package com.wso2telco.tests.apimanager.base;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Properties;
import java.util.concurrent.TimeUnit;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.apache.log4j.xml.DOMConfigurator;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.remote.DesiredCapabilities;

import com.wso2telco.test.framework.tests.TestBase;

public class BasicTestObject extends TestBase {
	
	public static Properties CONFIG;
	
	public static boolean isInitialized;
	
	public static boolean isBrowserOpened=false;
	
	final static Logger logger = Logger.getLogger(BasicTestObject.class);
	
	private String headerName;
	
	private String headerValue;
	
	public static String environment;
	
	public Long sleepTime = Long.parseLong(config.getValue("sleepTime"));
	
	public void initialize() throws Exception {
		try {
			if (!isInitialized) {
				// Initialize Logs
				logInstruction("Initializing Logs");
				String log4jConfigFile = System.getProperty("user.dir")
						+ File.separator + "log4j.xml";
				DOMConfigurator.configure(log4jConfigFile);
				logInstruction("Initializing Logs Completed");
				// Initialize config
				logInstruction("Initializing Config");
				CONFIG = new Properties();
				FileInputStream ip = new FileInputStream(
						System.getProperty("user.dir")
								+ "\\src\\test\\resources\\config\\config.properties");
				CONFIG.load(ip);
				
				//Setting environment
				//setEnvironment(System.getProperty("env"));
				//setEnvironment("staging");
				setEnvironment("qa17");
				logInstruction("Initializing Config Completed");
				isInitialized = true;
			}
		} catch (IOException e) {
			logInstruction("Exception While Initializing config file and log file 'initialize()'"
					+ e.getMessage());
			throw new Exception(
					"Exception While Initializing config file and log file 'initialize()'"
							+ e.getMessage());

		}
	}
	
	public void openBrowser() throws Exception {
		try {
			if (CONFIG.getProperty("browser").equals("FIREFOX")) {
				FirefoxProfile profile = new FirefoxProfile();
				profile.setPreference("browser.download.folderList", 2);
				profile.setPreference("browser.download.manager.showWhenStarting", false);
				profile.setPreference("browser.helperApps.neverAsk.saveToDisk", "application/xls,text/csv,application/vnd.ms-excel");

				DesiredCapabilities capabilities = new DesiredCapabilities();
				capabilities.setBrowserName("FIREFOX");
				capabilities.setPlatform(org.openqa.selenium.Platform.ANY);
				capabilities.setCapability(FirefoxDriver.PROFILE, profile);
				launchBrowser(capabilities);
			} else if (CONFIG.getProperty("browser").equals("IE"))
				driver = new InternetExplorerDriver();
			else if (CONFIG.getProperty("browser").equals("CHROME"))
				driver = new ChromeDriver();
			isBrowserOpened = true;
			String waitTime = CONFIG.getProperty("default_implicitWait");
			driver.manage().timeouts().implicitlyWait(Long.parseLong(waitTime), TimeUnit.SECONDS);
		} catch (Exception e) {
			logInstruction("Exception While Initializing browser 'openBrowser()'" + e.getMessage());
			throw new Exception("Exception While Initializing browser 'openBrowser()'" + e.getMessage());

		}
	}
	
	public void closeAllBrowsers() {
		driver.quit();
		driver = null;
		isInitialized = false;
		isBrowserOpened = false;
		System.out.println("After Test");
	}
	
	public void capturescreenshot(String filename) throws IOException {
		DateFormat df = new SimpleDateFormat("dd-MM-yy-HH-mm-ss");
		Calendar calobj = Calendar.getInstance();
		System.out.println(df.format(calobj.getTime()));
		File scrFile = ((TakesScreenshot) driver)
				.getScreenshotAs(OutputType.FILE);
		FileUtils
				.copyFile(
						scrFile,
						new File(System.getProperty("user.dir")
								+ "\\screenshots\\" + filename + "-"
								+ df.format(calobj.getTime()) + ".jpg"));

	}
			
	public void logInstruction(String logMessage) {
		if (logger.isDebugEnabled()) {
			logger.debug(logMessage);
		}
	}
	
	public String getHeaderName() {
		return headerName;
	}

	public void setHeaderName(String headerName) {
		this.headerName = headerName;
	}

	public String getHeaderValue() {
		return headerValue;
	}

	public void setHeaderValue(String headerValue) {
		this.headerValue = headerValue;
	}
	
	public String getEnvironment() {
	return environment;
	}

	@SuppressWarnings("static-access")
	public void setEnvironment(String environment) {
		this.environment = environment;
	}

}
