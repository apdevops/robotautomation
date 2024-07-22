*** Settings ***
Library    SeleniumLibrary
Variables  ../resources/variables.py
Resource   ../resources/application_submission.resource

*** Test Cases ***
Successfully submit a new application
    [Documentation]  This test case covers the process of submitting a new application form
    Go to the URL
    Login using the credentials provided
    Click Submit a new application button
    Continue with the submission if prompted
    Fill out the forms
    Click Next screen button
    Verify all inputted values are displayed in the Summary screen
    Click Validate and send button
    Verify redirection to "Thank you for submitting your project" page
