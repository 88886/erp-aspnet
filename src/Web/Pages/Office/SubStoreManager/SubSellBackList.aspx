<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SubSellBackList.aspx.cs"
    Inherits="Pages_Office_SubStoreManager_SubSellBackList" %>

<%@ Register Src="../../../UserControl/SubSellOrderSelect.ascx" TagName="SubSellOrderSelect"
    TagPrefix="uc1" %>
<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc2" %>
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

    <script src="../../../js/office/SubStoreManager/SubSellBackList.js" type="text/javascript"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>

    <title>�����˻����б�</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="divSBackShadow" style="display: none">
        <iframe src="../../../Pages/Common/MaskPage.aspx" id="SBackShadowIframe" frameborder="0"
            width="100%"></iframe>
    </div>
    <uc1:SubSellOrderSelect ID="SubSellOrderSelect1" runat="server" />
    <uc2:Message ID="Message1" runat="server" />
    <!-- ���۶���-->
    <!-- ���۶���-->
    <table width="95%" height="57" border="0" cellpadding="0" cellspacing="0" class="checktable"
        id="mainindex">
        <tr>
            <td valign="top">
                <img src="../../../images/Main/Line.jpg" width="122" height="7" />
            </td>
            <td rowspan="2" align="right" valign="top">
                <div id='divSearch'>
                    <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('tblSearch','divSearch')" /></div>
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
                <table width="99%" border="0" align="center" cellpadding="0" id="tblSearch" cellspacing="0"
                    bgcolor="#CCCCCC">
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC"
                                class="table">
                                <tr>
                                    <td height="20" align="right" class="tdColTitle" width="10%">
                                        ���ݱ��
                                    </td>
                                    <td height="20" class="tdColInput" width="23%">
                                        <asp:TextBox ID="txtBackNo" MaxLength="25" runat="server" CssClass="tdinput" Width="95%"
                                            SpecialWorkCheck="���ݱ��"></asp:TextBox>
                                    </td>
                                    <td height="20" align="right" class="tdColTitle" width="10%">
                                        ��������
                                    </td>
                                    <td height="20" class="tdColInput" width="23%">
                                        <asp:TextBox ID="txtTitle" MaxLength="25" runat="server" CssClass="tdinput" Width="95%"
                                            SpecialWorkCheck="��������"></asp:TextBox>
                                    </td>
                                    <td height="20" align="right" class="tdColTitle" width="10%">
                                        ��Ӧ���۶���
                                    </td>
                                    <td height="20" class="tdColInput" width="24%">
                                        <asp:TextBox ID="txtOrderID" MaxLength="25" runat="server" onclick="popSubSellOrder.ShowList('',0,0)"
                                            ReadOnly="true" CssClass="tdinput" Width="95%"></asp:TextBox>
                                        <input type="hidden" id="HidOrderID" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="20" align="right" class="tdColTitle">
                                        �ͻ�����
                                    </td>
                                    <td height="20" class="tdColInput">
                                        <asp:TextBox ID="txtCustName" runat="server" MaxLength="100" CssClass="tdinput" Width="95%"
                                            SpecialWorkCheck="�ͻ�����"></asp:TextBox>
                                    </td>
                                    <td height="20" align="right" class="tdColTitle">
                                        �ͻ���ϵ�绰
                                    </td>
                                    <td height="20" class="tdColInput">
                                        <asp:TextBox ID="txtCustTel" runat="server" MaxLength="50" CssClass="tdinput" Width="95%"
                                            SpecialWorkCheck="�ͻ���ϵ�绰"></asp:TextBox>
                                    </td>
                                    <td height="20" align="right" class="tdColTitle">
                                        ���۷ֵ�
                                    </td>
                                    <td height="20" class="tdColInput">
                                        <asp:TextBox ID="DeptDeptID" onclick="alertdiv('DeptDeptID,HidDeptID');" runat="server"
                                            ReadOnly="true" CssClass="tdinput" Width="95%" disabled="disabled"></asp:TextBox>
                                        <input type="hidden" id="HidDeptID" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="20" align="right" class="tdColTitle">
                                        �˻�������
                                    </td>
                                    <td height="20" class="tdColInput">
                                        <asp:TextBox ID="UserSeller" runat="server" onclick="alertdiv('UserSeller,HidSeller');"
                                            ReadOnly="true" CssClass="tdinput" Width="95%"></asp:TextBox>
                                        <input type="hidden" id="HidSeller" runat="server" />
                                    </td>
                                    <td height="20" align="right" class="tdColTitle">
                                        ҵ��״̬
                                    </td>
                                    <td height="20" class="tdColInput">
                                        <select name="drpBusiStatus" class="tdinput" id="drpBusiStatus" runat="server">
                                            <option value="">--��ѡ��--</option>
                                            <option value="1">�˵�</option>
                                            <option value="2">���</option>
                                            <option value="3">����</option>
                                            <option value="4">���</option>
                                        </select>
                                    </td>
                                    <td height="20" align="right" class="tdColTitle">
                                        ����״̬
                                    </td>
                                    <td height="20" class="tdColInput">
                                        <select id="ddlBillStatus" name="ddlBillStatus" runat="server">
                                            <option value="">--��ѡ��--</option>
                                            <option value="1">�Ƶ�</option>
                                            <option value="2">ִ��</option>
                                            <option value="5">�Զ��ᵥ</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="20" align="right" class="tdColTitle">
                                        �ͻ���ַ
                                    </td>
                                    <td height="20" class="tdColInput">
                                        <asp:TextBox ID="txtCustAddr" MaxLength="100" runat="server" CssClass="tdinput" Width="95%"
                                            SpecialWorkCheck="�ͻ���ַ"></asp:TextBox>
                                    </td>
                                    <td height="20" align="right" class="tdColTitle">
                                        <span id="OtherConditon" style="display: none">��������</span>
                                    </td>
                                    <td height="20" class="tdColInput">
                                        <uc3:GetBillExAttrControl ID="GetBillExAttrControl1" runat="server" />
                                    </td>
                                    <td height="20" align="right" class="tdColTitle">
                                    </td>
                                    <td height="20" class="tdColInput">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
                                        <input type="hidden" id="hidModuleID" runat="server" />
                                        <input type="hidden" id="hidSearchCondition" name="hidSearchCondition" />
                                        <img id="btnQuery" alt="����" src="../../../images/Button/Bottom_btn_search.jpg" style='cursor: hand;'
                                            onclick='SearchSubSellBack()' visible="false" runat="server" />
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
                �����˻����б�
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
                            <img runat="server" visible="false" id="btn_create" src="../../../images/Button/Bottom_btn_new.jpg"
                                alt="�½�" style="cursor: hand;" onclick="CreateSubSellBack()" />
                            <img runat="server" visible="false" id="btn_del" src="../../../Images/Button/Main_btn_delete.jpg"
                                alt="ɾ��" style="cursor: hand;" onclick="DelSubSellBack()" />
                            <asp:ImageButton OnClientClick="return IsOut();" ID="btnImport" ImageUrl="../../../images/Button/Main_btn_out.jpg"
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
                                <div class="orderClick" onclick="OrderBy('BackNo','oBackNo');return false;">
                                    ���ݱ��<span id="oBackNo" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('Title','oTitle');return false;">
                                    ��������<span id="oTitle" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('OrderNo','OrderNo');return false;">
                                    ��Ӧ���۶���<span id="OrderNo" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('CustName','oCustName');return false;">
                                    �ͻ�����<span id="oCustName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('CustTel','oCustTel');return false;">
                                    �ͻ���ϵ�绰<span id="oCustTel" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('CustAddr','oCustAddr');return false;">
                                    �ͻ���ַ<span id="oCustAddr" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('DeptName','oDeptName');return false;">
                                    ���۷ֵ�<span id="oDeptName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('SellerName','oSellerName');return false;">
                                    �˻�������<span id="oSellerName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('BillStatusSSS','oBillStatusSSS');return false;">
                                    ����״̬<span id="oBillStatusSSS" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('BusiStatus','oBusiStatus');return false;">
                                    ҵ��״̬<span id="oBusiStatus" class="orderTip"></span></div>
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
    <input type="hidden" id="SearchCondition" />
    </form>
</body>
</html>
