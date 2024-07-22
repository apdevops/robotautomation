*** Settings ***
Documentation    A resource file with reusable keywords and variables.

*** Variables ***
${submit_application_link}   xpath=//a[contains(text(),'Submit a new application')]
${continue_submit_application_button}    xpath=//a[contains(text(),'Continue with the submission of the application')]
${first_name}    Jose
${first_name_locator}    xpath=//input[@aria-label='First name']
${last_name}    Rizal
${last_name_locator}    xpath=//input[@aria-label='Last name']
${address}    Test-Address
${address_locator}    xpath=//textarea[@aria-label='Unit no/House no, Street']
${postal_code}    10000
${postal_code_locator}    xpath=//input[@aria-label='Select postal code']
${country}     AU
${country_locator}     xpath=//select[@aria-label='Country']
${file_name}   ${CURDIR}/test_image.png
${file_name_locator}   xpath=//input[@name='Filedata']
${uploaded_file_list_locator}    xpath=//div[@class="uploadedFilesList"]/ul
${gender_locator_male}    xpath=//div[contains(text(),'Male')]/..
${gender}   Male
${role_index}    2
${role}   'Automation tester'
${role_index_locator}    xpath=//select[@aria-label="Select a role you're applying for"]
${tools_locator_spreadsheet}  xpath=//div[contains(text(),'Spreadsheet')]
${career_objective_iframe_locator}   xpath=//iframe[@class="cke_wysiwyg_frame cke_reset"]
${career_objective_iframe_body}   test
${career_objective_iframe_body_locator}    xpath=//body[@class="cke_editable cke_editable_themed cke_contents_ltr cke_show_borders"]
${next_screen_button_locator}    css=#navButtonNext
${summary_first_name_locator}    xpath=//strong[contains(text(),'First name')]/../../div/div/div
${summary_last_name_locator}    xpath=//strong[contains(text(),'Last name')]/../../div/div/div
${summary_address_locator}    xpath=//strong[contains(text(),'Unit no/House no, Street')]/../../div/div/p
${summary_country_locator}    xpath=//strong[contains(text(),'Country')]/../../div/div/p
${summary_file_locator}    xpath=//strong[contains(text(),'Photo')]/../../div/div/div/ul/li[1]
${summary_gender_locator}    xpath=//strong[contains(text(),'Gender')]/../../div/ul/li
${summary_role_locator}    xpath=//legend[contains(text(),'Role')]/../div/div/p
${summary_tools_locator}    xpath=//strong[contains(text(),'Familiarity with tools, frameworks and programming languages')]/../../div/ul/li
${summary_career_objective_locator}    xpath=//strong[contains(text(),'What is your career objective?')]/../../div/div/p
${validate_and_send_button_locator}    css=#button.ml-md-auto
