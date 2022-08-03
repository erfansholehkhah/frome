*** Settings ***
Library  SeleniumLibrary
Documentation  Lets see what ypu can do here
Resource  ../Resource/PO/app.robot
Resource  ../Resource/PO/common.robot
Test Setup  Test Web Begin
Test Teardown    Test Ends up



*** Variables ***
${Browser} =  Chrome
${url} =  https://www.amazon.com


*** Test Cases ***

This is a test
    [Tags]    this is a test
    Search for the item

   Order the item
    Add to cart
    Search for a case
    #Add to cart too
