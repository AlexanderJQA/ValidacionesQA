*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Abrir pagina de prueba
    Open Browser    https://www.demoblaze.com    chrome
    Maximize Browser Window
    Sleep   5s
    Click Element    xpath=//a[text()='Samsung galaxy s6']
    Wait Until Element Is Visible    xpath=//a[text()='Add to cart']    5s
    Click Element    xpath=//a[text()='Add to cart']
    Click Element    xpath=//a[contains(text(),'Cart')]
    Click Element    xpath=//button[text()='Place Order']
    Wait Until Element Is Visible  id=name  5s
    Input Text       xpath=//input[@id='name']                                 Maria Jose
    Sleep   3s
    Input Text       xpath=//input[@class='form-control' and @id='country']    Portugal
    Sleep   3s
    Input Text       xpath=//input[@class='form-control' and @id='city']       Europea
    Sleep  3s
    Input Text       xpath=//input[@class='form-control' and @id='card']      5543 1234 0909 1890
    Sleep  3s 
    Input Text       xpath=//input[@class='form-control' and @id='month']     30-06-1996
    Sleep  3s
    Input Text       xpath=//input[@class='form-control' and @id='year']     29

    Scroll Element Into View  xpath=//button[text()='Purchase']

    Click Element    xpath=//button[text()='Purchase']


    Sleep    5s   # Espera para verificar que la página cargue correctamente
    Close Browser  # Cierra el navegador al finalizar
