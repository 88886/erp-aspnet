<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProviderContactHistoryInfo.aspx.cs" Inherits="Pages_Office_PurchaseManager_ProviderContactHistoryInfo" %>

<%@ Register src="../../../UserControl/ProviderInfo.ascx" tagname="ProviderInfo" tagprefix="uc1" %>

<%@ Register src="../../../UserControl/Message.ascx" tagname="Message" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" type="text/css" href="../../../css/default.css" />

    <script src="../../../js/common/Check.js" type="text/javascript"></script>

    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>
    
    <script src="../../../js/common/Common.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript" src="../../../js/common/PageBar-1.1.1.js"></script>

    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />

    <script src="../../../js/office/PurchaseManager/ProviderContactHistoryInfo.js" type="text/javascript"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>
    
    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>
    
    <script src="../../../js/Calendar/WdatePicker.js" type="text/javascript"></script>

    <title>��Ӧ�������б�</title>
</head>
<body>
    <form id="form1" runat="server">
    <uc2:Message ID="Message1" runat="server" />
    <uc1:ProviderInfo ID="ProviderInfo1" runat="server" />
    <!-- ���۶���-->
    <!-- ���۶���-->
    <table width="95%" height="57" border="0" cellpadding="0" cellspacing="0" class="checktable"
        id="mainindex">
        <tr>
            <td valign="top">
                <img src="../../../images/Main/Line.jpg" width="122" height="7" />&nbsp;</td>
            <td rowspan="2" align="right" valign="top">
                <div id='searchClick1'>  
                    <img src="../../../images/Main/Close.jpg" style="cursor: pointer"  onclick=" oprItem('tbde','searchClick1')" /></div>
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td valign="top" class="Blue">
                <img src="../../../images/Main/Arrow.jpg" width="21" height="18" align="absmiddle" />��������&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <table width="99%" border="0" align="center" cellpadding="0" id="searchtable" cellspacing="0">
                       <tr>
                        <td bgcolor="#FFFFFF">
                            <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC" id="tbde">
                                 <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        ��Ӧ������                                     </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <asp:TextBox ID="txtCustName" MaxLength="25"  onclick ="popProviderObj.ShowProviderList('txtCustID','txtCustName','txtCustNo')" ReadOnly="true" runat="server" CssClass="tdinput" Width="95%"></asp:TextBox>
                                        <input type="hidden" id="txtCustID" runat="server" />
                                        <input type="hidden" id="txtCustNo" runat="server" />
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right" width="10%">
                                        ������
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <asp:TextBox ID="UsertxtLinkerName" onclick="alertdiv('UsertxtLinkerName,HidLinker');" runat="server"
                                             ReadOnly="true" CssClass="tdinput" Width="95%"></asp:TextBox>
                                             <input type="hidden" id="HidLinker" runat="server" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right" width="10%">
                                        ����ʱ��
                                    </td>
                                    <td bgcolor="#FFFFFF" width="24%">
                                        <asp:TextBox ID="txtStartLinkDate" runat="server" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('txtStartLinkDate')})" ReadOnly="true"  CssClass="tdinput" Width="35%"></asp:TextBox>
                                        <asp:TextBox ID="txtZhi" Text="��" ReadOnly="true" runat="server"  CssClass="tdinput" Width="10%"></asp:TextBox><asp:TextBox ID="txtEndLinkDate" runat="server" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('txtEndLinkDate')})" ReadOnly="true"  CssClass="tdinput" Width="35%"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
                                    <input type="hidden" id="hidModuleID" runat="server" />
                                    <input type="hidden" id="hidSearchCondition" name="hidSearchCondition" />
                                        <img id="btnQuery" alt="����" src="../../../images/Button/Bottom_btn_search.jpg" style='cursor: hand;'
                                            onclick='SearchProviderContactHistoryData()' visible="false" runat="server"/>
                                        <%--<img id="btnClear" alt="����" src="../../../images/Button/Bottom_btn_re.jpg" style='cursor: hand;'
                                            onclick="Fun_ClearInput()" width="52" height="23" />--%>
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
                ��Ӧ�������б�
            </td>
        </tr>
        <tr>
            <td height="35" colspan="2" valign="top">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="28" bgcolor="#FFFFFF">
                            <%--<a href="MasterProductSchedule_Add.aspx">--%>
                                <%--<img id="btnAdd" src="../../../images/Button/Bottom_btn_new.jpg" alt="����������ƻ���" style='cursor: hand;'
                                    width="51" height="25" border="0" /></a><img id="btnDel" src="../../../images/Button/Main_btn_delete.jpg"
                                        alt="ɾ���������ƻ���" style='cursor: hand;' border="0" onclick="Fun_Delete_MasterProductSchedule();" />--%>
                            <%--                                        <img src="../../../images/Button/Main_btn_submission.jpg" alt="�ύ����" />
                                        <img src="../../../images/Button/Main_btn_verification.jpg" alt="����" />
                                        <img src="../../../images/Button/Bottom_btn_confirm.jpg" alt="ȷ��" />
                                        <img src="../../../images/Button/Main_btn_Invoice.jpg" alt="�ᵥ" />
                                        <img src="../../../images/Button/Main_btn_qxjd.jpg" alt="ȡ���ᵥ" />--%>
                            <img id="btn_create"  runat="server" visible="false"   src="../../../images/Button/Bottom_btn_new.jpg" alt="�½�" style="cursor:hand;" onclick="CreateProviderContactHistory()" />
                            <img id="btn_del"  runat="server" visible="false"  src="../../../Images/Button/Main_btn_delete.jpg" alt="ɾ��" style="cursor:hand;" onclick="DelProviderContactHistory()" />
                            <asp:ImageButton ID="btnImport" ImageUrl="../../../images/Button/Main_btn_out.jpg" AlternateText="����Excel" runat="server" onclick="btnImport_Click" />
                            <%--<img id="btnPrint" src="../../../images/Button/Main_btn_print.jpg" alt="��ӡ" />--%>
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
                        <%--<tr>
                            <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                ѡ��
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('PlanNo','oPlanNo');return false;">
                                    ���ݱ��<span id="oPlanNo" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('Subject','oSubject');return false;">
                                    ��������<span id="oSubject" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('Principal','oPrincipal');return false;">
                                    ������<span id="oPrincipal" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('DeptID','oDeptID');return false;">
                                    ����<span id="oDeptID" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('CountTotal','oCountTotal');return false;">
                                    ���������ϼ�<span id="oCountTotal" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('BillStatus','oBillStatus');return false;">
                                    ����״̬<span id="oBillStatus" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('FlowStatus','oFlowStatus');return false;">
                                    ����״̬<span id="oFlowStatus" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('Confirmor','oConfirmor');return false;">
                                    ȷ����<span id="oConfirmor" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('ConfirmDate','oConfirmDate');return false;">
                                    ȷ������<span id="oConfirmDate" class="orderTip"></span></div>
                            </th>
                        </tr>--%>
                        <tr>
                            <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                ѡ��<input type="checkbox" visible="false" id="checkall" onclick="SelectAll()" value="checkbox" /></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy1('ContactNo','oContactNo');return false;">
                                ���絥���<span id="oContactNo" class="orderTip"></span></div></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy1('CustName','oCustName');return false;">
                                ��Ӧ������<span id="oCustName" class="orderTip"></span></div></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy1('CustTypeName','oCustTypeName');return false;">
                                ��Ӧ������<span id="oCustTypeName" class="orderTip"></span></div></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy1('LinkerName','oLinkerName');return false;">
                                ������<span id="oLinkerName" class="orderTip"></span></div></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy1('LinkDate','oLinkDate');return false;">
                                ����ʱ��<span id="oLinkDate" class="orderTip"></span></div></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy1('LinkManName','oLinkManName');return false;">
                                ��������<span id="oLinkManName" class="orderTip"></span></div></th>
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
                                        <div id="pageDataList1_PagerList" class="jPagerBar">
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
                <br />
            </td>
        </tr>
    </table>
    <a name="pageDataList1Mark"></a><span id="Forms" class="Spantype"></span>
    </form>
</body>
</html>
