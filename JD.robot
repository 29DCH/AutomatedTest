*** Settings ***
Library           SeleniumLibrary
Library           Collections

*** Variables ***
#˯��ʱ�䣬��֤�´򿪵���ҳ��ּ���
${time}           1
#�������������ݣ������޶�ΪMacBook
${value}          MacBook
#�����¼���xpath��λ
${link1}          https://www.jd.com/
${link2}          xpath=//*[@id="ttbar-login"]/a[1]
${link3}          xpath=//*[@id="kbCoagent"]/ul/li[1]/a/span
${link4}          xpath=//*[@id="ptlogin_iframe"]
#��Ҫ���ȵ�¼qq�����ĳ��Լ���xpath
${link5}          xpath=//*[@id="nick_2265940560"]
${link6}          xpath=//*[@id="key"]
${link7}          xpath=//*[@id="search"]/div/div[2]/button
${link8}          xpath=//*[@id="J_goodsList"]/ul/li[1]/div/div[1]/a/img
${link9}          xpath=//*[@id="InitCartUrl"]
${link10}         xpath=//*[@id="GotoShoppingCart"]
${link11}         xpath=//*[@id="cart-floatbar"]/div/div/div/div[2]/div[4]/div[1]/div/div[1]/a

*** Test Cases ***
JD
    [Documentation]    liujiqiang ����RF��ܵľ����Զ�����С�ű�
    #�򿪹ȸ�������������뾩����ҳ
    open browser    ${link1}    chrome
    #������������
    maximize browser window
    #�����¼(�����˺������¼��Ҫ����������֤������������ѡ��qq��ݵ�¼��������Ҫ��ǰ��¼qq������${link5}�ĳ��Լ���xpath)
    click element    ${link2}
    #�������qq��ݵ�¼ҳ��
    click element    ${link3}
    #ѡ��qq��ݵ�¼ҳ���iframe
    select frame    ${link4}
    #�������qq��ݵ�¼
    click element    ${link5}
    #ȡ��ѡ��qq��ݵ�¼ҳ���iframe����ֹ�������xpathʱ�޷�׼ȷ��λ
    unselect frame
    sleep    ${time}
    #�������Զ�����
    input text    ${link6}    ${value}
    #���������ť
    click button    ${link7}
    sleep    ${time}
    #Ĭ�ϵ�������б�ĵ�һ����ƷͼƬ
    click element    ${link8}
    sleep    ${time}
    #��ʱ����һ���µ�ҳ��(��Ʒ����ҳ)���⼸���Ƕ�λ������´򿪵�ҳ�棬Ȼ����в���
    ${titles}    Get Window Titles
    ${titles2}    Get From List    ${titles}    1
    ${titles1}    Get From List    ${titles}    0
    select window    title=${titles2}
    #������빺�ﳵ��ť
    click element    ${link9}
    sleep    ${time}
    #���ȥ���ﳵ����İ�ť
    click element    ${link10}
    sleep    ${time}
    #���ȥ���㰴ť
    click element    ${link11}
    #����ûǮ�������֧�������Ͳ�д����