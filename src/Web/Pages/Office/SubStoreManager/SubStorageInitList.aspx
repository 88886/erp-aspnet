<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SubStorageInitList.aspx.cs"
    Inherits="Pages_Office_SubStoreManager_SubStorageInitList" %>

<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc1" %>
<%@ Register Src="../../../UserControl/ProductInfoControl.ascx" TagName="ProductInfoControl"
    TagPrefix="uc2" %>
<%@ Register Src="../../../UserControl/GetBillExAttrControl.ascx" TagName="GetBillExAttrControl"
    TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" type="text/css" href="../../../css/default.css" />

    <script src="../../../js/common/Check.js" type="text/javascript"></script>

    <script src="../../../js/common/Common.js" type="text/javascript"></script>

    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript" src="../../../js/common/PageBar-1.1.1.js"></script>

    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />

    <script src="../../../js/office/SubStoreManager/SubStorageInitList.js" type="text/javascript"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>

    <title>�ֵ��ڳ�����б�</title>
</head>
<body>
    <form id="form1" runat="server">
    <input type="hidden" id="hidSelPoint" runat="server" />
    <uc1:Message ID="Message1" runat="server" />
    <uc2:ProductInfoControl ID="ProductInfoControl1" runat="server" />
    <!-- ���۶���-->
    <!-- ���۶���-->
    <a name="pageDataList1Mark"></a><span id="Forms" class="Spantype"></span>
    <table width="95%" height="57" border="0" cellpadding="0" cellspacing="0" class="checktable"
        id="mainindex">
        <tr>
            <td valign="top">
                <img src="../../../images/Main/Line.jpg" width="122" height="7" />
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
                                        ��Ʒ���
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <asp:TextBox ID="txtProductNo" MaxLength="50" runat="server" CssClass="tdinput" Width="95%"
                                            onclick="popTechObj.ShowList('','txtProductNo','HidProductID');" ReadOnly="true"></asp:TextBox>
                                        <input type="hidden" id="HidProductID" runat="server" />
                                        <input type="hidden" id="HidDeptID" runat="server" />
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right" width="10%">
                                        ��Ʒ����
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <asp:TextBox ID="txtProductName" runat="server" MaxLength="25" CssClass="tdinput"
                                            Width="95%" SpecialWorkCheck="��Ʒ����"></asp:TextBox>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right" width="10%">
                                        ����
                                    </td>
                                    <td bgcolor="#FFFFFF" width="24%">
                                        <input id="txtBatchNo" type="text" runat="server" class="tdinput" specialworkcheck="����" />
                                    </td>
                                </tr>
                                <tr class="table-item" id="TROtherConditon">
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        <span id="OtherConditon" style="display: none">��������</span>
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <uc3:GetBillExAttrControl ID="GetBillExAttrControl1" runat="server" />
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right" width="10%">
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right" width="10%">
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6" align="center" bgcolor="#FFFFFF">
                            <input type="hidden" id="hidModuleID" runat="server" />
                            <input type="hidden" id="hidSearchCondition" name="hidSearchCondition" />
                            <img id="btnQuery" alt="����" src="../../../images/Button/Bottom_btn_search.jpg" style='cursor: hand;'
                                onclick='SearchSubStorageInList()' runat="server" visible="false" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </td> </tr> </table>
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
                �ֵ��ڳ�����б�
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
                            <%--<img id="btn_create"  src="../../../images/Button/Bottom_btn_new.jpg" alt="�½�" style='cursor:hand;'onclick="CreatePurchaseReject()"/>--%>
                            <img runat="server" visible="false" id="btn_create" src="../../../images/Button/Bottom_btn_new.jpg"
                                alt="�½�" style="cursor: hand;" onclick="CreateSubStorageInit()" />
                            <img id="btn_del" src="../../../Images/Button/Main_btn_delete.jpg" alt="ɾ��" style='cursor: hand;'
                                onclick="DelSubStorageIn()" runat="server" visible="false" />
                            <asp:ImageButton ID="btnImport" OnClientClick="return IsOut();" ImageUrl="../../../images/Button/Main_btn_out.jpg"
                                AlternateText="����Excel" runat="server" OnClick="btnImport_Click" />
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
                        <tr>
                            <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                ѡ��<input type="checkbox" visible="false" id="checkall" onclick="SelectAll()" value="checkbox" />
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('DeptName','oDeptName');return false;">
                                    �ֵ�����<span id="oDeptName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('InNo','oInNo');return false;">
                                    ��ⵥ���<span id="oInNo" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('Title','oTitle');return false;">
                                    ��ⵥ����<span id="oTitle" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('CountTotal','oCountTotal');return false;">
                                    �������<span id="oCountTotal" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('ConfirmorName','oConfirmorName');return false;">
                                    ȷ����<span id="oConfirmorName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('ConfirmDate','oConfirmDate');return false;">
                                    ȷ��ʱ��<span id="oConfirmDate" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('BillStatusName','oBillStatusName');return false;">
                                    ����״̬<span id="oBillStatusName" class="orderTip"></span></div>
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
                                        <div id="pageDataList1_PagerList" class="jPagerBar">
                                        </div>
                                    </td>
                                    <td height="28" align="right">
                                        <div id="divpage">
                                            <input name="text" type="text" id="Text2" style="display: none" />
                                            <span id="pageDataList1_Total"></span>ÿҳ��ʾ
                                            <input name="text" type="text" id="ShowPageCount" onkeydown="if(!((event.keyCode>=48 && event.keyCode<=57) || (event.keyCode>=96 && event.keyCode<=105) || (event.keyCode=8) || (event.keyCode=16)))event.returnValue=false;" />
                                            �� ת����
                                            <input name="text" type="text" id="ToPage" onkeydown="if(!((event.keyCode>=48 && event.keyCode<=57) || (event.keyCode>=96 && event.keyCode<=105) || (event.keyCode=8) || (event.keyCode=16)))event.returnValue=false;" />
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
    </form>
</body>
</html>
