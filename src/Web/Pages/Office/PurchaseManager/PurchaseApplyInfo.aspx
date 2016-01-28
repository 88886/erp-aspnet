<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PurchaseApplyInfo.aspx.cs" Inherits="Pages_Office_PurchaseManager_PurchaseApplyInfo" %>
<%@ Register Src="../../../UserControl/Department.ascx" TagName="Department" TagPrefix="uc2" %>
<%@ Register Src="../../../UserControl/CodeTypeDrpControl.ascx" TagName="CodeTypeDrpControl"   TagPrefix="uc3" %>
<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc4" %>
<%@ Register src="../../../UserControl/GetBillExAttrControl.ascx" tagname="GetBillExAttrControl" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" type="text/css" href="../../../css/default.css" />

    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript" src="../../../js/common/PageBar-1.1.1.js"></script>

    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />

    <script src="../../../js/common/check.js" type="text/javascript"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <script src="../../../js/common/Common.js" type="text/javascript"></script>

    <script src="../../../js/Calendar/WdatePicker.js" type="text/javascript"></script>

    <script src="../../../js/common/Flow.js" type="text/javascript"></script>
    
    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>

    <script src="../../../js/office/PurchaseManager/PurchaseApplyInfo.js" type="text/javascript"></script>

    <title>�ɹ����뵥�б���Ϣ</title>
    <style type="text/css">
        #pageDataList1
        {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <input type="hidden" id="hfModuleID" runat="server" />
    <a name="pageDataList1Mark"></a>
    <table width="98%" border="0" cellpadding="0" cellspacing="0" class="checktable"
        id="mainindex">
        <tr>
            <td valign="top">
                <img src="../../../images/Main/Line.jpg" width="122" height="7" />
            </td>
        </tr>
        <tr>
            <td valign="top" class="Blue">
                <img src="../../../images/Main/Arrow.jpg" width="21" height="18" align="absmiddle" />��������
            </td>
            <td align="right" valign="top">
                <div id='divSearch'>
                    <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('tblSearch','divSearch')" />
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table width="99%" border="0" align="center" cellpadding="0" id="tblSearch" cellspacing="0"
                    bgcolor="#CCCCCC">
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC">
                                <tr>
                                    <td height="20" class="tdColTitle" width="10%">
                                        ���뵥���
                                    </td>
                                    <td class="tdColInput" width="23%">
                                        <input name="txtapplyno" id="txtapplyno" runat="server" class="tdinput" type="text" style="width:99%" SpecialWorkCheck="���뵥���" />
                                    </td>
                                    <td height="20" class="tdColTitle" width="10%">
                                        ��������
                                    </td>
                                    <td class="tdColInput" width="23%">
                                    <input name="txttitle" id="txttitle" type="text" runat="server"  class="tdinput" style="width:99%" SpecialWorkCheck="���뵥����" />
                                    </td>
                                    <td class="tdColTitle" width="10%">
                                        ������
                                    </td>
                                    <td class="tdColInput" width="24%">
                                        <input name="UserApplyName" id="UserApplyName" onclick="alertdiv('UserApplyName,hidApplyID');" class="tdinput" type="text" style="width:99%"  readonly="readonly"/>
                                        <input id="hidApplyID" type="hidden" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="20" class="tdColTitle">
                                        ���벿��
                                    </td>
                                    <td class="tdColInput">
                                        <input name="DeptName" id="DeptName" class="tdinput" onclick="alertdiv('DeptName,hidDeptID');"  type="text" style="width: 99%" readonly="readonly" />
                                        <input type="hidden" id="hidDeptID" runat="server" />
                                    </td>
                                    <td class="tdColTitle">
                                        �ɹ����
                                    </td>
                                    <td class="tdColInput">
                                        <uc3:CodeTypeDrpControl ID="ddlTypeID" runat="server" />
                                    </td>
                                    <td class="tdColTitle">
                                        Դ������
                                    </td>
                                    <td class="tdColInput">
                                        <select name="ddlfromtype" id="ddlfromtype" class="tdinput"  runat="server">
                                            <option value="">--��ѡ��--</option>
                                            <option value="0">����Դ</option>
                                            <option value="1">���۶���</option>
                                            <option value="2">������Դ�ƻ�</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="20" class="tdColTitle">
                                        ��ʼ����ʱ��
                                    </td>
                                    <td class="tdColInput">
                                     <input name="txtstartapplydate" id="txtstartapplydate" class="tdinput" type="text"   readonly ="readonly"
                                    runat="server"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('txtbuydate')})" style="width:99%" SpecialWorkCheck="��ʼ����ʱ��" />
                                    </td>
                                    <td class="tdColTitle">
                                        ��ֹ����ʱ��
                                    </td>
                                    <td class="tdColInput">
                                    <input name="txtendapplydate" id="txtendapplydate" class="tdinput" type="text" style="width:99%" runat="server"  readonly="readonly" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('txtbuydate')})"  SpecialWorkCheck="��ֹ����ʱ��" />
                                    </td>
                                    <td class="tdColTitle">
                                        ����״̬
                                    </td>
                                    <td class="tdColInput">
                                        <select name="ddlBillStatus" class="tdinput" width="119px" id="ddlBillStatus" runat="server">
                                            <option value="0" selected="selected">--��ѡ��--</option>
                                            <option value="1">�Ƶ�</option>
                                            <option value="2">ִ��</option>
                                            <%--<option value="3">���</option>--%>
                                            <option value="4">�ֹ��ᵥ</option>
                                            <option value="5">�Զ��ᵥ</option>
                                        </select>                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tdColTitle">
                                        ����״̬
                                    </td>
                                    <td class="tdColInput" width="23%">
                                        <select name="ddlFlowStatus" class="tdinput" width="119px" id="ddlFlowStatus" runat="server">
                                            <option value="0" selected="selected">--��ѡ��--</option>
                                            <option value="1">������</option>
                                            <option value="2">������</option>
                                            <option value="3">����ͨ��</option>
                                            <option value="4">������ͨ��</option>
                                            <option value="5">��������</option>
                                            <option value="">���ύ</option>
                                        </select>
                                        <input type="hidden" id="hidOrderBy" runat="server" value="ApplyNo ASC" />
                                    </td>
                                    <td class="tdColTitle">
                                <span id="OtherConditon" style=" display:none">��������</span>
                                    </td>
                                    <td class="tdColInput" width="23%">
                                        <uc1:GetBillExAttrControl ID="GetBillExAttrControl1" runat="server" />
                                    </td>
                                    <td class="tdColTitle">
                                        
                                    </td>
                                    <td class="tdColInput" width="24%">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
                                        <input type="hidden" id="hidModuleID" runat="server" />
                                        <input type="hidden" id="SearchCondition" />
                                        <uc4:Message ID="Message1" runat="server" />
                                        <img runat="server" visible="false" alt="����" src="../../../images/Button/Bottom_btn_search.jpg" id="btnSearch"  style='cursor: pointer;' onclick='DoSearch()' />
                                        <%--<img alt="����" src="../../../images/Button/Bottom_btn_re.jpg" id="btnReset" runat="server" visible="true" style='cursor:pointer;' onclick="ClearInputProxy()" width="52" height="23" />--%>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
  
    </table>
    <table width="98%" border="0" cellpadding="0" cellspacing="0" class="checktable"
        id="mainindex">
        <tr>
            <td valign="top">
                <img src="../../../images/Main/Line.jpg" width="122" height="7" />
            </td>
            <td align="center" valign="top">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" id="tblDetailList">
                    <tr>
                        <td height="30" align="center" valign="top" class="Title">
                            �ɹ����뵥�б�                         </td>
                    </tr>
                    <tr>
                        <td height="35" valign="top">
                            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                                <tr>
                                    <td height="28" bgcolor="#FFFFFF">
                                        <img runat="server" visible="false" src="../../../Images/Button/Bottom_btn_new.jpg" alt="�½�" id="btnNew"  
                                            style="cursor: hand" onclick="DoNew();" />
                                        <img runat="server" visible="false" src="../../../images/Button/Main_btn_delete.jpg" alt="ɾ��" id="btnDelete"  
                                            onclick="DoDelete()" style='cursor: pointer;'  />
                                        <asp:ImageButton ID="btnExport" runat="server" ImageUrl="../../../images/Button/Main_btn_out.jpg"
                                        alt="����Excel" OnClick="btnImport_Click" />
                                    </td>
                                   
                                </tr>
                            </table>
                       
                            <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" id="pageDataList1"
                                bgcolor="#999999">
                                <tbody>
                                    <tr>
                                        <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            ѡ��<input type="checkbox" visible="false" id="checkall" onclick="SelectAll()" value="checkbox" />
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderBy('ApplyNo','oGroup');return false;">
                                                ���뵥���<span id="oGroup" class="orderTip"></span></div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderBy('Title','oC1');return false;">
                                                ���뵥����<span id="oC1" class="orderTip"></span></div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderBy('TypeName','oC2');return false;">
                                                �ɹ����<span id="oC2" class="orderTip"></span></div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderBy('FromTypeName','oC3');return false;">
                                                Դ������<span id="oC3" class="orderTip"></span></div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderBy('ApplyUserName','oC4');return false;">
                                                ������<span id="oC4" class="orderTip"></span></div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderBy('ApplyDeptName','Span1');return false;">
                                                ���벿��<span id="Span1" class="orderTip"></span></div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderBy('ApplyDate','Span2');return false;">
                                                ����ʱ��<span id="Span2" class="orderTip"></span></div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderBy('BillStatusName','Span3');return false;">
                                                ����״̬<span id="Span3" class="orderTip"></span></div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick" onclick="OrderBy('FlowStatusName','Span4');return false;">
                                                ����״̬<span id="Span4" class="orderTip"></span></div>
                                        </th>
                                        <%--<th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy('Auditing','oC4');return false;">����״̬<span id="Span4" class="orderTip"></span></div></th>--%>
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
                                                    <div id="pagePurApplycount">
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
                                                        <input name="text" type="text" id="ShowPageCount" />�� ת����
                                                        <input name="text" type="text" id="ToPage" />ҳ
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
            </td>
        </tr>
    </table>
    </form>
    <div style="display: none">
        <input type="hidden" id="BackURL" runat="server" value="1" />
    </div>
    <span id="Forms" class="Spantype"></span>
</body>
</html>
