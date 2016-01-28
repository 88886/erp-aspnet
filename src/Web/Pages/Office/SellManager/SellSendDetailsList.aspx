<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SellSendDetailsList.aspx.cs" Inherits="Pages_Office_SellManager_SellSendDetailsList" %>
<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc1" %>
<%@ Register Src="../../../UserControl/sellModuleSelectCustUC.ascx" TagName="sellModuleSelectCustUC"
    TagPrefix="uc2" %>
<%@ Register Src="../../../UserControl/ProductInfoControl.ascx" TagName="ProductInfoControl"
    TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>���۷�����ϸ</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" type="text/css" href="../../../css/default.css" />
    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />

    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript" src="../../../js/common/PageBar-1.1.1.js"></script>

    <script src="../../../js/JQuery/formValidator.js" type="text/javascript"></script>

    <script src="../../../js/JQuery/formValidatorRegex.js" type="text/javascript"></script>

    <script src="../../../js/Calendar/WdatePicker.js" type="text/javascript"></script>

    <script src="../../../js/common/check.js" type="text/javascript"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <script src="../../../js/common/Common.js" type="text/javascript"></script>

    <script src="../../../js/office/SellManager/SellSendDetailsList.js" type="text/javascript"></script>

    <style type="text/css">
        .style1
        {
            width: 76px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <a name="pageDataList1Mark"></a><span id="Forms" class="Spantype" name="Forms"></span>
    <input id="hiddUrl" type="hidden" value="" />
    <input type="hidden" id="hiddExpOrder" runat="server" />
    <input type="hidden" id="hiddExpTotal" runat="server" />
    <input id="hiddSendAddModuleid" type="hidden" runat="server" /><!--���۷����༭ҳ��ModuleID-->
    <input id="hiddBillingAddModuleid" type="hidden" runat="server" /><!--��Ʊ�༭ҳ��ModuleID-->
    <input id="hiddModuleID" type="hidden" runat="server" /><!--ҳ��ModuleID-->
    <script type="text/javascript">
        var precisionLength=<%=SelPoint %>;//С������
    </script>
    <uc1:Message ID="Message1" runat="server" />
    <uc2:sellModuleSelectCustUC ID="sellModuleSelectCustUC1" runat="server" />
    <uc3:ProductInfoControl ID="ProductInfoControl1" runat="server" />
    
    <table width="95%" height="57" border="0" cellpadding="0" cellspacing="0" class="checktable"
        id="mainindex">
        <tr>
            <td valign="top">
                <img src="../../../images/Main/Line.jpg" width="122" height="7" />
            </td>
            <td rowspan="2" align="right" valign="top">
                <div id='searchClick'>
                    <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('searchtable_sellsendD','searchClick')" /></div>
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
                <table width="99%" border="0" align="center" cellpadding="0" id="searchtable_sellsendD" cellspacing="0"
                    bgcolor="#CCCCCC">
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC"
                                class="table">
                                <tr class="table-item">
                                    <td width="11%" height="20" bgcolor="#E7E7E7" align="right">
                                        ��Ʒ
                                    </td>
                                    <td width="22%" bgcolor="#FFFFFF">
                                        <input id="ProductNo" onclick="popTechObj.ShowList('a','ProductNo','hiddProductID')" class="tdinput"
                                            type="text" readonly="readonly" style="width: 90%" runat="server"/>
                                        <input id="hiddProductID" type="hidden" runat="server" />
                                        <input type="hidden" id="hiddExcelProductID" runat="server" />
                                    </td>
                                    <td width="11%" bgcolor="#E7E7E7" align="right">
                                        �ͻ�����
                                    </td>
                                    <td width="22%" bgcolor="#FFFFFF">
                                        <input id="CustID" class="tdinput" type="text" readonly="readonly" style="width: 90%;" onclick="fnSelectCustInfo()" />
                                        <input type="hidden" id="hiddCustID" runat="server" />
                                        <input type="hidden" id="hiddExcelCustID" runat="server" />
                                    </td>
                                    <td width="11%" bgcolor="#E7E7E7" align="right">
                                        ����ʱ��
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <table cellpadding="0" cellspacing="0" border="0">
                                            <tr>
                                                <td style="width:48%">
                                                    <input name="BeginDate" style="width: 95%;" readonly="readonly" id="BeginDate" class="tdinput"
                                                            type="text" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('BeginDate')})"/>
                                                    <input type="hidden" id="hiddBeginDate" runat="server" />
                                                </td>
                                                <td>
                                                    ��
                                                </td>
                                                <td style="width:48%">
                                                    <input name="EndDate" style="width: 95%;" readonly="readonly" id="EndDate" class="tdinput"
                                                         type="text" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('EndDate')})"/>
                                                    <input type="hidden" id="hiddEndDate" runat="server" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right">
                                        �Ƿ��ѿ�Ʊ
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <select name="isOpenbill"  style="width: 120px;margin-top:2px;margin-left:2px;" id="isOpenbill">
                                            <option value="" selected="selected">--��ѡ��--</option>
                                            <option value="1">��</option>
                                            <option value="0">��</option>
                                        </select>
                                        <input type="hidden" id="hiddIsOpenbill" runat="server" />
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right">
                                        
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right">
                                        
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
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
                ���۷�����ϸ�б�
            </td>
        </tr>
        <tr>
            <td height="35" colspan="2" valign="top">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="28" bgcolor="#FFFFFF">
                            &nbsp;
                            <asp:ImageButton ID="btnImport" ImageUrl="../../../images/Button/Main_btn_out.jpg"
                                AlternateText="����Excel" runat="server" OnClick="btnImport_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" id="pageDataListSSendDL"
                    bgcolor="#999999">
                    <tbody>
                        <tr>
                            <%--<th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                ѡ��<input type="checkbox" visible="false" id="checkall" onclick="selectall()" value="checkbox" />
                            </th>--%>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                class="style1">
                                <div class="orderClick" onclick="OrderBySD('SendDate','oSendDate');return false;">
                                    ����<span id="oSendDate" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBySD('CustName','oCustName');return false;">
                                    �ͻ�����<span id="oCustName" class="orderTip"></span></div>
                            </th>
                            <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBySD('SendNo','oSendNo');return false;">
                                    ���������<span id="oSendNo" class="orderTip"></span></div>
                            </th>
                            <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBySD('ProductNo','oProductNo');return false;">
                                    ��Ʒ���<span id="oProductNo" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBySD('ProductName','oProductName');return false;">
                                    Ʒ��<span id="oProductName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBySD('Specification','oSpecification');return false;">
                                    ���<span id="oSpecification" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBySD('ColorName','oColorName');return false;">
                                    ��ɫ<span id="oColorName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBySD('ProductCount','oProductCount');return false;">
                                    ����<span id="oProductCount" class="orderTip"></span></div>
                            </th>
                            <%--<th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBySD('TaxPrice','oTaxPrice');return false;">
                                    ��˰��<span id="oTaxPrice" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBySD('Discount','oDiscount');return false;">
                                    �ۿۣ�%��<span id="oDiscount" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBySD('TotalTax','oDTotalFee');return false;">
                                    �ۺ�˰���<span id="oDTotalFee" class="orderTip"></span></div>
                            </th>--%>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBySD('isOpenbillText','oisOpenbill');return false;">
                                    ��Ʊ״̬<span id="oisOpenbill" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBySD('InvoiceTypeText','oInvoiceTypeText');return false;">
                                    Ʊ������<span id="oInvoiceTypeText" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBySD('BillingNum','oBillingNum');return false;">
                                    ��Ʊ��<span id="oBillingNum" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBySD('BillExecutorName','oBillExecutorName');return false;">
                                    ��Ʊ��<span id="oBillExecutorName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBySD('BillCreateDate','oBillCreateDate');return false;">
                                    ��Ʊ����<span id="oBillCreateDate" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick">
                                    ����<span id="oOptions" class="orderTip"></span></div>
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
