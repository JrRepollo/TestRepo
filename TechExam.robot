*** Settings ***
Library         SeleniumLibrary

Test Setup      Open browser  ${BROWSER}  ${URL}
Test Teardown   Close browser
*** Variables ***
${BROWSER}      https://login.optimyapp.com
${URL}          chrome


*** Test Cases ***
Check if title is correct
    Title should be  Optimy login

Check response if email and password are incorrect
    Input text  xpath://*[@id="tab-login"]/form/div[1]/input  testemail@gmail.com
    Input text  xpath://*[@id="tab-login"]/form/div[2]/input  Password123
    Click button  //*[@id="tab-login"]/form/button
    Sleep  5
    Element should be visible  xpath://*[@id="login-invalid"]/span

Check response if invalid email
    Input text  xpath://*[@id="tab-login"]/form/div[1]/input  testemail
    Click button  //*[@id="tab-login"]/form/button
    Element should contain  xpath://*[@for="email" and @class="help-block"]  Please enter a valid email address (e.g.: john.smith@gmail.com).

Check response if only password is input
    Input text  xpath://*[@id="tab-login"]/form/div[2]/input  Password123
    Click button  //*[@id="tab-login"]/form/button
    Element should contain  xpath://*[@id="tab-login"]/form/div[1]/span  This field is required.

Check response if not input but login button was clicked
    Click button  //*[@id="tab-login"]/form/button
    Element should contain  xpath://*[@id="tab-login"]/form/div[1]/span  This field is required.
    Element should contain  xpath://*[@id="tab-login"]/form/div[2]/span  This field is required.