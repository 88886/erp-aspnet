<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StorageCheckNotPassList.aspx.cs"
    Inherits="Pages_Office_StorageManager_StorageCheckNotPassList" %>

<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc1" %>
<%@ Register Src="../../../UserControl/StorageNoPass.ascx" TagName="StorageNoPass"
    TagPrefix="uc5" %>
<%--<%@ Register src="../../../UserControl/CheckApplay.ascx" tagname="CheckApplay" tagprefix="uc2" %>--%>
<%@ Register Src="../../../UserControl/ReportFrom.ascx" TagName="ReportFrom" TagPrefix="uc3" %>
<%@ Register Src="../../../UserControl/ReportMan.ascx" TagName="ReportMan" TagPrefix="uc4" %>
<%@ Register Src="../../../UserControl/ProductInfoControl.ascx" TagName="ProductInfoControl"
    TagPrefix="uc6" %>
<%@ Register Src="../../../UserControl/GetBillExAttrControl.ascx" TagName="GetBillExAttrControl"
    TagPrefix="uc7" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>���ϸ�Ʒ���õ��б�</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" type="text/css" href="../../../css/default.css" />

    <script src="../../../js/common/Check.js" type="text/javascript"></script>

    <script src="../../../js/Calendar/WdatePicker.js" type="text/javascript"></script>

    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>

    <script src="../../../js/common/Common.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript" src="../../../js/common/PageBar-1.1.1.js"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />

    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>

    <script src="../../../js/office/StorageManager/StorageCheckNotPassList.js" type="text/javascript"></script>

    <script type="text/javascript">
     function Fun_FillParent_Content(id,prodNo,prodName,standardSell,unitID,codeName,taxRate,sellTax,discount,specification,codeTypeName,typeID,StandardCost)
     {

                   document.getElementById('ProductName').value=prodName;
                   document.getElementById('hiddenProductID').value=id;

                   document.getElementById('divStorageProduct').style.display='none';


    }
     function Fun_FillReport1(a,b,c,d,e,f,g,h,i,J)
     {
        document.getElementById('hiddenFromReportID').value=b;
        document.getElementById('FromReportNo').value=a;
        document.getElementById('divStorageNoPass').style.display='none';
        closeRotoscopingDiv(false,'divBackShadow');
     }
     function removeAll()
     {
        document.getElementById('hiddenFromReportID').value='0';
        document.getElementById('FromReportNo').value='';
        document.getElementById('divStorageNoPass').style.display='none';
        closeRotoscopingDiv(false,'divBackShadow');
     }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <input id="hiddenOrder" type="hidden" value="0" runat="server" /><!--����������Ҫ--->
    <div id="divBackShadow" style="display: none">
        <iframe src="../../../Pages/Common/MaskPage.aspx" id="BackShadowIframe" frameborder="0"
            width="100%"></iframe>
    </div>
    <uc5:StorageNoPass ID="StorageNoPass1" runat="server" />
    <uc6:ProductInfoControl ID="ProductInfoControl1" runat="server" />
    <uc4:ReportMan ID="ReportMan1" runat="server" />
    <!-- Start �� Ϣ �� ʾ -->
    <uc1:Message ID="Message1" runat="server" />
    <!-- End �� Ϣ �� ʾ -->
    <input id="isreturn" value="0" type="hidden" />
    <table width="95%" height="57" border="0" cellpadding="0" cellspacing="0" class="checktable"
        id="mainindex">
        <tr>
            <td valign="top">
                <img src="../../../images/Main/Line.jpg" width="122" height="7" />
                &nbsp;
            </td>
            <td rowspan="2" align="right" valign="top">
                <div id='searchClick'>
                    <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('searchtable','searchClick')" /></div>
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td valign="top" class="Blue">
                <img src="../../../images/Main/Arrow.jpg" width="21" height="18" align="absmiddle" />��������<uc3:ReportFrom
                    ID="ReportFrom1" runat="server" />
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
                                        <asp:TextBox ID="txtReportNo" MaxLength="50" runat="server" CssClass="tdinput" Width="95%"></asp:TextBox>
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right" width="10%">
                                        ��������
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <asp:TextBox ID="txtSubject" MaxLength="50" runat="server" CssClass="tdinput" Width="95%"></asp:TextBox>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right" width="10%">
                                        �ʼ챨�浥
                                    </td>
                                    <td bgcolor="#FFFFFF" width="24%">
                                        <input id="FromReportNo" type="text" readonly onclick="popNoPassObj.ShowList(1);"
                                            class="tdinput" />
                                        <input id="hiddenFromReportID" runat="server" value="0" type="hidden" />
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        ��Ʒ����
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <input id="ProductName" onclick="popTechObj.ShowList('','ProductName','hiddenProductID');"
                                            class="tdinput" width="95%" readonly="readonly" />
                                        <input id="hiddenProductID" runat="server" value="0" type="hidden" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ����״̬
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        &nbsp;<select id="sltBillStatus" runat="server" name="D2">
                                            <option value="00">-��ѡ��-</option>
                                            <option value="1">�Ƶ�</option>
                                            <option value="2">ִ��</option>
                                            <option value="4">�ֹ��ᵥ</option>
                                            <option value="5">�Զ��ᵥ</option>
                                        </select>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ����״̬
                                    </td>
                                    <td width="24%" bgcolor="#FFFFFF">
                                        <select id="ddlFlowStatus" runat="server" name="D1">
                                            <option value="00">-��ѡ��-</option>
                                            <option value="6">���ύ</option>
                                            <option value="1">������</option>
                                            <option value="2">������</option>
                                            <option value="3">����ͨ��</option>
                                            <option value="4">������ͨ��</option>
                                            <option value="5">��������</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        ��������
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <input id="BeginTime" runat="server" readonly="readonly" class="tdinput" style="width: 90px"
                                            onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('EndCheckDate')})" />��<input
                                                id="EndTime" runat="server" class="tdinput" readonly="readonly" style="width: 90px"
                                                onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('EndCheckDate')})" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        <span id="OtherConditon" style="display:none">��������</span>
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <uc7:GetBillExAttrControl ID="GetBillExAttrControl1" runat="server" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                    </td>
                                    <td width="24%" bgcolor="#FFFFFF">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
                                        <img runat="server" visible="false" id="btnQuery" alt="����" src="../../../images/Button/Bottom_btn_search.jpg"
                                            style='cursor: hand;' onclick='FistSearchNoPass()' />
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
                ���ϸ�Ʒ���õ��б�
            </td>
        </tr>
        <tr>
            <td height="35" colspan="2" valign="top">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="28" bgcolor="#FFFFFF">
                            <a href="StorageCheckNotPassAdd.aspx?myAction=fromlist&ModuleID=2071301">
                                <img runat="server" visible="false" id="btnAdd" src="../../../images/Button/Bottom_btn_new.jpg"
                                    alt="�½��ʼ챨��" style='cursor: hand;' border="0" /></a><img runat="server" visible="false"
                                        id="btnDel" src="../../../images/Button/Main_btn_delete.jpg" alt="ɾ���ʼ챨��" style='cursor: hand;'
                                        border="0" onclick="Fun_Delete_NoPass();" />
                            <asp:ImageButton ID="btnImport" runat="server" OnClientClick="return IsOut();" ImageUrl="../../../images/Button/Main_btn_out.jpg"
                                OnClick="btnImport_Click" />
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
                                ѡ��<input id="cbSelectAll" type="checkbox" onclick="SelectAllList();" />
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('ProcessNo','oProcessNo');return false;">
                                    ���ݱ��<span id="oProcessNo" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('Title','oTitle');return false;">
                                    ��������<span id="oTitle" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('FromType','oFromType');return false;">
                                    Դ������<span id="oFromType" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('ReportID','oReportID');return false;">
                                    �ʼ챨�浥<span id="oReportID" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('ProNo','oProNo');return false;">
                                    ��Ʒ���<span id="oProNo" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('ProductName','oProductName');return false;">
                                    ��Ʒ����<span id="oProductName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('EmployeeName','oEmployeeName');return false;">
                                    ��������<span id="oEmployeeName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('ProcessDate','oProcessDate');return false;">
                                    ��������<span id="oProcessDate" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('BillStatusID','oBillStatusID');return false;">
                                    ����״̬<span id="oBillStatusID" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('FlowStatus','oFlowStatus');return false;">
                                    ����״̬<span id="oFlowStatus" class="orderTip"></span></div>
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
                                        <div id="pageDataList1_Pager" class="jPagerBar">
                                        </div>
                                    </td>
                                    <td height="28" align="right">
                                        <div id="divpage">
                                            <input name="text" type="text" id="Text2" style="display: none" />
                                            <span id="pageDataList1_Total"></span>ÿҳ��ʾ
                                            <input runat="server" name="text" type="text" id="ShowPageCount" />
                                            �� ת����
                                            <input runat="server" name="text" type="text" id="ToPage" />
                                            ҳ
                                            <img src="../../../images/Button/Main_btn_GO.jpg" style='cursor: hand;' alt="go"
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
    <a name="pageDataList1Mark"></a><span id="Forms" class="Spantype"></span>
    </form>
</body>
</html>
