*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Search for the item
    Wait Until Element Is Visible  nav-logo
    click element  xpath = //*[@id="nav-search-bar-form"]/div[2]
    element should be visible  twotabsearchtextbox
    input text  twotabsearchtextbox  iphone Xs
    click element  nav-search-submit-button
    #sleep  6s
Order the item
    ${desired}=  get webelement  xpath =//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[4]/div/div/div/div/div/div[1]
    ${elements_on_page}  get webelements  xpath= //*[@id="search"]/div[1]
    FOR  ${elements}  IN  ${elements_on_page}
    ${item}  get webelement  ${elements}
    END
    #run keyword if  ${item} == "${desired}"  Keyword1


Add to cart
    click element  xpath =//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[4]/div/div/div/div/div/div[1]
    click element  id:addToCart_feature_div
Search for a case

    click element  id:nav-logo-sprites
    click element  id:twotabsearchtextbox
    input text     id:twotabsearchtextbox  iphone xs case
    sleep  3s
    click element  id:nav-search-submit-button
    wait until page contains element  xpath= //*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[3]
    click element  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[3]
    sleep  5s
#Add to cart
