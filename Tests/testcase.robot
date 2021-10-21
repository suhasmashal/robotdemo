*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Observe user is able to test sanity flow
    [Tags]  sanity  regression
    Given User Launch browser for flipkart app
    When User lands on Login form
    When User lands on electronics page
    Then Add to cart

Observe user is able to test regression flow
    [Tags]  regression
    Given User Launch browser for flipkart app

*** Keywords ***
User Launch browser for flipkart app
    Open Browser  https://www.flipkart.com/  gc
    Maximize Browser Window

User lands on Login form
    Input Text  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input  8660473029
    Input Text  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input  Flipkart@007
    Click Button  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button
    Sleep  5s
    Wait Until Element is Visible  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[1]/div/img
    Mouse Over  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[1]/div/img
    Mouse Over  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[1]
    Mouse Over  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[2]/div[2]/div[2]/div/div/div[2]/a[2]
    Click Element  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[2]/div[2]/div[2]/div/div/div[2]/a[2]
    Sleep  3s

User lands on electronics page
    Input Text  xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input  realme C20 (Cool Blue, 32 GB)  (2 GB RAM)
    Click Button  xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/button
    Sleep  4s
    Click Element  xpath=//*[@id="container"]/div/div[3]/div/div[2]/div[2]/div/div/div/a/div[2]/div[1]/div[1]
    Sleep  4s

Add to cart
    Switch Window  new
    Click Button  xpath=//*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button
  


