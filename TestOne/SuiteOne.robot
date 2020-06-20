*** Settings ***
Suite Setup       Open JD
Suite Teardown    Close All Browsers
Library           SeleniumLibrary
Library           Collections
Resource          Resource.txt

*** Test Cases ***
JD
    [Documentation]    liujiqiang 基于RF框架的京东自动购物小脚本
    #点击登录(由于账号密码登录需要滑动滑块验证，所以这里我选择qq快捷登录，所以需要提前登录qq，并把${link5}改成自己的xpath)
    click element    ${link2}
    #点击进入qq快捷登录页面
    click element    ${link3}
    #选定qq快捷登录页面的iframe
    select frame    ${link4}
    #点击进行qq快捷登录
    click element    ${link5}
    #取消选定qq快捷登录页面的iframe，防止后面操作xpath时无法准确定位
    unselect frame
    sleep    ${time}
    #搜索框自动输入
    input text    ${link6}    ${value}
    #点击搜索按钮
    click button    ${link7}
    sleep    ${time}
    #默认点击搜索列表的第一个商品图片
    click element    ${link8}
    sleep    ${time}
    #此时打开了一个新的页面(商品详情页)，这几步是定位到这个新打开的页面，然后进行操作
    ${titles}    Get Window Titles
    ${titles2}    Get From List    ${titles}    1
    ${titles1}    Get From List    ${titles}    0
    select window    title=${titles2}
    #点击加入购物车按钮
    click element    ${link9}
    sleep    ${time}
    #点击去购物车结算的按钮
    click element    ${link10}
    sleep    ${time}
    #点击去结算按钮
    click element    ${link11}
    #由于没钱，后面的支付操作就不写啦！

*** Keywords ***
Open JD
    #打开谷歌浏览器，并进入京东首页
    open browser    ${link1}    chrome
    #最大化浏览器窗口
    maximize browser window
