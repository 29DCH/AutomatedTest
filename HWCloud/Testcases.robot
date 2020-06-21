*** Settings ***
Library           SeleniumLibrary
Library           Collections
Resource          Resource.txt

*** Test Cases ***
create VPC
    comment    点击dashboard的“虚拟私有云 VPC”按钮，进入虚拟私有云页面
    wait click    css=#cf-service-sidebar
    comment    点击私有云页面中右上角的创建虚拟私有云按钮，进入虚拟私有云创建页面
    wait click    xpath=//*[@id="btns1"]/span
    comment    输入新的虚拟私有云名字：vpc-temp
    wait input    css=.vpc-create-vpc-form-input ng-pristine ng-valid ng-scope ng-isolate-scope ng-not-empty ng-touched    vpc-temp
    comment    输入新的子网名字：Subnet-temp
    wait input    css=.vpc-create-vpc-form-input ng-pristine ng-untouched ng-valid ng-scope ng-not-empty    subnet-temp
    comment    点击创建按钮创建VPC
    wait click    css=.cti-btn-label ng-binding ng-scope
    comment    判断页面上是否出现“任务提交成功！”来判断提交是否成功
    wait contains    任务提交成功！
