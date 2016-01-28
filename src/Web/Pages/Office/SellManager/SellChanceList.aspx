<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SellChanceList.aspx.cs" Inherits="Pages_Office_SellManager_SellChanceList" %>

<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc1" %>
<%@ Register Src="../../../UserControl/sellModuleSelectCustUC.ascx" TagName="sellModuleSelectCustUC"
    TagPrefix="uc2" %>
<%@ Register Src="../../../UserControl/CodeTypeDrpControl.ascx" TagName="CodeTypeDrpControl"
    TagPrefix="uc2" %>
<%@ Register src="../../../UserControl/GetBillExAttrControl.ascx" tagname="GetBillExAttrControl" tagprefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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

    <script src="../../../js/office/SellManager/SellChanceList.js" type="text/javascript"></script>

    <title>���ۻ����б�</title>
</head>
<body>
    <form id="form1" runat="server">
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
                                    <td width="10%" height="20" bgcolor="#E7E7E7" align="right">
                                        ������
                                    </td>
                                    <td width="25%" bgcolor="#FFFFFF">
                                        <input id="ChanceNo" type="text" specialworkcheck="������" style="width: 120px;" class="tdinput" maxlength="50" />
                                        <input type="hidden" id="hiddExpChanceNo" runat="server" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ��������
                                    </td>
                                    <td width="17%" bgcolor="#FFFFFF">
                                        <input id="Title" type="text"  specialworkcheck="��������"  style="width: 120px;" class="tdinput" maxlength="50" />
                                        <input type="hidden" id="hiddExpTitle" runat="server" />
                                    </td>
                                    <td width="11%" bgcolor="#E7E7E7" align="right">
                                        �ͻ�
                                    </td>
                                    <td width="17%" bgcolor="#FFFFFF">
                                        <input id="CustID" class="tdinput" type="text" readonly="readonly" style="width: 120px;"
                                            onclick="fnSelectCustInfo()" />
                                        <input type="hidden" id="hiddExpCustID" runat="server" />
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td bgcolor="#E7E7E7" align="right">
                                        ҵ��Ա
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <input id="UserSeller" class="tdinput" onclick="alertdiv('UserSeller,hiddSeller');"
                                            readonly="readonly" style="width: 120px;" type="text" />
                                        <input type="hidden" id="hiddExpSeller" runat="server" />
                                    </td>
                                    <td height="20" bgcolor="#E7E7E7" align="right">
                                        ��������
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <uc2:CodeTypeDrpControl ID="chanceTypeUC" runat="server" />
                                        <input type="hidden" id="hiddExpChanceType" runat="server" />
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right">
                                        ������Դ
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <uc2:CodeTypeDrpControl ID="HapSourceUC" runat="server" />
                                        <input type="hidden" id="hiddExpHapSource" runat="server" />
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right">
                                        ����ʱ��
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <input style="width: 80px;" readonly="readonly" id="FindDate" class="tdinput" type="text"
                                            onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('FindDate')})" />
                                        <input type="hidden" id="hiddExpFindDate" runat="server" />
                                        ��<input style="width: 80px;" readonly="readonly" id="FindDate1" class="tdinput" type="text"
                                            onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('FindDate1')})" />
                                        <input type="hidden" id="hiddExpFindDate1" runat="server" />
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right">
                                        ״̬
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <select style="width: 120px;margin-top:2px;margin-left:2px;" id="State" name="D1">
                                            <option value="">--��ѡ��--</option>
                                            <option value="1">����</option>
                                            <option value="2">�ɹ�</option>
                                            <option value="3">ʧ��</option>
                                            <option value="4">����</option>
                                            <option value="5">ʧЧ</option>
                                        </select>
                                        <input type="hidden" id="hiddExpState" runat="server" />
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right">
                                        �׶�
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <select style="width: 120px;margin-top:2px;margin-left:2px;" id="Phase">
                                            <option value="">--��ѡ��--</option>
                                            <option value="1">���ڹ�ͨ</option>
                                            <option value="2">��������</option>
                                            <option value="3">�������</option>
                                            <option value="4">����ָ��</option>
                                            <option value="5">��Ͷ��/����</option>
                                            <option value="6">����̸��</option>
                                            <option value="7">��ͬǩԼ</option>
                                        </select>
                                        <input type="hidden" id="hiddExpPhase" runat="server" />
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right">
                                        <span id="OtherConditon" style=" display:none">��������</span></td>
                                    <td bgcolor="#FFFFFF">
                                        <uc3:GetBillExAttrControl ID="GetBillExAttrControl1" runat="server" />
                                        <input type="hidden" id="hidEFIndex" runat="server" />
                                         <input type="hidden" id="hidEFDesc" runat="server" />
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right">
                                        &nbsp;</td>
                                    <td bgcolor="#FFFFFF">
                                        &nbsp;</td>
                                    <td bgcolor="#E7E7E7" align="right">
                                        &nbsp;</td>
                                    <td bgcolor="#FFFFFF">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
                                        <img runat="server" visible="false" alt="����" src="../../../images/Button/Bottom_btn_search.jpg"
                                            id="btnSearch" style='cursor: pointer;' onclick='TurnToPage(1)' />&nbsp;
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
                ���ۻ����б�             </td>
        </tr>
        <tr>
            <td height="35" colspan="2" valign="top">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="28" bgcolor="#FFFFFF">
                            <img runat="server" visible="false" src="../../../images/Button/Bottom_btn_new.jpg"
                                id="btnNew" alt="�½�" style='cursor: pointer;' onclick="fnNew();" />
                            <img runat="server" visible="false" src="../../../images/Button/Main_btn_delete.jpg"
                                alt="ɾ��" onclick="fnDel()" style='cursor: pointer;' id="btnDel" />
                            <asp:ImageButton ID="btnImport" ImageUrl="../../../images/Button/Main_btn_out.jpg"
                                AlternateText="����Excel" runat="server" OnClick="btnImport_Click" />
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
                            <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                ѡ��<input type="checkbox" visible="false" id="checkall" onclick="selectall()" value="checkbox" />
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('ChanceNo','oGroup');return false;">
                                    ������<span id="oGroup" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('Title','oC1');return false;">
                                    ��������<span id="oC1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('CustName','oC2');return false;">
                                    �ͻ�<span id="oC2" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('ChanceTypeName','oC3');return false;">
                                    ��������<span id="oC3" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('HapSourceName','Span1');return false;">
                                    ������Դ<span id="Span1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('EmployeeName','Span2');return false;">
                                    ҵ��Ա<span id="Span2" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('FindDate','Span3');return false;">
                                    ����ʱ��<span id="Span3" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('PhaseName','Span4');return false;">
                                    �׶�<span id="Span4" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('StateName','Span5');return false;">
                                    ״̬<span id="Span5" class="orderTip"></span></div>
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
                                            <input name="text" type="text" id="ToPage" maxlength="7" />
                                            ҳ
                                            <img src="../../../images/Button/Main_btn_GO.jpg" style='cursor: pointer;' alt="go"
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
    <uc1:Message ID="Message1" runat="server" />
    <a name="pageDataList1Mark"></a><span id="Forms" class="Spantype" name="Forms"></span>
    <input id="hiddSeller" type="hidden" />
    <uc2:sellModuleSelectCustUC ID="sellModuleSelectCustUC1" runat="server" />
    <input type="hidden" id="hiddUrl" value="" />
    <input type="hidden" id="hiddExpOrder" runat="server" />
    <input type="hidden" id="hiddExpTotal" runat="server" />
    </form>
</body>
</html>
