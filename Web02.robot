*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}      https://www.freerangetesters.com/  
${LOGIN_LINK}    xpath=//a[contains(@href, '/login')]

*** Test Cases ***
Entrar a la página web
    Open Browser    https://www.freerangetesters.com/  chrome
    Maximize Browser Window
    Click Element    xpath=//a[contains(@href, '/login')]
    Sleep    2s
    Close Browser