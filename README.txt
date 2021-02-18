Technical Exam Setup
=================
=================

PREREQUISITES
==============

- Python 2.7 or 3 should be installed in the machine
- Robot framework should be installed (pip install robotframework)
- SeleniumLibrary for robot should also be installed (pip install robot framework-SeleniumLibrary)
- A web browser is available for use (e.g. Chrome, Safari, or Mozilla)
- Depending on the intended web browser to be used, download it’s associated web driver and place on PATH


SETUP
======

Step 1 - Create a directory
————————————---------------
Create a designated folder where the git repository will be initialized. Take note of the path to the created directory/folder

Optional: You can create a separate folder outside of the repository where you can store the results of the run for the robot test, take note of the path of this folder as well.

Step 2 - Copy the git repository link
————————————————---------------------
Use this url for the repository of the test files.

This is the url for the git repository link: https://github.com/JrRepollo/TestRepo

Step 3 - Open a terminal and navigate to the recently created folder
——————————————————————————————--------------------------------------
Use the available terminal in your machine. Then navigate using command line tools to the created directory by using the path you have noted in step 1

Use the following command: cd * Path of the recently created directory *

Step 4 - Clone the git repository provided
——————————————————------------------------
While still in the same directory, you can already clone the created repository. 

Use the following command:  git clone https://github.com/JrRepollo/TestRepo

Afterwards, the file is already available for testing

TEST EXECUTION
===============

Step 1 - Opening of terminal
—————————————---------------
Opening the terminal of your available machine where you have recently downloaded the files from the repository

Step 2 - Change the directory to the path where the git repository has been cloned
————————————————————————————————————----------------------------------------------
Enter the following command in the terminal: 

cd * path to the directory where the git repository has been cloned *

Step 3 - Execute the test using robot command
—————————————————————------------------------
While already in the location of the repository, you can already execute the robot command. But one important consideration is to take note of the browser you are using, (e.g. chrome), you will need this as an input variable for the run. Add this as a variable for BROWSER in the execution command for the robot file

Command: robot -v BROWSER:*type of browser chosen for automation * TechExam.robot

* optional, if you desire to have the results in the separate folder created *

Command: robot  -v BROWSER:*type of browser chosen for automation * -d * path to the results folder created * TechExam.robot

Step 4 - Results viewing
———————————-------------
Depending on whether the results were stored in a designated folder or in the same folder as the robot test file, three files will be generated (namely: log.html, report.html, and output.xml)
