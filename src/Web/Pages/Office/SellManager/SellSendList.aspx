<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SellSendList.aspx.cs" Inherits="Pages_Office_SellManager_SellSendList" %>

<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc1" %>
<%@ Register Src="../../../UserControl/CodeTypeDrpControl.ascx" TagName="CodeTypeDrpControl"
    TagPrefix="uc2" %>
<%@ Register Src="../../../UserControl/SelectSellOrderUC.ascx" TagName="SelectSellOrderUC"
    TagPrefix="uc3" %> 
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

    <script src="../../../js/Calendar/WdatePicker.js" type="text/javascript"></script>

    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>

    <script src="../../../js/common/check.js" type="text/javascript"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <script src="../../../js/common/Common.js" type="text/javascript"></script>

    <script src="../../../js/office/SellManager/SellSendList.js" type="text/javascript"></script>

    <title>���۷������б�</title>
    <style type="text/css">
        .style1
        {
            width: 76px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc15:ProjectSelectControl ID="ProjectSelectControl1" runat="server" /><!--������Ŀ-->
    <a name="pageDataList1Mark"></a><span id="Forms" class="Spantype" name="Forms"></span>
    <input id="hiddSender" type="hidden" />
    <uc3:SelectSellOrderUC ID="SelectSellOrderUC1" runat="server" />
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
                    <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('searchtable_sellsend','searchClick')" /></div>
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
                <table width="99%" border="0" align="center" cellpadding="0" id="searchtable_sellsend" cellspacing="0"
                    bgcolor="#CCCCCC">
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC"
                                class="table">
                                <tr class="table-item">
                                    <td width="11%" height="20" bgcolor="#E7E7E7" align="right">
                                        ���������
                                    </td>
                                    <td width="22%" bgcolor="#FFFFFF">
                                        <input type="text"  specialworkcheck="�������"  class="tdinput" style="width: 90%" id="orderNo" />
                                        <input type="hidden" id="hiddExpOrderNo" runat="server" />
                                    </td>
                                    <td width="11%" bgcolor="#E7E7E7" align="right">
                                        ����������
                                    </td>
                                    <td width="22%" bgcolor="#FFFFFF">
                                        <input style="width: 90%" specialworkcheck="��������" id="Title" type="text" class="tdinput"
                                            size="15" />
                                        <input type="hidden" id="hiddExpTitle" runat="server" />
                                    </td>
                                    <td width="11%" bgcolor="#E7E7E7" align="right">
                                        ���۶���
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <input id="FromBillID" onclick="fnSelectOfferInfo()" class="tdinput" type="text"
                                            readonly="readonly" style="width: 90%;" />
                                        <input type="hidden" id="hiddExpFromBillID" runat="server" />
                                    </td>
                                </tr>
                                <tr class="table-item">
                                  
                                    <td bgcolor="#E7E7E7" align="right">
                                        �ջ���
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <input id="Receiver" specialworkcheck="�ջ���" class="tdinput" type="text" style="width: 90%;" />
                                        <input type="hidden" id="hiddExpReceiver" runat="server" />
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right">
                                        ������
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <input id="UserSender" readonly="readonly" style="width: 90%;" class="tdinput" type="text"
                                            onclick="alertdiv('UserSender,hiddSender');" />
                                        <input type="hidden" id="hiddExpSender" runat="server" />
                                    </td>
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
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right">
                                        ҵ��Ա
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                       <input id="UserSeller" class="tdinput" onclick="fnSelectSeller()" readonly="readonly"
                                            style="width: 90%;" type="text"  runat="server" />
                                        <input type="hidden" id="hiddSeller" runat="server" />
                                        <input type="hidden" id="hiddExpSeller" runat="server" />
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right">
                                        ������ʽ
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <uc2:CodeTypeDrpControl ID="TakeType" runat="server" />
                                        <input type="hidden" id="hiddExpTakeType" runat="server" />
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
                                    <td bgcolor="#E7E7E7" align="right">
                                        &nbsp;
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
                                        <uc1:Message ID="Message1" runat="server" />
                                        <img runat="server" visible="false" alt="����" src="../../../images/Button/Bottom_btn_search.jpg"
                                            style='cursor: pointer;' id="btnSearch" onclick='TurnToPage(1)' />&nbsp;
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
                ���۷������б�
            </td>
        </tr>
        <tr>
            <td height="35" colspan="2" valign="top">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="28" bgcolor="#FFFFFF">
                            <img runat="server" visible="false" src="../../../images/Button/Bottom_btn_new.jpg"
                                id="btnNew" alt="�½�" style='cursor: pointer;' onclick="fnNew()" />
                            <img runat="server" visible="false" src="../../../images/Button/Main_btn_delete.jpg"
                                alt="ɾ��" onclick="fnDel()" style='cursor: pointer;' id="btnDel" />&nbsp;
                            <asp:ImageButton ID="btnImport" ImageUrl="../../../images/Button/Main_btn_out.jpg"
                                AlternateText="����Excel" runat="server" OnClick="btnImport_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" id="pageDataListSSendL"
                    bgcolor="#999999">
                    <tbody>
                        <tr>
                            <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                ѡ��<input type="checkbox" visible="false" id="checkall" onclick="selectall()" value="checkbox" />
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('SendNo','oGroup');return false;">
                                    ���������<span id="oGroup" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('Title','oC1');return false;">
                                    ����������<span id="oC1" class="orderTip"></span></div>
                            </th>
                          
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('OrderNo','Span1');return false;">
                                    ���۶���<span id="Span1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('CustName','Span2');return false;">
                                    �ͻ�<span id="Span2" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('SellerName','SellerNameTip');return false;">
                                    ҵ��Ա<span id="SellerNameTip" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('Receiver','Span3');return false;">
                                    ������<span id="Span3" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('SenderName','Span4');return false;">
                                    �ջ���<span id="Span4" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                class="style1">
                                <div class="orderClick" onclick="OrderBy('TypeName','oC4');return false;">
                                    ������ʽ<span id="oC4" class="orderTip"></span></div>
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
                                            &nbsp;<input name="text" type="text" id="Text2" style="display: none" />
                                            <span id="pageDataList1_Total"></span>ÿҳ��ʾ
                                            <input name="text" type="text" id="ShowPageCount" maxlength="4" />
                                            �� ת����
                                            <input name="text" type="text" id="ToPage" maxlength="8" />
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
