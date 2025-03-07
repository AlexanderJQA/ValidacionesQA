*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Login to saucedemo
  Open browser      https://www.saucedemo.com/  chrome 
  Maximize Browser Window
  Sleep             5 
  Input Text        xpath=//*[@id="user-name"]   standard_user
  Input Text        xpath=//*[@id="password"]    secret_sauce
  Click Element     xpath=//*[@id="login-button"]
  Wait Until Element Is Visible  xpath=//*[@id="add-to-cart-sauce-labs-backpack"]  timeout=10s
  Click Element     xpath=//button[@data-test="add-to-cart-sauce-labs-backpack"]
  Click Element     xpath=//*[@id="shopping_cart_container"]/a  

  Sleep  10

  Close Browser  


