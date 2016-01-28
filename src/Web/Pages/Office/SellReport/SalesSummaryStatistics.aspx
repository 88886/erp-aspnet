<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SalesSummaryStatistics.aspx.cs" Inherits="Pages_Office_SellReport_SalesSummaryStatistics" %>

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

    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript" src="../../../js/common/PageBar-1.1.1.js"></script>

    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />

    <script src="../../../js/common/check.js" type="text/javascript"></script>

    <script src="../../../js/Calendar/WdatePicker.js" type="text/javascript"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>

    <script src="../../../js/common/Common.js" type="text/javascript"></script>

    <style type="text/css">
        .fontBlod
        {
            font-weight: bold;
        }
    </style>
    <style type="text/css">
        .tboxsize
        {
            width: 90%;
            height: 99%;
        }
        .textAlign
        {
            text-align: center;
        }
    </style>
        <script src="../../../js/FusionCharts/FusionCharts.js" type="text/javascript"></script>

    <script src="../../../js/office/SellReport/SalesSummaryStatistics.js" type="text/javascript"></script>
    
    <script type="text/javascript">
    var selPoint = <%= UserInfo.SelPoint %>;// С��λ��
    </script>

    <title>���ۻ���ͳ��</title>
</head>
<body>
    <form id="form1" runat="server">
    <input type="hidden" id="txtAction" value="ADD" />
    <input type="hidden" id="txtSendPriceID" value="-1" />
    <span id="Span2" class="Spantype"></span>
    <input type="hidden" id="txtUserID" runat="server" />
    <input type="hidden" id="txtUserName" runat="server" />
    <input type="hidden" id="txtDate" runat="server" />
    <input id="txtOrderBy" type="hidden" value="SellNumTotal DESC" runat="server" />
    <input id="txtIsSearch" type="hidden" />
    <input id="ModuleID" runat="server" type="hidden" />
    <input id="InOutModuleID" runat="server" type="hidden" />
    <input type="hidden" id="txtPageSize" />
    <input type="hidden" id="txtPageIndex" />
    <uc2:ProductInfoControl ID="ProductInfoControl1" runat="server" />
    <div id="divPageMask" style="display: none">
        <iframe id="PageMaskIframe" frameborder="0" width="100%"></iframe>
    </div>
    <uc1:Message ID="Message1" runat="server" />
    <a name="pageDataList1Mark"></a><span id="Forms" class="Spantype"></span>
    <table width="98%" height="57" border="0" cellpadding="0" cellspacing="0" class="checktable"
        id="mainindex">
        <tr>
            <td valign="top">
                <img src="../../../images/Main/Line.jpg" width="122" height="7" />
            </td>
            <td rowspan="2" align="right" valign="top">
                <div id='divSearch'>
                    <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('tblSearch','divSearch')" />
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
                <table width="98%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#999999"
                    id="tblSearch">
                    <tr>
                        <td height="20" align="right" class="tdColTitle" width="10%">
                           ��ʼ����
                        </td>
                        <td height="20" class="tdColInput" width="23%">
                            <input id="txtStartDate" type="text" runat="server"  readonly="true" class="tdinput tboxsize"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('txtStartDate')})"/>
                        </td>
                        <td height="20" align="right" class="tdColTitle" width="10%">
                            ��������
                        </td>
                        <td height="20" class="tdColInput" width="23%">
                          <input id="txtEndDate" type="text" runat="server" class="tdinput tboxsize" readonly="true"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('txtEndDate')})"/>
                        </td>
                        <td height="20" align="right" class="tdColTitle" width="10%">
                           ��������
                        </td>
                        <td height="20" class="tdColInput" width="24%">
                         <select id="selSumType">
                         <option value="byDept">������</option>
                         <option value="bySeller">��ҵ��Ա</option>
                         <option value="byProduct">����Ʒ</option>
                         </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6" align="center" bgcolor="#FFFFFF">
                            <img alt="����" src="../../../images/Button/Bottom_btn_search.jpg" style="cursor: pointer;"
                                onclick="SearchData();" id="imgSearch" runat="server" visible="true" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table width="98%" height="57" border="0" cellpadding="0" cellspacing="0" class="maintable"
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
                ���ۻ���ͳ��
            </td>
        </tr>
        <tr>
            <td height="35" colspan="2" valign="top">
                <table width="98%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="28" bgcolor="#FFFFFF">
                         չ����ʽ��<select id="showType">
                         <option value="1">�б�</option>
                          <option value="2">����ͼ</option>
                          <option value="3">��״ͼ</option>
                         </select>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
            
            <div id="divList">
                <table width="98%" border="0" align="center" cellpadding="2" cellspacing="1" id="tblSubProductSendPrice"
                    bgcolor="#999999">
                    <tbody>
                        <tr>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF" id="thByDept">
                                <div class="orderClick" onclick="CreateSort('DeptName');return false;">
                                    ����<span id="DeptName" class="orderTip"></span></div>
                            </th>
                              <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF" id="thBySeller" style=" display:none ">
                                <div class="orderClick" onclick="CreateSort('EmployeeName');return false;">
                                    ҵ��Ա<span id="EmployeeName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF" id="thByProduct" style="display:none">
                                <div class="orderClick" onclick="CreateSort('Product');return false;">
                                    ��Ʒ<span id="Product" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="CreateSort('SellNumTotal');return false;">
                                    ��������<span id="SellNumTotal" class="orderTip"></span></div>
                            </th>
                                <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="CreateSort('SellPriceTotal');return false;">
                                    ���۽��<span id="SellPriceTotal" class="orderTip"></span></div>
                            </th>
                        </tr> 
                    </tbody>
                </table>
                <br />
                <table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999"
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
                </div>
                <div align="center" id="divCenterData" style="display:none">
             <table  style="height:500px"  ><tr><td style="text-align:center;" >��<br />��<br />��<br />��</td><td><div id="divListImage" align="center"></div></td></tr></table>
                </div>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

