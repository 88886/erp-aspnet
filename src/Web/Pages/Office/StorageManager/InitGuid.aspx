<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InitGuid.aspx.cs" Inherits="Pages_Office_StorageManager_InitGuid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>����ʼ��</title>
    <link href="../../../css/default.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        <!
        -- body
        {
            margin-left: 30px;
            margin-top: 30px;
            margin-right: 30px;
            margin-bottom: 30px;
        }
        -- ></style>
</head>
<body>
    <table width="100%" border="0" cellpadding="10" cellspacing="0" bgcolor="#FFFFFF">
        <tr>
            <td height="40">
                <p align="center" class="Title">
                    <img src="../../../images/number/logo_kc.jpg" width="380" height="65" /><strong>
                        <br />
                        <br />
                    </strong><span class="redbold">����ʹ�ÿ�����ϵͳ����������²�����п���ʼ����</span></p>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    <img src="../../../images/number/Num_01.jpg" width="26" height="26" align="absmiddle" />
                    <a href="<%=GetLinks(2052101,"../SystemManager/CodePublicType.aspx?TypeFlag=9&ModuleID=") %>">��������</a><br />
                    Ϊ�˷��㵥�ݵĿ���¼�룬������ϵͳ�ṩ�˻������ù��ܣ�������ϵͳ���漰���Ĺ����������ԣ������б�ѡ��Լ����ݵı�Ź���ͳһ���������á�<br />
                    <br />
                    <img src="../../../images/number/Num_02.jpg" width="26" height="26" align="absmiddle" />
                    <a href="<%=GetLinks(int.Parse(XBase.Common.ConstUtil.MODULE_ID_STORAGE_STORAGEINFO),"../StorageManager/StorageInfo.aspx?ModuleID=") %>">�����ֿ⵵��</a><br />
                    �ڿ�浵���½������á�<br />
                    �ֿ��ǿ�����Ļ������ݶ������еĿ�������Χ����Ʒ����Ʒ���Լ��ֿ���еġ�<br />
                    ����ݹ�˾�Ĳֿ����������浵����ϵͳҪ��������ٽ���һ���ֿ⡣<br />
                    <br />
                    <img src="../../../images/number/Num_03.jpg" width="26" height="26" align="absmiddle" />
                    <a href="<%=GetLinks(int.Parse(XBase.Common.ConstUtil.MODULE_ID_STORAGE_STORAGEINITAIL_ADD),"../StorageManager/StorageInitailAdd.aspx?ModuleID=") %>">�ڳ����¼��</a><br />
                    �״�ʹ��ϵͳʱ��Ӧ�̵�˶����������Ҫ���й������Ʒ����Ʒ���Ŀ���������¼��ϵͳ����Ϊϵͳ���ڳ���档<br />
                    �ڳ�������������Ʒ����Ʒ��¼�룬Ҳ�����������롣<br />
                    ���ڿ�浵��������ڳ����¼�롣<br />
                    <br />
                    <img src="../../../images/number/Num_04.jpg" width="26" height="26" align="absmiddle" />
                    <a href="<%=GetLinks(2052103,"../SystemManager/ApprovalFlowSet.aspx?TypeFlag=8&ModuleID=") %>">������������</a><br />
                    ����������Щ��������Ҫ����������������Ҫ���ú���Ӧ���������̡�<br />
                </p>
            </td>
        </tr>
    </table>
</body>
</html>
