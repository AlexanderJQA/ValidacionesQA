*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Entrar a la página web
    Open Browser    https://www.google.com    chrome
    Sleep    2s
    Close Browser