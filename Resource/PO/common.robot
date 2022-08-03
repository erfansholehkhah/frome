*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser} =  Chrome
${url} =  https://www.amazon.com


*** Keywords ***

Test Web Begin
    open browser  ${url}  ${Browser}
    maximize browser window

Test Ends up
    close all browsers
