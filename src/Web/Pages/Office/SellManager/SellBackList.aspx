<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SellBackList.aspx.cs" Inherits="Pages_Office_SellManager_SellBackList" %>

<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc1" %>
<%@ Register Src="../../../UserControl/CodeTypeDrpControl.ascx" TagName="CodeTypeDrpControl"
    TagPrefix="uc2" %>
<%@ Register Src="../../../UserControl/SelectSellSendUC.ascx" TagName="SelectSellSendUC"
    TagPrefix="uc3" %>
<%@ Register Src="../../../UserControl/sellModuleSelectCustUC.ascx" TagName="sellModuleSelectCustUC"
    TagPrefix="uc4" %>
<%@ Register src="../../../UserControl/GetBillExAttrControl.ascx" tagname="GetBillExAttrControl" tagprefix="uc6" %>
<%@ Register Src="../../../UserControl/Common/ProjectSelectControl.ascx" TagName="ProjectSelectControl" TagPrefix="uc15" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" type="text/css" href="../../../css/default.css" />
    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />

    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript" src="../../../js/common/PageBar-1.1.1.js"></script>

    <script src="../../../js/JQuery/formValidator.js" type="text/javascript"></script>

    <script src="../../../js/JQuery/formValidatorRegex.js" type="text/javascript"></script>

    <script src="../../../js/common/UploadFile.js" type="text/javascript"></script>

    <script src="../../../js/Calendar/WdatePicker.js" type="text/javascript"></script>

    <script src="../../../js/common/check.js" type="text/javascript"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>

    <script src="../../../js/common/Common.js" type="text/javascript"> </script>

    <script src="../../../js/common/Flow.js" type="text/javascript"></script>

    <script src="../../../js/office/SellManager/SellBackList.js" type="text/javascript"></script>

    <title>�����˻����б�</title>
