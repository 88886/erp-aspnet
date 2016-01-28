<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateTableViewModelList.aspx.cs" Inherits="Pages_Office_DefManager_CreateTableViewModelList" %>
<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ģ���б�</title>
    <style type="text/css">
        .style1
        {
            width: 76px;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" type="text/css" href="../../../css/default.css" />
    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />
    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript" src="../../../js/common/PageBar-1.1.1.js"></script>
    <script src="../../../js/JQuery/formValidator.js" type="text/javascript"></script>
    <script src="../../../js/JQuery/formValidatorRegex.js" type="text/javascript"></script>
    <script src="../../../js/common/Check.js" type="text/javascript"></script>
    <script src="../../../js/common/Page.js" type="text/javascript"></script>
    <script src="../../../js/office/DefManager/CreateTableViewModelList.js" type="text/javascript" ></script>

    
</head>
<body>
    <form id="form1" runat="server">
   <uc1:Message ID="Message1" runat="server" />
    <table width="95%" height="57" border="0" cellpadding="0" cellspacing="0" class="checktable"
        id="mainindex">
        <tr>
            <td valign="top">
                <img src="../../../images/Main/Line.jpg" width="122" height="7" alt="" />
            </td>
            <td rowspan="2" align="right" valign="top">
                <div id='searchClick'>
                    <img src="../../../images/Main/Close.jpg" style="cursor: pointer" alt="" onclick="oprItem('searchtable','searchClick')" /></div>
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td valign="top" class="Blue">
                <img src="../../../images/Main/Arrow.jpg" width="21" height="18" align="absmiddle" alt=""/>��������
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
                                    <td width="11%" height="20" bgcolor="#E7E7E7" align="right">
                                        ����
                                    </td>
                                    <td width="22%" bgcolor="#FFFFFF">
                                        <asp:DropDownList ID="txtTableName" runat="server" Width="200px" >   
                                        </asp:DropDownList>  
                                    </td>
                                    <td width="11%" bgcolor="#E7E7E7" align="right">
                                        <%--����״̬--%>
                                    </td>
                                    <td width="22%" bgcolor="#FFFFFF">
                                        <%--<select id="UseStatus" name="UseStatus"  style="width: 120px;margin-top:2px;margin-left:2px;">
                                            <option value="" selected="selected">--��ѡ��--</option>
                                            <option value="0">ͣ��</option>
                                            <option value="1">����</option>
                                        </select>--%>
                                        <input id="UseStatus" value="" type="hidden" runat="server"/>
                                    </td>
                                    <td width="11%" bgcolor="#E7E7E7" align="right">
                                        <%--ģ������--%>
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <select id="ModuleType" name="ModuleType"  style="width: 120px;margin-top:2px;margin-left:2px;display:none">
                                            <option value="" selected="selected">--��ѡ��--</option>
                                            <option value="0">���ģ��</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
                                        <img runat="server" alt="����" src="../../../images/Button/Bottom_btn_search.jpg"
                                            style='cursor: pointer;' id="btnSearch" onclick='TurnToPageCTVM(1);' />&nbsp;
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
                 ģ���б�
            </td>
        </tr>
        <tr>
            <td height="35" colspan="2" valign="top">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="28" bgcolor="#FFFFFF">
                            &nbsp;&nbsp;
                            <img runat="server" src="../../../images/Button/Bottom_btn_new.jpg"
                                id="btnNew" alt="�½�" style='cursor: pointer;' onclick="fnNew()" />
                            <img runat="server" src="../../../images/Button/Main_btn_delete.jpg"
                                alt="ɾ��" onclick="fnDelModule()" style='cursor: pointer;' id="btnDel" />&nbsp;
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
                            <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF" style="width:50px">
                                ѡ��<input type="checkbox" visible="false" id="checkall" onclick="selectall()" value="checkbox" />
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderByCTVM('TableName','oGroup');return false;">
                                    ����<span id="oGroup" class="orderTip"></span></div>
                            </th>
                            <%--<th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderByCTVM('ModuleTypeText','oC1');return false;">
                                    ģ������<span id="oC1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderByCTVM('UseStatusText','oC2');return false;">
                                    ״̬<span id="oC2" class="orderTip"></span></div>
                            </th>--%>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" >
                                    �༭ģ��<span id="oC3" class="orderTip"></span></div>
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
                                            <input name="text" type="text" id="ShowPageCount" maxlength="3" />
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
    <a name="pageDataList1Mark"></a><span id="Forms" class="Spantype" ></span>
    <input id="Seller" type="hidden" />
    <input type="hidden" id="hiddUrl" value="" />
    <input type="hidden" id="hiddOrderBy" runat="server" />
    <input type="hidden" id="hiddExpTotal" runat="server" />
    </form>
</body>
</html>
