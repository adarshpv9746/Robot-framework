# Automation Template using Robot Framework
This repository contains a sample automation framework for testing web applications, APIs, MySQL DB, and Mobile applications using Robot Framework with Selenium Library, Requests Library, Database Library, and Appium Library.

### Introduction
Robot Framework is a generic test automation framework for acceptance testing and acceptance test-driven development (ATDD). It has easy-to-use tabular test data syntax and utilizes the keyword-driven testing approach. Its testing capabilities can be extended by test libraries implemented either with Python or Java, and users can create new higher-level keywords from existing ones using the same syntax that is used for creating test cases.

Selenium is a popular open-source tool for automating web browsers. It provides a set of APIs for interacting with web elements, allowing you to simulate user actions such as clicking, typing, and scrolling.

RequestsLibrary is a Robot Framework library aimed to provide HTTP api testing functionalities by wrapping the well known Python Requests Library

Database Library is a Robot Framework test library that provides a simple way to work with databases. It supports various databases including MySQL, Oracle, and PostgreSQL.

Appium is an open-source test automation tool for mobile applications. It provides a way to automate tests on real devices and emulators/simulators.

By using Robot Framework with Selenium Library, Requests Library, Database Library, and Appium Library, you can easily automate tests for web applications, APIs, MySQL DB, and mobile applications, without needing to write extensive code.
### Prerequisites
Before installing the automation framework, you need to have the following prerequisites installed on your system:

- Python 3.x
- Robot Framework
### Installation

To use this framework , you will need to have Python 3 installed on your machine. You can download Python 3 from the official website: https://www.python.org/downloads/

Once you have installed Python, you can use pip to install Robot Framework and the required libraries:
````
pip install robotframework
````
## Web Application Testing
### Prerequisites

- Robot Framework SeleniumLibrary

### Installing Selenium-Library
Once you have installed Python, you can use pip to install Robot Framework and the required libraries:
````
pip install robotframework-seleniumlibrary
````
You will need to download the drivers for the browsers you want to automate. The drivers allow Selenium to interact with the browsers. You can download the drivers from the following links:

- Chrome: https://chromedriver.chromium.org/downloads
- Firefox: https://github.com/mozilla/geckodriver/releases
- Edge: https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/

Make sure to add the drivers in Resources/Web/Driver folder


### Usage
To use this framework for web application testing, you can create or modify test cases in the Tests directory. You can also modify 'Resources/Config/ConfigWeb.robot' to set up test variables, setup, and teardown functions. 

To run the tests for a web application and store the results in Results folder, execute the following command in your terminal:
````
robot -d Results Tests/TestCase1_Web.robot
````
You can also run tests that are tagged with "Web" using the following command:
```
robot -d Results -i Web Tests/
```
To run the tests in a particular browser you can pass the Browser variable using the following command:
```
robot -d Results -v BROWSER_NAME:firefox Tests/TestCase1_Web.robot
```
## API Testing
### Prerequisites

- Robot Framework RequestsLibrary

### Installing RequestsLibrary
To use this framework for API testing, you can use pip to install the required library:
```
pip install robotframework-requests
```
### Usage
To use this framework for API testing: 
- Tests - You can create or modify testcases in Tests Library
- Resources/Config/ConfigAPI.robot - You can use this file for configuring environment based variables and base URL
- Resources/API/InputDataAPI.robot - You can use this file for configuring endpoints, query strings and json path variables
- Resources/API/Payload - You can use this folder to store all payloads used for testing

You can run the tests using the following command:
```
robot -d Results Tests/TestCase3_API.robot
```
## Database Testing
### Prerequisites

- Robot Framework Database Library

### Installing DatabaseLibrary
To use this framework for MySQL DB testing, you can use pip to install the required library:
```
pip install robotframework-databaselibrary
```
You will also need to have a MySQL server installed on your machine. 

### Installing MySQL server in local machine

Use the below steps to install MySQL server, mysql python connector and pymysql.
```
sudo apt install mysql-server
sudo systemctl status mysql.service
sudo mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
sudo pip install mysql-connector-python 
sudo pip install pymysql
```
After the installation steps, we need to create a DB 'TESTDB2' as this is the sample DB used in the test case.
```
sudo mysql -uroot -p
create database TESTDB2;
```

### Usage
To use this framework for MySQL DB testing, you can create or modify test cases in the Tests directory. You can also modify Resources/Config/ConfigDB.robot to set up test variables, setup, and teardown functions.

You can run the tests using the following command:
```
robot -d Results Tests/TestCase2_DB.robot
```
## Appium Testing
### Prerequisites

- Java Development Kit (JDK)
- Android Studio
- Robot Framework Appium Library
- Appium

### Installing Java Development Kit (JDK)
#### On Windows
- Visit the Oracle website: https://www.oracle.com/java/technologies/downloads/
- Download the latest version of the Java Development Kit (JDK) for your operating system.
- Once the download is complete, double-click on the downloaded file to launch the installer.
- Follow the on-screen instructions to complete the installation. Make sure to select the "Development Kit" option during the installation process.
- After the installation is complete, open a terminal or command prompt and type java -version to verify that the JDK is installed correctly.

#### On Ubuntu
Commands to install Java Development Kit (JDK) on Ubuntu:

