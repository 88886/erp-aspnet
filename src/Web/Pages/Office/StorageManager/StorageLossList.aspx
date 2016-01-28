<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StorageLossList.aspx.cs"
    Inherits="Pages_Office_StorageManager_StorageLossList" %>

<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc1" %>
<%@ Register src="../../../UserControl/GetBillExAttrControl.ascx" tagname="GetBillExAttrControl" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" type="text/css" href="../../../css/default.css" />

    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript" src="../../../js/common/PageBar-1.1.1.js"></script>

    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />

    <script src="../../../js/office/StorageManager/StorageLossList.js" type="text/javascript"></script>

    <script src="../../../js/common/check.js" type="text/javascript"></script>

    <script src="../../../js/Calendar/WdatePicker.js" type="text/javascript"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <script src="../../../js/common/common.js" type="text/javascript"></script>

    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>

    <title>��汨���б�</title>
</head>
<body>
    <form id="form1" runat="server">
    <input id="HiddenPoint" type="hidden" runat="server" />
    <table width="95%" height="57" border="0" cellpadding="0" cellspacing="0" class="checktable"
        id="mainindex">
        <tr>
            <td valign="top">
                <img src="../../../images/Main/Line.jpg" width="122" height="7" />
            </td>
            <td rowspan="2" align="right" valign="top">
                <div id='searchClick'>
                    <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('searchtable','searchClick')" /></div>
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td valign="top" class="Blue">
                <img src="../../../images/Main/Arrow.jpg" width="21" height="18" align="absmiddle" />��������
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table width="99%" border="0" align="center" cellpadding="0" id="searchtable" cellspacing="0"
                    bgcolor="#CCCCCC">
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC">
                                <tr>
                                    <td width="10%" height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        ���𵥱��
                                    </td>
                                    <td width="24%" bgcolor="#FFFFFF">
                                        <input name="txtLossNo" id="txtLossNo" specialworkcheck="���𵥱��" type="text" class="tdinput"
                                            size="19" runat="server" style="width: 95%" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right" width="10%">
                                        ��������
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF" width="23%">
                                        <input name="txtTitle" id="txtTitle" specialworkcheck="��������" type="text" class="tdinput"
                                            size="19" runat="server" style="width: 95%" />
                                    </td>
                                    <td height="20" align="right" bgcolor="#E6E6E6" width="10%">
                                        ������
                                    </td>
                                    <td height="23" bgcolor="#FFFFFF" width="24%">
                                        <input name="DeptName" id="DeptName" type="text" class="tdinput" size="19" readonly="readonly"
                                            onclick="alertdiv('DeptName,txtDeptID');" runat="server" style="width: 95%" />
                                        <input name="txtDeptID" id="txtDeptID" type="hidden" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="20" align="right" bgcolor="#E6E6E6">
                                        ����ֿ�
                                    </td>
                                    <td height="20" bgcolor="#FFFFFF">
                                        <asp:DropDownList ID="ddlStorage" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ������
                                    </td>
                                    <td width="10%" bgcolor="#FFFFFF">
                                        <input id="UserExecutor" class="tdinput" name="UserExecutor" onclick="alertdiv('UserExecutor,txtExecutorID');"
                                            readonly="readonly" size="19" type="text" runat="server" style="width: 95%" />
                                        <input id="txtExecutorID" name="txtExecutorID" type="hidden" runat="server" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ����״̬
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <select name="sltBillStatus" class="tdinput" id="sltBillStatus" runat="server">
                                            <option value="">--��ѡ��--</option>
                                            <option value="1">�Ƶ�</option>
                                            <option value="2">ִ��</option>
                                            <option value="4">�ֹ��ᵥ</option>
                                            <option value="5">�Զ��ᵥ</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ����״̬
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <select name="sltFlowStatus" class="tdinput" id="sltFlowStatus" runat="server">
                                            <option value="">--��ѡ��--</option>
                                            <option value="0">���ύ</option>
                                            <option value="1">������</option>
                                            <option value="2">������</option>
                                            <option value="3">����ͨ��</option>
                                            <option value="4">������ͨ��</option>
                                            <option value="5">��������</option>
                                        </select>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ����ԭ��
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <asp:DropDownList ID="ddlReason" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        �ɱ����ϼ�
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <input type="text" id="txtTotalPriceStart" class="tdinput" size="12" runat="server" />
                                        ��
                                        <input type="text" id="txtTotalPriceEnd" class="tdinput" size="12" runat="server" />
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td width="10%" height="20" bgcolor="#E7E7E7" align="right">
                                        ����ʱ���
                                    </td>
                                    <td width="20%" bgcolor="#FFFFFF">
                                        <input name="txtLossDateStart" id="txtLossDateStart" type="text" class="tdinput"
                                            size="12" readonly="readonly" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('txtLossDateStart')})"
                                            runat="server" />
                                        ��
                                        <input name="txtLossDateEnd" id="txtLossDateEnd" type="text" class="tdinput" size="12"
                                            readonly="readonly" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('txtLossDateEnd')})"
                                            runat="server" />
                                    </td>
                                    <td align="right" bgcolor="#E6E6E6">
                                    ����
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <input id="txtBatchNo" class="tdinput" runat="server" type="text" size="15" specialworkcheck="����" />
                                    </td>
                                    <td align="right" bgcolor="#E6E6E6">
                                    <span id="OtherConditon" style="display:none">��������</span>
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <uc2:GetBillExAttrControl ID="GetBillExAttrControl1" runat="server" />
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
                                        <input type="hidden" id="txtorderBy" runat="server" />
                                        <input type="hidden" id="hidModuleID" runat="server" />
                                        <input type="hidden" id="ListModuleID" runat="server" />
                                        <input type="hidden" id="hidSearchCondition" runat="server" />
                                        <img alt="����" src="../../../images/Button/Bottom_btn_search.jpg" style='cursor: hand;'
                                            id="btn_Search" runat="server" onclick='DoSearch();' visible="false" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table width="95%" height="57" border="0" cellpadding="0" cellspacing="0" class="maintable"
        id="mainindex">
        <tr>
            <td valign="top">
                <img src="../../../images/Main/Line.jpg" width="122" height="7" />
            </td>
            <td align="center" valign="top">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td height="30" colspan="2" align="center" valign="top" class="Title">
                �����б�
            </td>
        </tr>
        <tr>
            <td height="35" colspan="2" valign="top">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="28" bgcolor="#FFFFFF">
                            <img src="../../../images/Button/Bottom_btn_new.jpg" id="btn_Add" runat="server"
                                alt="�½������ⵥ" style='cursor: hand;' onclick="DoNew();" visible="false" />
                            <img id="btnDel" runat="server" src="../../../images/Button/Main_btn_delete.jpg"
                                alt="ɾ��" style='cursor: hand;' border="0" onclick="Fun_Delete_StorageLoss();"
                                visible="false" />
                            <asp:ImageButton ID="btnImport" runat="server" ImageUrl="../../../images/Button/Main_btn_out.jpg"
                                alt="����Excel" OnClick="btnImport_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" id="pageDataList1"
                    bgcolor="#999999">
                    <tbody>
                        <tr>
                            <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="5%">
                                <input type="checkbox" name="checkall" id="checkall" onclick="SelectAllCk()" value="checkbox" />
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="10%">
                                <div class="orderClick" onclick="OrderBy('LossNo','oc1');return false;">
                                    ���𵥱��<span id="oc1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="10%">
                                <div class="orderClick" onclick="OrderBy('Title','oc2');return false;">
                                    ��������<span id="oc2" class="orderTip"></span></div>
                            </th>
                            <%--<th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="10%">
                                <div class="orderClick" onclick="OrderBy('BatchNo','oc2');return false;">
                                    ����<span id="oc2" class="orderTip"></span></div>
                            </th>--%>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="8%">
                                <div class="orderClick" onclick="OrderBy('Executor','Span1');return false;">
                                    ������<span id="Span1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="8%">
                                <div class="orderClick" onclick="OrderBy('DeptName','oc3');return false;">
                                    ������<span id="oc3" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="8%">
                                <div class="orderClick" onclick="OrderBy('StorageName','oc4');return false;">
                                    ����ֿ�<span id="oc4" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="8%">
                                <div class="orderClick" onclick="OrderBy('LossDate','oc5');return false;">
                                    ����ʱ��<span id="oc5" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="10%">
                                <div class="orderClick" onclick="OrderBy('ReasonTypeName','oc6');return false;">
                                    ����ԭ��<span id="oc6" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="10%">
                                <div class="orderClick" onclick="OrderBy('TotalPrice','oc7');return false;">
                                    �ɱ����ϼ�<span id="oc7" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="8%">
                                <div class="orderClick" onclick="OrderBy('BillStatusName','oc10');return false;">
                                    ����״̬<span id="oc10" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="8%">
                                <div class="orderClick" onclick="OrderBy('FlowStatus','oc11');return false;">
                                    ����״̬<span id="oc11" class="orderTip"></span></div>
                            </th>
                        </tr>
                    </tbody>
                </table>
                <br />
                <div style="overflow-y: auto;">
                    <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999"
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
                                                <input name="text" type="text" id="Text2" style="display: none" />
                                                <span id="pageDataList1_Total"></span>ÿҳ��ʾ
                                                <input name="text" type="text" id="ShowPageCount" />
                                                �� ת����
                                                <input name="text" type="text" id="ToPage" />
                                                ҳ
                                                <img src="../../../images/Button/Main_btn_GO.jpg" style='cursor: hand;' alt="go"
                                                    width="36" height="28" align="absmiddle" onclick="ChangePageCountIndex($('#ShowPageCount').val(),$('#ToPage').val());" />
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
            </td>
        </tr>
    </table>
    <uc1:Message ID="Message1" runat="server" />
    <a name="pageDataList1Mark"></a><span id="Forms" class="Spantype"></span>
    </form>
</body>
</html>
