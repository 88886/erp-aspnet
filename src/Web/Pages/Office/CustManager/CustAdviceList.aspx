<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustAdviceList.aspx.cs" Inherits="Pages_Office_CustManager_CustAdviceList" %>

<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc1" %>
<%@ Register Src="../../../UserControl/CustNameSel.ascx" TagName="CustNameSel" TagPrefix="uc2" %>
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

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>

    <script src="../../../js/office/CustManager/CustAdviceList.js" type="text/javascript"></script>

    <script>
window.onload=function()
{

    if(document.getElementById('isreturn').value!='0')
    {
        SearchCustAdviceData(document.getElementById('ToPage').value);
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
                            <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC"
                                class="table">
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        ���ݱ��
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <asp:TextBox ID="txtAdvicetNo" MaxLength="50" runat="server" CssClass="tdinput" Width="95%"></asp:TextBox>
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right" width="10%">
                                        ��������
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <asp:TextBox ID="txtTitle" MaxLength="50" runat="server" CssClass="tdinput" Width="95%"></asp:TextBox>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right" width="10%">
                                        �������ͻ�
                                    </td>
                                    <td bgcolor="#FFFFFF" width="24%">
                                        <uc2:CustNameSel ID="CustNameSel1" runat="server" />
                                        <input id="selllorderL" type="hidden" value="3" /><input id="hiddenCustIDL" type="hidden"
                                            runat="server" />
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        �Ӵ���
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <input readonly runat="server" onclick="alertdiv('UserExecutor,hiddenExecutor');"
                                            id="UserExecutor" class="tdinput" width="95%" />
                                        <input id="hiddenExecutor" value="0" type="hidden" runat="server" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ��������
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <select id="txtAdviceType" runat="server">
                                            <option value="0">--��ѡ��--</option>
                                            <option value="1">������</option>
                                            <option value="2">ϣ������</option>
                                            <option value="3">����</option>
                                        </select>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ״̬
                                    </td>
                                    <td width="24%" bgcolor="#FFFFFF">
                                        <select id="txtState" runat="server">
                                            <option value="0">--��ѡ��--</option>
                                            <option value="1">δ����</option>
                                            <option value="2">������</option>
                                            <option value="3">�Ѵ���</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        ����ʱ��
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <input id="BeginTime" runat="server" readonly="readonly" class="tdinput" style="width: 90px"
                                            onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('BeginTime')})" />
                                        ��
                                        <input id="EndTime" class="tdinput" runat="server" readonly="readonly" style="width: 90px"
                                            onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('EndTime')})" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
                                        <img runat="server" visible="false" id="btnQuery" alt="����" src="../../../images/Button/Bottom_btn_search.jpg"
                                            style='cursor: hand;' onclick='FistSearchCustAdvice()' />
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
                �ͻ������б�
            </td>
        </tr>
        <tr>
            <td height="35" colspan="2" valign="top">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="28" bgcolor="#FFFFFF">
                            <a href="CustAdviceAdd.aspx?from=list&ModuleID=2021901">
                                <img id="btnAdd" visible="false" runat="server" src="../../../images/Button/Bottom_btn_new.jpg"
                                    alt="�½��ͻ�����" style='cursor: hand;' border="0" /></a><img id="btnDel" runat="server" visible="false"
                                        src="../../../images/Button/Main_btn_delete.jpg" alt="ɾ���ͻ�����"
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
                                <div class="orderClick" onclick="OrderBy11('AdviceNo','oAdviceNo');return false;">
                                    ���ݱ��<span id="oAdviceNo" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('Title','oTitle11');return false;">
                                    ��������<span id="oTitle11" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('CustName','oCustName1');return false;">
                                    �������ͻ�<span id="oCustName1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('LinkManName','oLinkManName1');return false;">
                                    �ͻ���ϵ��<span id="oLinkManName1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('EmployeeName','oEmployeeName1');return false;">
                                    �Ӵ���<span id="oEmployeeName1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('Accept','oAccept1');return false;">
                                    ���ɳ̶�<span id="oAccept1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('AdviceDate','oAdviceDate1');return false;">
                                    ����ʱ��<span id="oAdviceDate1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('AdviceType','oAdviceType1');return false;">
                                    ��������<span id="oAdviceType1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('State','oState1');return false;">
                                    ״̬<span id="oState1" class="orderTip"></span></div>
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