Open the terminal on your Ubuntu system.
- Run the following command to update the package list:
````
sudo apt-get update
````
Run the following command to install the default JDK:
````
sudo apt-get install default-jdk
````
- After the installation is complete, open a terminal and type java -version to verify that the JDK is installed correctly.
### Installing Android Studio
#### On Windows
- Download the latest version of Android Studio from the official website: https://developer.android.com/studio
- Once the download is complete, extract the files from the downloaded archive to a folder of your choice.
- Navigate to the folder where you extracted Android Studio and double-click on the studio.sh file to launch the Android Studio installer.
- Follow the on-screen instructions to complete the installation. When prompted, select the components you want to install and choose a location for the Android SDK.
- Once the installation is complete, open Android Studio and configure the Android SDK by following the steps provided in the Android Studio setup wizard.

#### On Ubuntu
- Install Android Studio from Ubuntu Software Center

### Installing Appium Library for Robot Framework
To use this framework for mobile application testing, you can use pip to install the required library:
```
pip install robotframework-appiumlibrary
```
You will also need to download and install Appium Server. 

### Installing Appium Server
````
npm install -g appium
````

#### Reference Video link: https://youtu.be/W5hcHbzTjOc
#### Sample apk used for creating test case template : https://github.com/appium/sample-apps/blob/master/pre-built/ContactManager.apk



### Usage
To use this framework for mobile application testing, you can create or modify test cases in the Tests directory. You can also modify Resources/Config/ConfigMobile.robot to set up test variables, setup, and teardown functions.

Before running the test cases, run the below command to start the appium server:
```
appium
```

You can run the tests using the following command:
```
robot -d Results Tests/TestCase4_Mobile.robot
```

## Folder Structure
````
├── README.md
├── Resources
│   ├── API
│   │   ├── API-res.robot            # API test case keywords
│   │   ├── InputDataAPI.robot       # Input data for API tests
│   │   └── Payload
│   │       └── payload.json        # Example payload for API tests
│   ├── Config
│   │   ├── ConfigAPI.robot         # Configuration for API tests
│   │   ├── ConfigDB.robot          # Configuration for database tests
│   │   ├── ConfigMobile.robot      # Configuration for mobile tests
│   │   ├── ConfigWebMobile.robot   # Configuration for web and mobile tests
│   │   └── ConfigWeb.robot         # Configuration for web tests
│   ├── DB
│   │   ├── insertData.sql          # Sample SQL script for inserting data
│   │   └── Queries.robot           # SQL queries file
│   ├── Mobile
│   │   ├── App-res.robot           # App test case validation keywords
│   │   └── PO
│   │       ├── AddContactScreen.robot   # Page object for Add Contact screen
│   │       └── HomeScreen.robot         # Page object for Home screen
│   ├── Web
│   │   ├── Driver
│   │   │   ├── Chrome              # Chrome driver executable
│   │   │   └── Firefox             # Firefox driver executable
│   │   ├── PO
│   │   │   └── HomePage.robot      # Page object for home page
│   │   └── Web-res.robot           # Web test case validation keywords
│   └── Web_Mobile
│       ├── Drivers
│       │   ├── Chrome              # Chrome driver executable
│       │   └── Firefox             # Firefox driver executable
│       ├── Keyword_res.robot       # Keywords for web and mobile tests
│       └── PO
│           ├── AddContactScreen_App.robot  # Page object for Add Contact screen in mobile app
│           ├── HomePage_web.robot          # Page object for home page in web app
│           └── HomeScreen_App.robot        # Page object for Home screen in mobile app
├── Results
│   ├── log.html                    # HTML log file for test execution
│   ├── output.xml                  # XML output file for test execution
│   └── report.html                 # HTML report file for test execution
└── Tests
    ├── TestCase1_Web.robot          # Test case for web application
    ├── TestCase2_DB.robot           # Test case for database
    ├── Testcase3_API.robot          # Test case for API
    ├── TestCase4_Mobile.robot       # Test case for mobile application
    └── TestCase5_Web_Mobile.robot   # Test case for web and mobile application

````
In this structure, the Resources folder contains subdirectories for each testing area (web, DB, API, mobile, and web+mobile), with configuration files, input data, and page objects. The Tests folder contains  test cases. The Results folder contains generated log, output, and report files. Finally, README.md contains documentation for the framework.

After running the tests, the results will be available in the Results/ directory. The log.html file contain detailed information about the test execution, including pass/fail status of each test case, and can be used for debugging and troubleshooting. The report.html file provide a summary of the test results.

## Customization
You can customize the framework according to your needs by modifying the following files:

- Tests: Create or modify test cases in this directory. 
- Resources/Config: Define test variables, setup and teardown functions.
- PageObjects: Create or modify Page Object Model files under Web, Mobile in the Resource directory  for each page in your application. 
- Keyword files: Keywords for the test cases can be added or modified in the keyword files under API, Web, Mobile, DB in the Resource directory.

You can also create custom libraries and invoke them in your test cases to extend the framework functionality.

## Conclusion
Using this automation framework with Robot Framework and its libraries for web application, API, MySQL DB, and mobile application testing can help improve the quality of the applications, while reducing the time and effort required for manual testing. 

