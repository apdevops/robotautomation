*** Settings ***
Library    SeleniumLibrary
Variables  ../resources/variables.py
Resource  ../resources/login_locators.robot
Resource  ../resources/submit_application.robot

*** Keywords ***
Go to the URL
    Open Browser    ${APPLICATION_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible     ${cookie_close_button}
    Click Button    ${cookie_close_button}

Login using the credentials provided
    Wait Until Element Is Visible  ${login_button}
    Click Element  ${login_button}
    Input Text      ${login_username_input}  ${USERNAME}
    Input Text      ${login_password_input}  ${PASSWORD}
    Click Button   ${login_button_confirm}

Click Submit a new application button
    Wait Until Element Is Visible   ${submit_application_link}
    Click Element    ${submit_application_link}

Continue with the submission if prompted
    Run Keyword And Ignore Error    Element Should Be Visible    ${continue_submit_application_button}
    Click Element    ${continue_submit_application_button}

Fill out the forms
    Input Text  ${first_name_locator}    ${first_name}
    Input Text  ${last_name_locator}     ${last_name}
    Input Text  ${address_locator}   ${address}
    Input Text  ${postal_code_locator}   ${postal_code}
    Select From List By Value  ${country_locator}   ${country}
    Choose File    ${file_name_locator}    ${file_name}
    Wait Until Element Is Visible    ${uploaded_file_list_locator}
    Scroll Element Into View    ${gender_locator_male}
    Click Element   ${gender_locator_male}
    Wait Until Element Is Visible    ${role_index_locator}
    Select From List By Index  ${role_index_locator}  ${role_index}
    Click Element    ${tools_locator_spreadsheet}
    Scroll Element Into View    ${career_objective_iframe_locator}
    Select Frame    ${career_objective_iframe_locator}
    Input Text    ${career_objective_iframe_body_locator}    ${career_objective_iframe_body}
    Unselect Frame

Click Next screen button
    Click Button    ${next_screen_button_locator}

Verify all inputted values are displayed in the Summary screen
    Wait Until Element Is Visible    ${summary_first_name_locator}
    Element Text Should Be    ${summary_first_name_locator}    ${first_name}
    Element Text Should Be    ${summary_last_name_locator}     ${last_name}
    Element Text Should Be    ${summary_address_locator}       ${address}
    Element Text Should Be    ${summary_country_locator}       ${country}
    Element Text Should Be    ${summary_file_locator}       ${file_name}
    Element Text Should Be    ${summary_gender_locator}       ${gender}
    Element Text Should Be    ${summary_role_locator}       ${role}
    Element Text Should Be    ${summary_tools_locator}       ${tools_locator_spreadsheet}
    Element Text Should Be    ${summary_career_objective_locator}       ${career_objective_iframe_body}

Click Validate and send button
    Click Button    ${validate_and_send_button_locator}

Verify redirection to "Thank you for submitting your project" page
    Wait Until Page Contains    Thank you for submitting your project
    Close Browser
