<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StorageProductAlarm.aspx.cs"
    Inherits="Pages_Office_StorageManager_StorageProductAlarm" %>

<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc1" %>
<%@ Register Src="../../../UserControl/ProductInfoControl.ascx" TagName="ProductInfoControl"
    TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" type="text/css" href="../../../css/default.css" />

    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript" src="../../../js/common/PageBar-1.1.1.js"></script>

    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />

    <script src="../../../js/office/StorageManager/StorageProductAlarm.js" type="text/javascript"></script>

    <script src="../../../js/common/check.js" type="text/javascript"></script>

    <script src="../../../js/Calendar/WdatePicker.js" type="text/javascript"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <script src="../../../js/common/common.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript">
    function ClearPkroductInfo() {
        document.getElementById("txtProductNo").value = "";
        document.getElementById("txtProductName").value = "";
        closeProductdiv();
    }
</script>
    <title>���п���ѯ</title>
    
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
                    <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('searchtable1','searchClick')" /></div>
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
                <table width="99%" border="0" align="center" cellpadding="0" id="searchtable1" cellspacing="0"
                    bgcolor="#CCCCCC">
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC">
                                <tr>
                                    <td width="10%" height="20" bgcolor="#E7E7E7" align="right">
                                        ��������
                                    </td>
                                    <td width="20%" bgcolor="#FFFFFF">
                                        <select id="sltAlarmType" runat="server">
                                            <option value="0">ȫ��</option>
                                            <option value="1">�����������</option>
                                            <option value="2">���ڿ������</option>
                                        </select>
                                    </td>
                                    <td height="20" align="right" bgcolor="#E6E6E6" width="10%">
                                        ��Ʒ���
                                    </td>
                                    <td height="20" bgcolor="#FFFFFF" width="25%">
                                        <input name="txtProductNo" id="txtProductNo" type="text" class="tdinput" readonly="readonly"
                                            size="19" onclick="popTechObj.ShowList('a','txtProductNo')" style="width: 95%"
                                            runat="server" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ��Ʒ����
                                    </td>
                                    <td width="25%" bgcolor="#FFFFFF">
                                        <input name="txtProductName" id="txtProductName" specialworkcheck="��Ʒ����" type="text"
                                            class="tdinput" size="19" style="width: 95%" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10%" height="20" bgcolor="#E7E7E7" align="right">
                                        ��Ʒ����
                                    </td>
                                    <td width="20%" bgcolor="#FFFFFF">
                                        <input name="txtBarCode" id="txtBarCode" type="text" class="tdinput" size="19" style="width: 95%"
                                            runat="server" /><input type="hidden" id="HiddenBarCode" runat="server" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                    </td>
                                    <td width="25%" bgcolor="#FFFFFF">
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                    </td>
                                    <td width="25%" bgcolor="#FFFFFF">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
                                        <input type="hidden" id="txtorderBy" runat="server" />
                                        <input type="hidden" id="hidSearchCondition" />
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
                �����������
            </td>
        </tr>
        <tr>
            <td height="35" colspan="2" valign="top">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="28" bgcolor="#FFFFFF">
                            <asp:ImageButton ID="btnImport" runat="server" ImageUrl="../../../images/Button/Main_btn_out.jpg"
                                alt="����Excel" OnClick="btnImport_Click" />
                            &nbsp;<%--<img id="btnPrint" src="../../../images/Button/Main_btn_print.jpg" alt="��ӡ" />--%>
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
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('ProductNo','Span4');return false;">
                                    ��Ʒ���<span id="Span4" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('ProductName','oc1');return false;">
                                    ��Ʒ����<span id="oc1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('TypeID','oc2');return false;">
                                    ��Ʒ����<span id="oc2" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('Specification','Span1');return false;">
                                    ���<span id="Span1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('UnitID','oc4');return false;">
                                    ��λ<span id="oc4" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('MinStockNum','Span3');return false;">
                                    �������<span id="Span3" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('MaxStockNum','oc5');return false;">
                                    �������<span id="oc5" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('SafeStockNum','Span2');return false;">
                                    ��ȫ���<span id="Span2" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('ProductCount','oc6');return false;">
                                    ���д���<span id="oc6" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('AlarmType','Span5');return false;">
                                    ��������<span id="Span5" class="orderTip"></span></div>
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
    <uc2:ProductInfoControl ID="ProductInfoControl1" runat="server" />
    <a name="pageDataList1Mark"></a><span id="Forms" class="Spantype"></span>
    </form>
</body>
</html>
