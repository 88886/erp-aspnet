<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PurchaseOrderInfo.aspx.cs"
    Inherits="Pages_Office_PurchaseManager_PurchaseOrderInfo" %>

<%@ Register Src="../../../UserControl/CodeTypeDrpControl.ascx" TagName="CodeTypeDrpControl"
    TagPrefix="uc1" %>
<%@ Register Src="../../../UserControl/ProviderInfo.ascx" TagName="ProviderInfo"
    TagPrefix="uc2" %>
<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc3" %>
<%@ Register src="../../../UserControl/GetBillExAttrControl.ascx" tagname="GetBillExAttrControl" tagprefix="uc4" %>
<%@ Register src="../../../UserControl/Common/ProjectSelectControl.ascx" tagname="ProjectSelectControl" tagprefix="uc5" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>�ɹ������б�</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" type="text/css" href="../../../css/default.css" />

    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript" src="../../../js/common/PageBar-1.1.1.js"></script>

    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />

    <script src="../../../js/common/check.js" type="text/javascript"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <script src="../../../js/common/Common.js" type="text/javascript"></script>

    <script src="../../../js/Calendar/WdatePicker.js" type="text/javascript"></script>

    <script src="../../../js/common/Flow.js" type="text/javascript"></script>

    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>

    <script src="../../../js/Office/PurchaseManager/PurchaseOrderInfo.js" type="text/javascript"></script>

    <style type="text/css">
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <input id="HiddenPoint" type="hidden" runat="server" />
    <a name="DetailListMark"></a>
    <div style="display: none">
        <input id="SearchCondition" type="text" />
    </div>
    <table width="98%" border="0" cellpadding="0" cellspacing="0" 
        id="mainindex">
        <tr>
            <td valign="top">
                <img src="../../../images/Main/Line.jpg" width="122" height="7" />
            </td>
        </tr>
        <tr>
            <td valign="top" class="Blue">
                <img src="../../../images/Main/Arrow.jpg" width="21" height="18" align="absmiddle" />��������
            </td>
            <td align="right" valign="top">
                <div id='divSearch'>
                    <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('tblSearch','divSearch')" />
                </div>
            </td>
        </tr>
    </table>
    <table width="98%" border="0" align="center" cellpadding="0" id="tblSearch" cellspacing="0"
        bgcolor="#CCCCCC" id="mainindex">
        <tr>
            <td bgcolor="#FFFFFF">
                <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC"
                    >
                    <tr>
                        <td height="20" class="tdColTitle" width="10%">
                            �������
                        </td>
                        <td class="tdColInput" width="23%">
                            <input name="txtOrderNo" id="txtOrderNo"  runat="server" class="tdinput" type="text" style="width: 99%"
                                specialworkcheck="�������" />
                        </td>
                        <td height="20" class="tdColTitle" width="10%">
                            ��������
                        </td>
                        <td class="tdColInput" width="23%">
                            <input name="txtOrderTitle" id="txtOrderTitle"   runat="server" class="tdinput" type="text" style="width: 99%"
                                specialworkcheck="��������" />
                        </td>
                        <td class="tdColTitle" width="10%">
                            �ɹ����
                        </td>
                        <td class="tdColInput" width="24%">
                            <uc1:CodeTypeDrpControl ID="ddlTypeID" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td height="20" class="tdColTitle">
                            ����
                        </td>
                        <td class="tdColInput">
                            <input name="DeptName" id="DeptName" class="tdinput" onclick="alertdiv('DeptName,hidDeptID');"
                                readonly type="text" style="width: 99%" />
                            <input type="hidden" id="hidDeptID" runat="server" />
                        </td>
                        <td class="tdColTitle">
                            �ɹ�Ա
                        </td>
                        <td class="tdColInput">
                            <input name="UserPurchaseName" id="UserPurchaseName" class="tdinput" readonly onclick="alertdiv('UserPurchaseName,hidPurchaseID');"
                                type="text" style="width: 99%" />
                            <input type="hidden" id="hidPurchaseID" runat="server" />
                        </td>
                        <td class="tdColTitle">
                            Դ������
                        </td>
                        <td class="tdColInput">
                            <select name="ddlFromType" class="tdinput" width="119px" id="ddlFromType"   runat="server" >
                                <option value="10">--��ѡ��--</option>
                                <option value="0">����Դ</option>
                                <option value="1">�ɹ�����</option>
                                <option value="2">�ɹ��ƻ�</option>
                                <option value="3">�ɹ�ѯ�۵�</option>
                                <option value="4">�ɹ���ͬ��</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td height="20" class="tdColTitle">
                            ��Ӧ��
                        </td>
                        <td class="tdColInput">
                            <uc2:ProviderInfo ID="ProviderInfo1" runat="server" />
                            <input name="txtProviderName" id="txtProviderName" readonly onclick="popProviderObj.ShowProviderList('hidProviderID','txtProviderName')"
                                class="tdinput" type="text" style="width: 99%" />
                            <input type="hidden" id="hidProviderID" runat="server" />
                        </td>
                        <td class="tdColTitle">
                            ����״̬
                        </td>
                        <td class="tdColInput">
                            <select name="ddlBillStatus" class="tdinput" width="119px" id="ddlBillStatus"   runat="server" >
                                <option value="0" selected="selected">--��ѡ��--</option>
                                <option value="1">�Ƶ�</option>
                                <option value="2">ִ��</option>
                                <%--<option value="3">���</option>--%>
                                <option value="4">�ֹ��ᵥ</option>
                                <option value="5">�Զ��ᵥ</option>
                            </select>
                        </td>
                        <td class="tdColTitle">
                            ����״̬
                        </td>
                        <td class="tdColInput">
                            <select name="ddlFlowStatus" class="tdinput" width="119px" id="ddlFlowStatus"   runat="server" >
                                <option value="0" selected="selected">--��ѡ��--</option>
                                <option value="">���ύ</option>
                                <option value="1">������</option>
                                <option value="2">������</option>
                                <option value="3">����ͨ��</option>
                                <option value="4">������ͨ��</option>
                                <option value="5">��������</option>
                            </select>
                            <input type="hidden" id="hidOrderBy" runat="server" value="OrderNo ASC" />
                        </td>
                    </tr>
                    <tr>
                        <td height="20" class="tdColTitle">
                     <span id="OtherConditon" style=" display:none">��������</span>
                        </td>
                        <td class="tdColInput">
                           
                            <uc4:GetBillExAttrControl ID="GetBillExAttrControl1" runat="server" />
                           
                        </td>
                        <td class="tdColTitle">
          ������Ŀ
                        </td>
                        <td class="tdColInput">
                              <asp:TextBox ID="txtProject" runat="server" onclick="ShowProjectInfo('txtProject','hidProjectID');"
                                            ReadOnly="true" CssClass="tdinput" Width="95%"></asp:TextBox>
                                        <input type="hidden" id="hidProjectID" runat="server" />
                           
                           
                            <uc5:ProjectSelectControl ID="ProjectSelectControl1" runat="server" />
                           
                        </td>
                        <td class="tdColTitle">
                          
                        </td>
                        <td class="tdColInput">
                           
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6" align="center" bgcolor="#FFFFFF">
                            <input type="hidden" id="hidModuleID" runat="server" />
                            <input type="hidden" id="hidSearchCondition" />
                            <img runat="server" visible="false" alt="����" src="../../../images/Button/Bottom_btn_search.jpg"
                                id="btnSearch" runat="server" style='cursor: pointer;' onclick='DoSearch()'  />
                            <%--<img alt="����" src="../../../images/Button/Bottom_btn_re.jpg" id="btnReset" runat="server" visible="true" style='cursor:pointer;' onclick="ClearInputProxy()" width="52" height="23" />--%>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table width="98%" border="0" cellpadding="0" cellspacing="0"
        id="mainindex">
        <tr>
            <td colspan="2" valign="top">
                <img src="../../../images/Main/Line.jpg" width="122" height="7" /><uc3:Message ID="Message1"
                    runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" id="tblDetailList"
                    >
                    <tr>
                        <td colspan="2" height="2">
                        </td>
                    </tr>
                    <tr>
                        <td height="30" colspan="2" align="center" valign="top" class="Title">
                            �ɹ������б�                </td>
                    </tr>
                    <tr>
                        <td height="35" colspan="2" valign="top">
                            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                                <tr>
                                    <td height="28" bgcolor="#FFFFFF">
                                        <img runat="server" visible="false" src="../../../Images/Button/Bottom_btn_new.jpg"
                                            alt="�½�" id="btnNew" runat="server" style="cursor: hand" onclick="DoNew();" />
                                        <img runat="server" visible="false" src="../../../images/Button/Main_btn_delete.jpg"
                                            alt="ɾ��" id="btnDelete" runat="server" onclick="DeletePurOrder()" style='cursor: pointer;' />
                                        <asp:ImageButton ID="btnExport0" runat="server" 
                                            alt="����Excel" ImageUrl="../../../images/Button/Main_btn_out.jpg" 
                                            OnClick="btnImport_Click" style="height: 24px" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <%--<div style="height:252px;overflow-y:scroll;">--%>
                            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" id="PurOrderInfo"
                                bgcolor="#999999">
                                <tbody>
                                    <tr>
                                        <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            ѡ��
                                            <input type="checkbox" visible="false" id="checkall" onclick="SelectAll()" value="checkbox" />
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderByAsk('OrderNo','oC0');return false;">
                                                �������<span id="oC0" class="orderTip"></span>
                                            </div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderByAsk('OrderTitle','oC1');return false;">
                                                ��������<span id="oC1" class="orderTip"></span>
                                            </div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderByAsk('TypeName','oC2');return false;">
                                                �ɹ����<span id="oC2" class="orderTip"></span>
                                            </div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderByAsk('PurchaserName','oC3');return false;">
                                                �ɹ�Ա<span id="oC3" class="orderTip"></span>
                                            </div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderByAsk('ProviderName','oC4');return false;">
                                                ��Ӧ��<span id="oC4" class="orderTip"></span>
                                            </div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderByAsk('TotalPrice','oC5');return false;">
                                                ���ϼ�<span id="oC5" class="orderTip"></span>
                                            </div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderByAsk('TotalTax','oC6');return false;">
                                                ˰��ϼ�<span id="oC6" class="orderTip"></span>
                                            </div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderByAsk('TotalFee','Span1');return false;">
                                                ��˰���ϼ�<span id="Span1" class="orderTip"></span>
                                            </div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderByAsk('BillStatusName','Span2');return false;">
                                                ����״̬<span id="Span2" class="orderTip"></span>
                                            </div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderByAsk('FlowStatusName','oC7');return false;">
                                                ����״̬<span id="oC7" class="orderTip"></span>
                                            </div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderByAsk('isOpenBill','Span3');return false;">
                                                �Ƿ��ѽ���<span id="Span3" class="orderTip"></span>
                                            </div>
                                        </th>
                                    </tr>
                                </tbody>
                            </table>
                            <%--</div>--%>
                            <br />
                            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999"
                                class="PageList">
                                <tr>
                                    <td height="28" background="../../../images/Main/PageList_bg.jpg">
                                        <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" class="PageList">
                                            <tr>
                                                <td height="28" background="../../../images/Main/PageList_bg.jpg" width="40%">
                                                    <div id="pagecount">
                                                    </div>
                                                </td>
                                                <td height="28" align="right">
                                                    <div id="pageDataList1_Pager" class="jPagerBar">
                                                    </div>
                                                </td>
                                                <td height="28" align="right">
                                                    <div id="divpage">
                                                        <input name="text2" type="text" id="Text2" style="display: none" />
                                                        ÿҳ��ʾ<input name="ShowPageCount" type="text" id="ShowPageCount" maxlength="4" size="3" />��&nbsp;&nbsp;
                                                        ת����<input name="ToPage" type="text" id="ToPage" maxlength="4" size="3" />ҳ&nbsp;&nbsp;
                                                        <img src="../../../images/Button/Main_btn_GO.jpg" style='cursor: pointer;' alt="go"
                                                            width="36" height="28" align="absmiddle" onclick="ChangePageCountIndex($('#ShowPageCount').val(),$('#ToPage').val());" />
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <input type="hidden" id="hfModuleID" runat="server" />
    </form>
    <span id="Forms" class="Spantype" name="Forms"></span>
</body>
</html>
