<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StorageAdjustList.aspx.cs"
    Inherits="Pages_Office_StorageManager_StorageAdjustList" %>

<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc1" %>
<%@ Register Src="../../../UserControl/CheckApplay.ascx" TagName="CheckApplay" TagPrefix="uc2" %>
<%@ Register Src="../../../UserControl/ReportFrom.ascx" TagName="ReportFrom" TagPrefix="uc3" %>
<%@ Register Src="../../../UserControl/ReportMan.ascx" TagName="ReportMan" TagPrefix="uc4" %>
<%@ Register Src="../../../UserControl/GetBillExAttrControl.ascx" TagName="GetBillExAttrControl"
    TagPrefix="uc5" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" type="text/css" href="../../../css/default.css" />

    <script src="../../../js/common/Check.js" type="text/javascript"></script>

    <script src="../../../js/Calendar/WdatePicker.js" type="text/javascript"></script>

    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>

    <script src="../../../js/common/Common.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript" src="../../../js/common/PageBar-1.1.1.js"></script>

    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />

    <script src="../../../js/office/StorageManager/StorageAdjustList.js" type="text/javascript"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>

    <script>
window.onload=function()
{

    if(document.getElementById('isreturn').value!='0')
    {
        SearchStorageAdjustData(document.getElementById('ToPage').value);
    }
}
    </script>

    <title>�ճ��������б�</title>
