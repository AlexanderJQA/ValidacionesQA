*** Settings ***
Library   SeleniumLibrary


*** Test Cases ***
Login en la página web
    Open Browser    https://demo.testim.io/    chrome
    Maximize Browser Window
    Sleep    5s
    Click Element    xpath=//button[contains(text(),'Log in')]
    Wait Until Element Is Visible    css=input.theme__inputElement___27dyY     10s
    Input Text       xpath=//input[@tabindex='1']    Maria de alex 
    Sleep   10
    Input text       xpath=//input[@tabindex='2']    MiSuperSecreta1232
    Sleep    5
    Click button     xpath=//button[@type='submit' and contains(., 'Log in')]    # Este es el XPath del botón
    Sleep    10 

