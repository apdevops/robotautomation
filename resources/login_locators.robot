*** Settings ***
Documentation    A resource file with reusable keywords and variables.

*** Variables ***
${cookie_close_button}     css=#cookie-close
${login_button}       xpath=//a[contains(text(),'Login')]
${login_username_input}     css=#login-email
${login_password_input}     css=#login-password
${login_button_confirm}    css=button.btn-lg:nth-child(2)