</head>
<body>
    <form id="form1" runat="server">
    <input id="hiddenOrder" value="0" type="hidden" runat="server" /><!---����������Ҫ-->
    <div id="divBackShadow" style="display: none">
        <iframe src="../../../Pages/Common/MaskPage.aspx" id="BackShadowIframe" frameborder="0"
            width="100%"></iframe>
    </div>
    <!-- Start �� Ϣ �� ʾ -->
    <uc1:Message ID="Message1" runat="server" />
    <!-- End �� Ϣ �� ʾ -->
    <input id="isreturn" value="0" type="hidden" />
    <table width="95%" height="57" border="0" cellpadding="0" cellspacing="0" class="checktable"
        id="mainindex">
        <tr>
            <td valign="top">
                <img src="../../../images/Main/Line.jpg" width="122" height="7" />
                <uc4:ReportMan ID="ReportMan1" runat="server" />
            </td>
            <td rowspan="2" align="right" valign="top">
                <div id='searchClick'>
                    <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('searchtable','searchClick')" />
                </div>
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td valign="top" class="Blue">
                <img src="../../../images/Main/Arrow.jpg" width="21" height="18" align="absmiddle" />��������<uc3:ReportFrom
                    ID="ReportFrom1" runat="server" />
                <uc2:CheckApplay ID="CheckApplay1" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table width="99%" border="0" align="center" cellpadding="0" id="searchtable" cellspacing="0"
                    bgcolor="#CCCCCC">
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC"
                                class="table">
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        ���ݱ��
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <asp:TextBox ID="txtReportNo" MaxLength="50" runat="server" CssClass="tdinput" Width="95%"></asp:TextBox>
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right" width="10%">
                                        ��������
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <asp:TextBox ID="txtSubject" MaxLength="50" runat="server" CssClass="tdinput" Width="95%"></asp:TextBox>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right" width="10%">
                                        �ֿ�
                                    </td>
                                    <td bgcolor="#FFFFFF" width="24%">
                                        <asp:DropDownList ID="hiddenStorageID" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        ������
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <input readonly onclick="alertdiv('UserExecutor,hiddenExecutor');" id="UserExecutor"
                                            class="tdinput" width="95%" />
                                        <input id="hiddenExecutor" value="0" type="hidden" runat="server" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ����
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <input id="DeptName" readonly onclick="alertdiv('DeptName,hiddenDeptID');" class="tdinput"
                                            type="text" /><input type="hidden" runat="server" id="hiddenDeptID" value="0" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ����ԭ��
                                    </td>
                                    <td width="24%" bgcolor="#FFFFFF">
                                        <asp:DropDownList ID="ddlReason" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        ��������
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <input id="BeginTime" runat="server" readonly="readonly" class="tdinput" style="width: 90px"
                                            onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('BeginTime')})" />
                                        ��
                                        <input id="EndTime" class="tdinput" runat="server" readonly="readonly" style="width: 90px"
                                            onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('EndTime')})" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ����״̬
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <select id="BillStatus" runat="server" name="D2">
                                            <option value="00">--��ѡ��--</option>
                                            <option value="1">�Ƶ�</option>
                                            <option value="2">ִ��</option>
                                            <option value="4">�ֹ��ᵥ</option>
                                            <option value="5">�Զ��ᵥ</option>
                                        </select>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ����״̬
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <select id="FlowStatus" runat="server" name="D1">
                                            <option value="00">--��ѡ��--</option>
                                            <option value="6">���ύ</option>
                                            <option value="1">������</option>
                                            <option value="2">������</option>
                                            <option value="3">����ͨ��</option>
                                            <option value="4">������ͨ��</option>
                                            <option value="5">��������</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td align="right" bgcolor="#E6E6E6">
                                    ����
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <input id="txtBatchNo" class="tdinput" runat="server" type="text" size="15" specialworkcheck="����" />
                                    </td>
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        <span id="OtherConditon" style="display:none">��������</span>
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <uc5:GetBillExAttrControl ID="GetBillExAttrControl2" runat="server" />
                                    </td>
                                     
                                      <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                      
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                      
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
                                        <img runat="server" visible="false" id="btnQuery" alt="����" src="../../../images/Button/Bottom_btn_search.jpg"
                                            style='cursor: hand;' onclick='FistSearchAdjust()' />
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
                �ճ��������б�
            </td>
        </tr>
        <tr>
            <td height="35" colspan="2" valign="top">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="28" bgcolor="#FFFFFF">
                            <a href="StorageAdjustAdd.aspx?from=list&ModuleID=2051601">
                                <img id="btnAdd" runat="server" visible="false" src="../../../images/Button/Bottom_btn_new.jpg"
                                    alt="�½��ʼ챨��" style='cursor: hand;' border="0" /></a><img id="btnDel" runat="server"
                                        visible="false" src="../../../images/Button/Main_btn_delete.jpg" alt="ɾ����������"
                                        style='cursor: hand;' border="0" onclick="Fun_Delete_Adjust();" />
                            <asp:ImageButton ImageUrl="../../../images/Button/Main_btn_out.jpg" ID="btnImport"
                                runat="server" OnClientClick="return IsOut();" OnClick="btnImport_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" id="tdResult">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" id="pageDataList1"
                    bgcolor="#999999">
                    <tbody>
                        <tr>
                            <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                ѡ��<input id="cbSelectAll" type="checkbox" onclick="SelectAllList();" />
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('AdjustNo','oAdjustNo11');return false;">
                                    ���ݱ��<span id="oAdjustNo11" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('Title','oTitle11');return false;">
                                    ��������<span id="oTitle11" class="orderTip"></span></div>
                            </th>
                            <%--<th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('BatchNo','oTitle11');return false;">
                                    ����<span id="oTitle11" class="orderTip"></span></div>
                            </th>--%>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('StorageID','oStorageID11');return false;">
                                    �ֿ�<span id="oStorageID11" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('Executor','oExecutor11');return false;">
                                    ������<span id="oExecutor11" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('DeptID','oDeptID11');return false;">
                                    ����<span id="oDeptID11" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('AdjustDate','oAdjustDate11');return false;">
                                    ����ʱ��<span id="oAdjustDate11" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('ReasonType','oReasonType11');return false;">
                                    ����ԭ��<span id="oReasonType11" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('BillStatus','oBillStatus11');return false;">
                                    ����״̬<span id="oBillStatus11" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('FlowStatus','oFlowStatus11');return false;">
                                    ����״̬<span id="oFlowStatus11" class="orderTip"></span></div>
                            </th>
                        </tr>
                    </tbody>
                </table>
                <br />
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
                                            <input runat="server" name="text" type="text" id="ShowPageCount" />
                                            �� ת����
                                            <input runat="server" name="text" type="text" id="ToPage" />
                                            ҳ
                                            <img src="../../../images/Button/Main_btn_GO.jpg" style='cursor: hand;' alt="go"
                                                align="absmiddle" onclick="ChangePageCountIndex($('#ShowPageCount').val(),$('#ToPage').val());" />
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
    <a name="pageDataList1Mark"></a><span id="Forms" class="Spantype"></span>
    </form>
</body>
</html>
