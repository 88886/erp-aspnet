<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StorageInRedList.aspx.cs"
    Inherits="Pages_Office_StorageManager_StorageInRedList" ValidateRequest="false" %>

<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc1" %>
<%@ Register Src="../../../UserControl/GetBillExAttrControl.ascx" TagName="GetBillExAttrControl"
    TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" type="text/css" href="../../../css/default.css" />

    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript" src="../../../js/common/PageBar-1.1.1.js"></script>

    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />

    <script type="text/javascript">
        var IsDisplayPrice = '<%=GetIsDisplayPrice() %>';
        var IsBarCode = '<%=GetIsBarCode()%>';
    </script>

    <script src="../../../js/office/StorageManager/StorageInRedList.js" type="text/javascript"></script>

    <script src="../../../js/common/check.js" type="text/javascript"></script>

    <script src="../../../js/Calendar/WdatePicker.js" type="text/javascript"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <script src="../../../js/common/Common.js" type="text/javascript"></script>

    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>

    <title>�������б�</title>
</head>
<body>
    <form id="form1" runat="server">
    <input id="Hidden1" type="hidden" runat="server" />
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
                                <tr>
                                    <td width="10%" height="20" bgcolor="#E7E7E7" align="right">
                                        ��ⵥ���
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <input name="txtInNo" id="txtInNo" specialworkcheck="��ⵥ���" type="text" class="tdinput"
                                            size="19" runat="server" style="width: 95%" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ��ⵥ����
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <input name="txtTitle" id="txtTitle" specialworkcheck="��ⵥ����" type="text" class="tdinput"
                                            size="19" runat="server" style="width: 95%" />
                                    </td>
                                    <td width="10%" height="20" align="right" bgcolor="#E6E6E6">
                                        Դ������
                                    </td>
                                    <td height="20" bgcolor="#FFFFFF" width="24%">
                                        <select name="sltFromType" id="sltFromType" runat="server">
                                            <option value="">--��ѡ��--</option>
                                            <option value="1">�ɹ���ⵥ</option>
                                            <option value="2">�����깤��ⵥ</option>
                                            <option value="3">������ⵥ</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" bgcolor="#E6E6E6">
                                        ԭʼ��ⵥ
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <input name="txtFromBillID" id="txtFromBillID" class="tdinput" type="text" size="15"
                                            readonly="readonly" onclick="fnStorageInList('txtFromBillID')" runat="server"
                                            style="width: 95%" />
                                        <input id="hidFromBillID" type="hidden" runat="server" />
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right">
                                        ��ⲿ��
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <input name="DeptName" id="DeptName" type="text" class="tdinput" size="19" readonly="readonly"
                                            onclick="alertdiv('DeptName,txtDeptID');" runat="server" style="width: 95%" />
                                        <input name="txtDeptID" id="txtDeptID" type="hidden" runat="server" />
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right">
                                        ����״̬
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <select name="sltBillStatus" id="sltBillStatus" runat="server">
                                            <option value="">--��ѡ��--</option>
                                            <option value="1">�Ƶ�</option>
                                            <option value="2">ִ��</option>
                                            <option value="4">�ֹ��ᵥ</option>
                                            <option value="5">�Զ��ᵥ</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td bgcolor="#E7E7E7" align="right">
                                        �����
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <input name="UserExecutor" id="UserExecutor" type="text" class="tdinput" size="19"
                                            readonly="readonly" onclick="alertdiv('UserExecutor,txtExecutorID');" runat="server"
                                            style="width: 95%" />
                                        <input name="txtExecutorID" id="txtExecutorID" type="hidden" runat="server" />
                                    </td>
                                    <td height="20" align="right" bgcolor="#E6E6E6">
                                        ���ԭ��
                                    </td>
                                    <td height="20" bgcolor="#FFFFFF">
                                        <asp:DropDownList runat="server" name="ddlReasonType" ID="ddlReasonType">
                                        </asp:DropDownList>
                                    </td>
                                    <td height="20" bgcolor="#E7E7E7" align="right">
                                        ���ʱ���:
                                    </td>
                                    <td bgcolor="#FFFFFF">
                                        <input name="txtEnterDateStart" id="txtEnterDateStart" type="text" class="tdinput"
                                            size="12" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('txtEnterDateStart')})"
                                            readonly="readonly" runat="server" />
                                        ��
                                        <input name="txtEnterDateEnd" id="txtEnterDateEnd" type="text" class="tdinput" size="12"
                                            onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('txtEnterDateEnd')})" readonly="readonly"
                                            runat="server" />
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                         <span id="OtherConditon" style="display:none">��������</span>
                                    </td>
                                    <td width="25%" bgcolor="#FFFFFF">
                                        <uc2:GetBillExAttrControl ID="GetBillExAttrControl1" runat="server" />
                                    </td>
                                    <td width="10%" height="20" bgcolor="#E7E7E7" align="right">
                                    </td>
                                    <td width="20%" bgcolor="#FFFFFF">
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                    ����</td>
                                    <td bgcolor="#FFFFFF">
                                        <input name="txtBatchNo" id="txtBatchNo" type="text" class="tdinput" runat="server"
                                            specialworkcheck="����" style="width: 95%" /></td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
                                        <input type="hidden" id="txtorderBy" runat="server" />
                                        <input type="hidden" id="hidModuleID" runat="server" />
                                        <input type="hidden" id="hidSearchCondition" runat="server" />
                                        <img alt="����" src="../../../images/Button/Bottom_btn_search.jpg" style='cursor: hand;'
                                            id="btn_Search" runat="server" onclick='DoSearch();' visible="false" />
                                            <input type="hidden" id="hidSelPoint" runat="server" value="" />
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
                �����ⵥ�б�
            </td>
        </tr>
        <tr>
            <td height="35" colspan="2" valign="top">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="28" bgcolor="#FFFFFF">
                            <img src="../../../images/Button/Bottom_btn_new.jpg" id="btn_Add" runat="server"
                                alt="�½�������ⵥ" style='cursor: hand;' onclick="DoNew();" visible="false" />
                            <img id="btnDel" runat="server" src="../../../images/Button/Main_btn_delete.jpg"
                                alt="ɾ��" style='cursor: hand;' border="0" onclick="Fun_Delete_StorageInRed();"
                                visible="false" />
                            <asp:ImageButton ID="btnImport" runat="server" ImageUrl="../../../images/Button/Main_btn_out.jpg"
                                alt="����Excel" OnClick="btnImport_Click" />
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
                            <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="5%">
                                <input type="checkbox" name="checkall" id="checkall" onclick="SelectAllCk()" value="checkbox" />
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="8%">
                                <div class="orderClick" onclick="OrderBy('InNo','oc1');return false;">
                                    ��ⵥ���<span id="oc1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="8%">
                                <div class="orderClick" onclick="OrderBy('Title','oc2');return false;">
                                    ��������<span id="oc2" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="8%">
                                <div class="orderClick" onclick="OrderBy('FromType','Span2');return false;">
                                    Դ������<span id="Span2" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="8%">
                                <div class="orderClick" onclick="OrderBy('FromInNo','oc4');return false;">
                                    Դ�����<span id="oc4" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="8%">
                                <div class="orderClick" onclick="OrderBy('DeptName','oc3');return false;">
                                    ��ⲿ��<span id="oc3" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="5%">
                                <div class="orderClick" onclick="OrderBy('ExecutorName','oc5');return false;">
                                    �����<span id="oc5" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="8%">
                                <div class="orderClick" onclick="OrderBy('EnterDate','oc6');return false;">
                                    ���ʱ��<span id="oc6" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="8%">
                                <div class="orderClick" onclick="OrderBy('CodeName','Span6');return false;">
                                    ���ԭ��<span id="Span6" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="8%">
                                <div class="orderClick" onclick="OrderBy('CountTotal','oc8');return false;">
                                    �������<span id="oc8" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="8%" style="display: <%=GetIsDisplayPrice()%>">
                                <div class="orderClick" onclick="OrderBy('TotalPrice','oc9');return false;">
                                    �����<span id="oc9" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="8%">
                                <div class="orderClick" onclick="OrderBy('Summary','oc10');return false;">
                                    ժҪ<span id="oc10" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"
                                width="5%">
                                <div class="orderClick" onclick="OrderBy('BillStatusName','oc11');return false;">
                                    ����״̬<span id="oc11" class="orderTip"></span></div>
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
    <%---------------------------------------------------���ⵥ�б�div-Start-----------------------------------------------%>
    <div id="divzhezhao" style="filter: Alpha(opacity=0); width: 620px; height: 500px;
        z-index: 1000; position: absolute; display: none; top: 20%; left: 70%; margin: 5px 0 0 -400px;">
        <iframe style="border: 0; width: 620px; height: 100%; position: absolute;"></iframe>
    </div>
    <div id="divStorageInUC" style="border: solid 10px #93BCDD; background: #fff; padding: 10px;
        width: 580px; z-index: 1001; position: absolute; display: none; top: 20%; left: 70%;
        margin: 5px 0 0 -400px;">
        <table width="100%">
            <tr>
                <td>
                    <img alt="�ر�" id="btn_Close1" src="../../../images/Button/Bottom_btn_close.jpg" style='cursor: hand;'
                        onclick='Closediv();' />
                    <img alt="���" id="ClearInput" src="../../../images/Button/Bottom_btn_del.jpg" style='cursor: hand;'
                        onclick='ClearFromInNo();' />
                </td>
            </tr>
        </table>
        <table width="99%" border="0" align="center" cellpadding="0" id="Table1" cellspacing="0"
            bgcolor="#CCCCCC">
            <tr>
                <td bgcolor="#FFFFFF">
                    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC"
                        class="table">
                        <tr class="table-item">
                            <td width="10%" height="20" bgcolor="#E7E7E7" align="right" style="font-size: 13">
                                ���ݱ��
                            </td>
                            <td width="24%" bgcolor="#FFFFFF">
                                <input name="txtNo_UC" id="txtNo_UC" type="text" class="tdinput" runat="server" size="13"
                                    specialworkcheck="���ݱ��" style="width: 95%" />
                            </td>
                            <td width="10%" bgcolor="#E7E7E7" align="right" style="font-size: 13">
                                ��������
                            </td>
                            <td width="23%" bgcolor="#FFFFFF">
                                <input name="txtTitle_UC" id="txtTitle_UC" type="text" class="tdinput" runat="server"
                                    size="19" specialworkcheck="��������" style="width: 95%" />
                            </td>
                            <td width="10%" bgcolor="#E7E7E7" align="right" colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" align="center" bgcolor="#FFFFFF">
                                <img alt="����" id="btn_Serch" src="../../../images/Button/Bottom_btn_search.jpg" style='cursor: hand;'
                                    onclick='TurnToOffPage(1);' />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" id="offerDataList"
            bgcolor="#999999">
            <tbody>
                <tr>
                    <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                        ѡ��
                    </th>
                    <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                        <div class="orderClick" onclick="OrderOffBy('FromType','Span5');return false;">
                            ��ⵥ����<span id="Span5" class="orderTip"></span></div>
                    </th>
                    <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                        <div class="orderClick" onclick="OrderOffBy('InNo','Span1');return false;">
                            ��ⵥ���<span id="Span1" class="orderTip"></span></div>
                    </th>
                    <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                        <div class="orderClick" onclick="OrderOffBy('Title','Span3');return false;">
                            ����<span id="Span3" class="orderTip"></span></div>
                    </th>
                    <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                        <div class="orderClick" onclick="OrderOffBy('CreateDate','Span4');return false;">
                            ��������<span id="Span4" class="orderTip"></span></div>
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
                            <td height="28" background="../../../images/Main/PageList_bg.jpg" width="28%">
                                <div id="pageOffcount">
                                </div>
                            </td>
                            <td height="28" align="center">
                                <div id="pageOffList_Pager" class="jPagerBar">
                                </div>
                            </td>
                            <td height="28" align="right">
                                <div id="divOffpage">
                                    <span id="pageOffList_Total"></span>ÿҳ��ʾ
                                    <input name="text" type="text" id="ShowOffPageCount" style="width: 20px;" />
                                    �� ת����
                                    <input name="text" type="text" style="width: 20px;" id="OffToPage" />
                                    ҳ
                                    <img src="../../../Images/Button/Main_btn_GO.jpg" style='cursor: hand;' alt="go"
                                        width="36" height="28" align="absmiddle" onclick="ChangeOffPageCountIndex($('#ShowOffPageCount').val(),$('#OffToPage').val());" />
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br />
    </div>
    <%---------------------------------------------------���ⵥ�б�div-End-----------------------------------------------%>
    <uc1:Message ID="Message1" runat="server" />
    <a name="pageDataList1Mark"></a><span id="Forms" class="Spantype"></span>
    </form>
</body>
</html>
