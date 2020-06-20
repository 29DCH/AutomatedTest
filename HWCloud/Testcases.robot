*** Settings ***
Library           SeleniumLibrary
Library           Collections
Resource          Resource.txt

*** Test Cases ***
create VPC
    comment    点击dashboard的“虚拟私有云 VPC”按钮，进入虚拟私有云页面
    wait click    css=#cf-service-sidebar
