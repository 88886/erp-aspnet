<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PurchaseRejectInfo.aspx.cs"
    Inherits="Pages_Office_PurchaseManager_PurchaseRejectInfo" %>

<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc1" %>
<%@ Register Src="../../../UserControl/ProviderSelect.ascx" TagName="ProviderSelect"
    TagPrefix="uc2" %>
<%@ Register Src="../../../UserControl/GetBillExAttrControl.ascx" TagName="GetBillExAttrControl"
    TagPrefix="uc3" %>
<%@ Register Src="../../../UserControl/Common/ProjectSelectControl.ascx" TagName="ProjectSelectControl"
    TagPrefix="uc4" %>
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

    <script src="../../../js/office/PurchaseManager/PurchaseRejectInfo.js" type="text/javascript"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>

    <script type="text/javascript">
    var selPoint = <%= SelPoint %>;// С��λ��
    </script>

    <title>�ɹ��˻����б�</title>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Message ID="Message1" runat="server" />
    <uc2:ProviderSelect ID="ProviderSelect1" runat="server" />
    <!-- ���۶���-->
    <!-- ���۶���-->
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
                                        <asp:TextBox ID="txtArriveNo" MaxLength="50" runat="server" CssClass="tdinput" Width="95%"
                                            SpecialWorkCheck="���ݱ��"></asp:TextBox>
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right" width="10%">
                                        ��������
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <asp:TextBox ID="txtTitle" MaxLength="50" runat="server" CssClass="tdinput" Width="95%"
                                            SpecialWorkCheck="��������"></asp:TextBox>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right" width="10%">
                                        �ɹ����
                                    </td>
                                    <td bgcolor="#FFFFFF" width="24%">
                                        <select name="drpTypeID" class="tdinput" runat="server" id="drpTypeID">
                                        </select>
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        �ɹ�Ա
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <asp:TextBox ID="UserPurchaser" runat="server" onclick="alertdiv('UserPurchaser,HidPurchaser');"
                                            ReadOnly="true" CssClass="tdinput" Width="95%"></asp:TextBox>
                                        <input type="hidden" id="HidPurchaser" runat="server" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        Դ������
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <select name="ddlFromType" class="tdinput" width="119px" id="ddlFromType" runat="server">
                                            <option value="" selected="selected">--��ѡ��--</option>
                                            <option value="0">����Դ</option>
                                            <option value="1">�ɹ�������</option>
                                        </select>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ��Ӧ��
                                    </td>
                                    <td width="24%" bgcolor="#FFFFFF">
                                        <asp:TextBox ID="txtProviderID" runat="server" CssClass="tdinput" Width="95%" onclick="popProviderObj.ShowList()"
                                            ReadOnly></asp:TextBox>
                                        <%--<input name="txtProviderID" id="txtProviderID"  class="tdinput"  type="text"  Width="95%" onclick ="popProviderObj.ShowList()"  Readonly="Readonly"/>--%>
                                        <%--<asp:HiddenField  ID="txtHidProviderID" runat="server"  />--%>
                                        <input type="hidden" id="txtHidProviderID" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10%" height="20" bgcolor="#E7E7E7" align="right">
                                        ����״̬
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <select id="ddlBillStatus" name="ddlBillStatus" runat="server">
                                            <option value="">--��ѡ��--</option>
                                            <option value="1">�Ƶ�</option>
                                            <option value="2">ִ��</option>
                                            <option value="4">�ֹ��ᵥ</option>
                                            <option value="5">�Զ��ᵥ</option>
                                        </select>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ����״̬
                                        <!-- 0�����ύ 1�������� 2�������� 3������ͨ�� 4��������ͨ�� -->
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <select id="ddlUsedStatus" name="ddlUsedStatus" runat="server">
                                            <option value="">--��ѡ��--</option>
                                            <option value="-1">���ύ</option>
                                            <option value="1">������</option>
                                            <option value="2">������</option>
                                            <option value="3">����ͨ��</option>
                                            <option value="4">������ͨ��</option>
                                            <option value="5">��������</option>
                                        </select>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ����
                                    </td>
                                    <td width="24%" bgcolor="#FFFFFF">
                                        <asp:TextBox ID="DeptDeptID" onclick="alertdiv('DeptDeptID,HidDeptID');" runat="server"
                                            ReadOnly="true" CssClass="tdinput" Width="95%"></asp:TextBox>
                                        <input type="hidden" id="HidDeptID" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ������Ŀ
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <!-- ��Ŀ�ؼ�-->
                                        <asp:TextBox ID="txtProject" runat="server" onclick="ShowProjectInfo('txtProject','hidProjectID');"
                                            ReadOnly="true" CssClass="tdinput" Width="95%"></asp:TextBox>
                                        <input type="hidden" id="hidProjectID" runat="server" />
                                        <uc4:ProjectSelectControl ID="ProjectSelectControl1" runat="server" />
                                    </td>
                                    <td width="10%" height="20" bgcolor="#E7E7E7" align="right">
                                        <span id="OtherConditon" style="display: none">��������</span>
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <uc3:GetBillExAttrControl ID="GetBillExAttrControl1" runat="server" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                    </td>
                                    <td width="24%" bgcolor="#FFFFFF">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
                                        <input type="hidden" id="hidModuleID" runat="server" />
                                        <input type="hidden" id="hidSearchCondition" name="hidSearchCondition" />
                                        <img id="btnQuery" alt="����" src="../../../images/Button/Bottom_btn_search.jpg" style='cursor: hand;'
                                            onclick='SearchArriveData()' visible="false" runat="server" />
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
                �ɹ��˻����б�
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
                            <img runat="server" id="btn_create" src="../../../images/Button/Bottom_btn_new.jpg"
                                alt="�½�" style='cursor: hand;' onclick="CreatePurchaseReject()" visible="false" />
                            <img runat="server" id="btn_del" src="../../../Images/Button/Main_btn_delete.jpg"
                                alt="ɾ��" style='cursor: hand;' onclick="DelArrive()" visible="false" />
                            <asp:ImageButton ID="btnImport" ImageUrl="../../../images/Button/Main_btn_out.jpg"
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
                                ѡ��<input type="checkbox" visible="false" id="checkall" onclick="SelectAll()"
                                    value="checkbox" />
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('RejectNo','oRejectNo');return false;">
                                    ���ݱ��<span id="oRejectNo" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('Title','oTitle');return false;">
                                    ��������<span id="oTitle" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('TypeName','oTypeName');return false;">
                                    �ɹ�����<span id="oTypeName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('PurchaserName','oPurchaserName');return false;">
                                    �ɹ�Ա<span id="oPurchaserName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('ProviderName','oProviderName');return false;">
                                    ��Ӧ��<span id="oProviderName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('FromType','oFromType');return false;">
                                    Դ������<span id="oFromType" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('TotalYthkhj','oTotalYthkhj');return false;">
                                    Ӧ�˻���ϼ�<span id="oTotalYthkhj" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('BillStatus','oBillStatus');return false;">
                                    ����״̬<span id="oBillStatus" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('UsedStatus','oUsedStatus');return false;">
                                    ����״̬<span id="oUsedStatus" class="orderTip"></span></div>
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
    </form>
</body>
</html>
