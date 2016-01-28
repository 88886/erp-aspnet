<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StorageCheckReportList.aspx.cs"
    Inherits="Pages_Office_StorageManager_StorageCheckReportList" %>

<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc1" %>
<%@ Register Src="../../../UserControl/CheckApplay.ascx" TagName="CheckApplay" TagPrefix="uc2" %>
<%@ Register Src="../../../UserControl/ReportFrom.ascx" TagName="ReportFrom" TagPrefix="uc3" %>
<%@ Register Src="../../../UserControl/ReportMan.ascx" TagName="ReportMan" TagPrefix="uc4" %>
<%@ Register Src="../../../UserControl/CheckReportPurControl.ascx" TagName="CheckReportPurControl"
    TagPrefix="uc5" %>
<%@ Register Src="../../../UserControl/GetBillExAttrControl.ascx" TagName="GetBillExAttrControl"
    TagPrefix="uc6" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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

    <script src="../../../js/office/StorageManager/StorageReportList.js" type="text/javascript"></script>

    <title>�ʼ챨�浥�б�</title>

    <script type="text/javascript">
    function selectReport()
    {
      var TheFromType=document.getElementById('sltFromType').value;
        if(TheFromType=="1")
        {
           popReportObj.ShowList(2);
        }
        if(TheFromType=="2")
        {
            popReportFromTypeObj.ShowFromTypeList(2);
        }
        if(TheFromType=="3")
        {
            popReportManObj.ShowList(2);
        }
        if(TheFromType=="4")
        {
            popReportPurObj.ShowList(0);
        }
    }
    function FillFromArrive(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r)
    {
       document.getElementById('tbReportNo').value=q;
       document.getElementById('divPurchaseArrive').style.display='none';
    }
    function SelectAllList()
    {
        var cb=document.getElementsByName('cbboxall');
        for(var i=0;i<cb.length;i++)
        {
            if(cb[i].checked)
            {
                cb[i].checked=false;
            }
            else
            {
                cb[i].checked=true;
            }
        }
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
    <uc2:CheckApplay ID="CheckApplay1" runat="server" />
    <uc3:ReportFrom ID="ReportFrom1" runat="server" />
    <input id="isreturn" value="0" type="hidden" />
    <uc5:CheckReportPurControl ID="CheckReportPurControl1" runat="server" />
    <!-- Start �� Ϣ �� ʾ -->
    <uc1:Message ID="Message1" runat="server" />
    <!-- End �� Ϣ �� ʾ -->
    <table width="95%" height="57" border="0" cellpadding="0" cellspacing="0" class="checktable"
        id="mainindex">
        <tr>
            <td valign="top">
                <img src="../../../images/Main/Line.jpg" width="122" height="7" />
                <uc4:ReportMan ID="ReportMan1" runat="server" />
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
                &nbsp;
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
                                        Դ������
                                    </td>
                                    <td bgcolor="#FFFFFF" width="24%">
                                        <select runat="server" id="sltFromType">
                                            <option value="00">--��ѡ��--</option>
                                            <option value="0">����Դ</option>
                                            <option value="1">�������뵥</option>
                                            <option value="2">�ʼ챨�浥</option>
                                            <option value="3">��������</option>
                                            <option value="4">�ɹ�������</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        ��ӦԴ�����
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <input id="tbReportID" type="hidden" class="tdinput" width="95%" />
                                        <input id="tbReportNo" runat="server" onclick="selectReport();" type="text" class="tdinput"
                                            width="99%" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        �ʼ����
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <select runat="server" id="sltCheckType">
                                            <option selected value="00">--��ѡ��--</option>
                                            <option value="1">��������</option>
                                            <option value="2">���̼���</option>
                                            <option value="3">���ռ���</option>
                                        </select>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ���鷽ʽ
                                    </td>
                                    <td width="24%" bgcolor="#FFFFFF">
                                        <select runat="server" id="sltCheckMode" name="sltCheckMode">
                                            <option value="00">--��ѡ��--</option>
                                            <option value="1">ȫ��</option>
                                            <option value="2">���</option>
                                            <option value="3">�ټ�</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        ������Ա
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <asp:TextBox ID="UserPrincipal" runat="server" onclick="alertdiv('UserPrincipal,hiddenChecker');"
                                            ReadOnly="true" CssClass="tdinput" Width="95%"></asp:TextBox>
                                        <input type="hidden" id="hiddenChecker" value="0" runat="server" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ���첿��
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <asp:TextBox ID="DeptName" runat="server" onclick="alertdiv('DeptName,hiddenCheckDept');"
                                            ReadOnly="true" CssClass="tdinput" Width="95%"></asp:TextBox>
                                        <input type="hidden" id="hiddenCheckDept" runat="server" value="0" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ����״̬
                                    </td>
                                    <td width="24%" bgcolor="#FFFFFF">
                                        <select runat="server" id="ddlFlowStatus">
                                            <option value="00">--��ѡ��--</option>
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
                                            onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('EndCheckDate')})" />
                                        ��<input id="EndTime" class="tdinput" runat="server" readonly="readonly" style="width: 90px"
                                            onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('EndCheckDate')})" />
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        ����״̬
                                    </td>
                                    <td width="23%" bgcolor="#FFFFFF">
                                        <select id="sltBillStatus" runat="server">
                                            <option value="00">--��ѡ��--</option>
                                            <option value="1">�Ƶ�</option>
                                            <option value="2">ִ��</option>
                                            <option value="4">�ֹ��ᵥ</option>
                                            <option value="5">�Զ��ᵥ</option>
                                        </select>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right">
                                        <span id="OtherConditon" style="display: none">��������</span>
                                    </td>
                                    <td width="24%" bgcolor="#FFFFFF">
                                        <uc6:GetBillExAttrControl ID="GetBillExAttrControl1" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
                                        <img id="btnQuery" runat="server" visible="false" alt="����" src="../../../images/Button/Bottom_btn_search.jpg"
                                            style='cursor: hand;' onclick='FistSearchReport()' /><input id="myPageIndex" value="00"
                                                type="hidden" />
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
                �ʼ챨�浥�б�
            </td>
        </tr>
        <tr>
            <td height="35" colspan="2" valign="top">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="28" bgcolor="#FFFFFF">
                            <a href="StorageCheckReportAdd.aspx?myAction=fromlist&ModuleID=2071201">
                                <img id="btnAdd" runat="server" visible="false" src="../../../images/Button/Bottom_btn_new.jpg"
                                    alt="�½��ʼ챨��" style='cursor: hand;' border="0" /></a><img id="btnDel" runat="server"
                                        visible="false" src="../../../images/Button/Main_btn_delete.jpg" alt="ɾ���ʼ챨��"
                                        style='cursor: hand;' border="0" onclick="Fun_Delete_Report();" />
                            <asp:ImageButton ID="btnImport" OnClientClick="return IsOut();" ImageUrl="../../../images/Button/Main_btn_out.jpg"
                                runat="server" OnClick="btnImport_Click" />
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
                                <div class="orderClick" onclick="OrderBy11('ReportNo','oReportNo');return false;">
                                    ���ݱ��<span id="oReportNo" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('Title','oTitle1');return false;">
                                    ��������<span id="oTitle1" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('FromTypeName','oFromTypeName');return false;">
                                    Դ������<span id="oFromTypeName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('OtherCorpName','oOtherCorpName');return false;">
                                    ������λ<span id="oOtherCorpName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('BigTypeName','oBigTypeName');return false;">
                                    ������λ���<span id="oBigTypeName" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('CheckTypeName','oCheckTypeName2');return false;">
                                    �ʼ����<span id="oCheckTypeName2" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('CheckModeName','oCheckModeName22222');return false;">
                                    ���鷽ʽ<span id="oCheckModeName22222" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('EmployeeName','oEmployeeName2');return false;">
                                    ������Ա<span id="oEmployeeName2" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('DeptName','oDeptName2');return false;">
                                    ���첿��<span id="oDeptName2" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('CheckDate','oCheckDate');return false;">
                                    ��������<span id="oCheckDate" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('BillStatus','oBillStatus');return false;">
                                    ����״̬<span id="oBillStatus" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy11('FlowStatus','oFlowStatus');return false;">
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