</head>
<body>
    <form id="form1" runat="server">
    <uc15:ProjectSelectControl ID="ProjectSelectControl1" runat="server" /><!--������Ŀ-->
    <input id="hiddSender" type="hidden" />
    <a name="pageDataList1Mark"></a><span id="Forms" class="Spantype" name="Forms"></span>
    <uc3:SelectSellSendUC ID="SelectSellSendUC1" runat="server" />
    <uc4:sellModuleSelectCustUC ID="sellModuleSelectCustUC1" runat="server" />
    <input id="hiddUrl" type="hidden" value="" />
    <input type="hidden" id="hiddExpOrder" runat="server" />
    <input type="hidden" id="hiddExpTotal" runat="server" />
    <script type="text/javascript">
        var precisionLength=<%=SelPoint %>;//С������
    </script>
    
    <table width="95%" height="57" border="0" cellpadding="0" cellspacing="0" class="checktable"
        id="mainindex">
        <tr>
            <td valign="top">
                <img src="../../../images/Main/Line.jpg" width="122" height="7" />
            </td>
            <td rowspan="2" align="right" valign="top">
                <div id='searchClick'>
                    <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('searchtable_sellback','searchClick')" /></div>
                
            </td>
        </tr>
        <tr>
            <td valign="top" class="Blue">
                <img src="../../../images/Main/Arrow.jpg" width="21" height="18" align="absmiddle" />��������
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table width="99%" border="0" align="center" cellpadding="0" id="searchtable_sellback" cellspacing="0"
                    bgcolor="#CCCCCC">
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC"
                                class="table">
                                <tr class="table-item">
                                    <td width="10%" height="20" bgcolor="#E7E7E7" align="right">
                                        ���ݵ���
                                    </td>
                                    <td width="20%" bgcolor="#FFFFFF">
                                        <input type="text" specialworkcheck="���ݵ���" class="tdinput" style="width: 120px;" id="orderNo" />
                                          <input type="hidden" id="hiddExpOrderNo" runat="server" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ����
                                    </td>
                                    <td width="30%" bgcolor="#FFFFFF">
                                        <input id="Title" type="text"  specialworkcheck="����"  style="width: 95%;" class="tdinput" maxlength="50" />
                                          <input type="hidden" id="hiddExpTitle" runat="server" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        �˻�ԭ��
                                    </td>
                                    <td width="20%" bgcolor="#FFFFFF">
                                        <asp:DropDownList runat="server" name="ddlReasonType" ID="ddlReasonType" Width="120px">
                                        </asp:DropDownList>
                                         <input type="hidden" id="hiddExpReasonType" runat="server" />
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right">
                                        ҵ��Ա
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <input id="UserSeller" class="tdinput" onclick="fnSelectSeller()" readonly="readonly"
                                            style="width: 120px;" type="text" />
                                        <input id="hiddSeller" type="hidden" />
                                         <input type="hidden" id="hiddExpSeller" runat="server" />
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right">
                                        �ͻ�
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <input id="CustID" class="tdinput" type="text" readonly="readonly" style="width: 120px;"
                                            onclick="fnSelectCustInfo()" />
                                            <input type="hidden" id="hiddExpCustID" runat="server" />
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right">
                                        ����״̬
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <select name="BillStatus"  style="width: 120px;margin-top:2px;margin-left:2px;" id="BillStatus">
                                            <option value="" selected="selected">--��ѡ��--</option>
                                            <option value="1">�Ƶ�</option>
                                            <option value="2">ִ��</option>
                                            <option value="4">�ֹ��ᵥ</option>
                                            <option value="5">�Զ��ᵥ</option>
                                        </select>
                                         <input type="hidden" id="hiddExpBillStatus" runat="server" />
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right">
                                        ����״̬
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <select name="FlowStatus"  style="width: 120px;margin-top:2px;margin-left:2px;" id="FlowStatus">
                                            <option value="" selected="selected">--��ѡ��--</option>
                                            <option value="0">���ύ</option>
                                            <option value="1">������</option>
                                            <option value="2">������</option>
                                            <option value="3">����ͨ��</option>
                                            <option value="4">������ͨ��</option>
                                            <option value="5">��������</option>
                                        </select>
                                        <input type="hidden" id="hiddExpFlowStatus" runat="server" />
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right">
                                        �˻�����
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <input style="width: 80px;" readonly="readonly" id="OfferDate" class="tdinput" type="text"
                                            onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('OfferDate')})" />
                                             <input type="hidden" id="hiddExpOfferDate" runat="server" />
                                            
                                        ��
                                        <input style="width: 80px;" readonly="readonly" id="OfferDate1" class="tdinput" type="text"
                                            onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('OfferDate1')})" />
                                             <input type="hidden" id="hiddExpOfferDate1" runat="server" />
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right">
                                        Դ������
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <select name="FromType"  style="width: 120px;margin-top:2px;margin-left:2px;" id="FromType">
                                            <option value="" selected="selected">--��ѡ��--</option>
                                            <option value="0">����Դ</option>
                                            <option value="1">���۷�����</option>
                                        </select>
                                         <input type="hidden" id="hiddExpFromType" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" bgcolor="#E6E6E6">
                                        ������Ŀ
                                    </td>
                                    <td align="left" bgcolor="#FFFFFF">
                                        <input id="ProjectID" class="tdinput" type="text" style="width:60%" readonly="readonly" onclick="ShowProjectInfo('ProjectID','hiddProjectID');"/>
                                        <%--<a href="#" onclick="fnClearProject();">���ѡ��</a>--%>
                                        <input id="hiddProjectID" type="hidden" runat="server" />
                                    </td>
                                    <td align="right" bgcolor="#E6E6E6">
                                        <span id="OtherConditon" style="display:none">��������</span>
                                   </td>
                                   <td bgcolor="#FFFFFF">
                                        <uc6:GetBillExAttrControl ID="GetBillExAttrControl1" runat="server" />
                                   </td>
                                   <td align="right" bgcolor="#E6E6E6">
                                   </td>
                                   <td bgcolor="#FFFFFF">
                                   </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
                                        <uc1:Message ID="Message1" runat="server" />
                                        <img  runat="server" visible="false"  alt="����" src="../../../images/Button/Bottom_btn_search.jpg" style='cursor: pointer;'
                                           id="btnSearch" onclick='TurnToPage(1)' />
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
                            <img   runat="server" visible="false" src="../../../images/Button/Bottom_btn_new.jpg" id="btnNew" alt="�½�" style='cursor: pointer;'
                                onclick="fnNew()" />
                            <img runat="server"  visible="false" src="../../../images/Button/Main_btn_delete.jpg" alt="ɾ��" onclick="fnDel()"
                                style='cursor: pointer;' id="btnDel" />
                            <asp:ImageButton ID="btnImport" ImageUrl="../../../images/Button/Main_btn_out.jpg"
                                AlternateText="����Excel"  runat="server" OnClick="btnImport_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" id="pageDataListSBackL"
                    bgcolor="#999999">
                    <tbody>
                        <tr>
                            <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                ѡ��<input type="checkbox" visible="false" id="checkall" onclick="selectall()" value="checkbox" />
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('BackNo','oGroup');return false;">
                                    ���ݱ��<span id="oGroup" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('Title','oC1');return false;">
                                    ����<span id="oC1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('FromTypeText','Span1');return false;">
                                    Դ������<span id="Span1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('CustName','oC5');return false;">
                                    �ͻ�<span id="oC5" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('EmployeeName','oC6');return false;">
                                    ҵ��Ա<span id="oC6" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('BackDate','oC7');return false;">
                                    �˻�����<span id="oC7" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('TotalPrice','oC4');return false;">
                                    �ܽ��<span id="oC4" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('BillStatusText','oC8');return false;">
                                    ����״̬<span id="oC8" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('FlowInstanceText','oC9');return false;">
                                    ����״̬<span id="oC9" class="orderTip"></span></div>
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
                                        <div id="pageSellOffcount">
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
                                            <input name="text" type="text" id="ShowPageCount" maxlength="4" />
                                            �� ת����
                                            <input name="text" type="text" id="ToPage" maxlength="7" />
                                            ҳ
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
    
    </form>
</body>
</html>
