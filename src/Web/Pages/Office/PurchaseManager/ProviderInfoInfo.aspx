<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProviderInfoInfo.aspx.cs" Inherits="Pages_Office_PurchaseManager_ProviderInfoInfo" %>

<%@ Register src="../../../UserControl/Message.ascx" tagname="Message" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<style type="text/css">
         .userListCss
        {
	        position:absolute;top:100px;left:600px;
	        border-width:1pt;border-color:#EEEEEE;border-style:solid;
	        width:200px;
	        display:none;
	        height:220px;
	        z-index:100;
	    }
    </style>
    <script type="text/javascript">
 
function SelectedNodeChanged(code_text,type_code)
{   
   document.getElementById("txtCustClassName").value=code_text;
   document.getElementById("txtCustClass").value=type_code;
   hideUserList();
}
function hidetxtUserList()
{
   hideUserList();
}
function showUserList()
{
  var list = document.getElementById("userList");
  if(list.style.display != "none")
   {
      list.style.display = "none";
      return;
   }
   document.getElementById("userList").style.display = "block";
}
function hideUserList()
{
 document.getElementById("userList").style.display = "none";
}

function clearInfo() {
    document.getElementById("txtCustClassName").value = "";
    document.getElementById("txtCustClass").value = "";
    hideUserList();
}

</script>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" type="text/css" href="../../../css/default.css" />

    <script src="../../../js/common/Check.js" type="text/javascript"></script>
    
    <script src="../../../js/common/Common.js" type="text/javascript"></script>

    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript" src="../../../js/common/PageBar-1.1.1.js"></script>

    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />

    <script src="../../../js/office/PurchaseManager/ProviderInfoInfo.js" type="text/javascript"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>
    
    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>
    
    <script src="../../../js/Calendar/WdatePicker.js" type="text/javascript"></script>

    <title>��Ӧ�̵����б�</title>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Message ID="Message1" runat="server" />
    <!-- ���۶���-->
    <!-- ���۶���-->
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
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        ��Ӧ�̱��
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <asp:TextBox ID="txtCustNo" MaxLength="25" runat="server" CssClass="tdinput" Width="95%"   SpecialWorkCheck="��Ӧ�̱��" ></asp:TextBox>
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right" width="10%">
                                        ��Ӧ������
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <asp:TextBox ID="txtCustName" MaxLength="50" runat="server" CssClass="tdinput" Width="95%"  SpecialWorkCheck="��Ӧ������"  ></asp:TextBox>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right" width="10%">
                                        ��Ӧ�̼��
                                    </td>
                                    <td bgcolor="#FFFFFF" width="24%">
                                        <asp:TextBox ID="txtCustNam" MaxLength="25" runat="server" CssClass="tdinput" Width="95%"  SpecialWorkCheck="��Ӧ�̼��"  ></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        ƴ����д
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <asp:TextBox ID="txtPYShort" MaxLength="25" runat="server" CssClass="tdinput" Width="95%"  SpecialWorkCheck="ƴ����д" ></asp:TextBox>
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right" width="10%">
                                        ��Ӧ�����
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <select name="drpCustType"  class="tdinput" runat="server" id="drpCustType"> </select>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right" width="10%">
                                        ��Ӧ�̷���
                                    </td>
                                    <td bgcolor="#FFFFFF" width="24%">
                                        <asp:TextBox ID="txtCustClassName" runat="server" onclick="showUserList()" ReadOnly="true" CssClass="tdinput" Width="95%"></asp:TextBox>
                                        <input id="txtCustClass" type="hidden" runat="server" />
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        ��������
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <select name="drpAreaID" class="tdinput" width="119px" runat="server" id="drpAreaID"> </select>
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right" width="10%">
                                        ���ʼ���
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <select name="drpCreditGrade" class="tdinput" width="119px" runat="server" id="drpCreditGrade"></select>
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right" width="10%">
                                        �ֹܲɹ�Ա
                                    </td>
                                    <td bgcolor="#FFFFFF" width="24%">
                                        <asp:TextBox ID="UsertxtManager" onclick="alertdiv('UsertxtManager,HidManager');" runat="server"
                                             ReadOnly="true" CssClass="tdinput" Width="95%"></asp:TextBox>
                                             <input type="hidden" id="HidManager" runat="server" />
                                    </td>
                                </tr>
                                <tr class="table-item">
                                    <td height="20" bgcolor="#E7E7E7" align="right" width="10%">
                                        ��������
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        <asp:TextBox ID="txtStartCreateDate" runat="server" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('txtStartCreateDate')})" ReadOnly="true"  CssClass="tdinput" Width="35%"></asp:TextBox>
                                        <asp:TextBox ID="txtZhi" Text="��" ReadOnly="true" runat="server"  CssClass="tdinput" Width="10%"></asp:TextBox><asp:TextBox ID="txtEndCreateDate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('txtEndCreateDate')})" ReadOnly="true"  runat="server" CssClass="tdinput" Width="35%"></asp:TextBox>
                                    </td>
                                    <td bgcolor="#E7E7E7" align="right" width="10%">
                                        
                                    </td>
                                    <td bgcolor="#FFFFFF" width="23%">
                                        
                                    </td>
                                    <td width="10%" bgcolor="#E7E7E7" align="right" width="10%">
                                    </td>
                                    <td bgcolor="#FFFFFF" width="24%">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="center" bgcolor="#FFFFFF">
                                    <input type="hidden" id="hidModuleID" runat="server" />
                                    <input type="hidden" id="hidSearchCondition" name="hidSearchCondition" />
                                        <img id="btnQuery" alt="����" src="../../../images/Button/Bottom_btn_search.jpg" style='cursor: hand;'
                                            onclick='SearchProviderInfoData()' visible="false" runat="server"/>
                                        <%--<img id="btnClear" alt="����" src="../../../images/Button/Bottom_btn_re.jpg" style='cursor: hand;'
                                            onclick="Fun_ClearInput()" width="52" height="23" />--%>
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
                ��Ӧ�̵����б�             </td>
        </tr>
        <tr>
            <td height="35" colspan="2" valign="top">
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="28" bgcolor="#FFFFFF">
                            <%--<a href="MasterProductSchedule_Add.aspx">--%>
                                <%--<img id="btnAdd" src="../../../images/Button/Bottom_btn_new.jpg" alt="����������ƻ���" style='cursor: hand;'
                                    width="51" height="25" border="0" /></a><img id="btnDel" src="../../../images/Button/Main_btn_delete.jpg"
                                        alt="ɾ���������ƻ���" style='cursor: hand;' border="0" onclick="Fun_Delete_MasterProductSchedule();" />--%>
                            <%--                                        <img src="../../../images/Button/Main_btn_submission.jpg" alt="�ύ����" />
                                        <img src="../../../images/Button/Main_btn_verification.jpg" alt="����" />
                                        <img src="../../../images/Button/Bottom_btn_confirm.jpg" alt="ȷ��" />
                                        <img src="../../../images/Button/Main_btn_Invoice.jpg" alt="�ᵥ" />
                                        <img src="../../../images/Button/Main_btn_qxjd.jpg" alt="ȡ���ᵥ" />--%>
                            <img id="btn_create"  src="../../../images/Button/Bottom_btn_new.jpg" alt="�½�" style="cursor:hand;" onclick="CreateProviderInfo()"  runat="server" visible="false" />
                            <img id="btn_del"  src="../../../Images/Button/Main_btn_delete.jpg" alt="ɾ��" style="cursor:hand;" onclick="DelProviderInfo()"  runat="server" visible="false" />
                            <asp:ImageButton ID="btnImport" ImageUrl="../../../images/Button/Main_btn_out.jpg" AlternateText="����Excel" runat="server" onclick="btnImport_Click" />
                            <%--<img id="btnPrint" src="../../../images/Button/Main_btn_print.jpg" alt="��ӡ" />--%>
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
                        <%--<tr>
                            <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                ѡ��
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('PlanNo','oPlanNo');return false;">
                                    ���ݱ��<span id="oPlanNo" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('Subject','oSubject');return false;">
                                    ��������<span id="oSubject" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('Principal','oPrincipal');return false;">
                                    ������<span id="oPrincipal" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('DeptID','oDeptID');return false;">
                                    ����<span id="oDeptID" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('CountTotal','oCountTotal');return false;">
                                    ���������ϼ�<span id="oCountTotal" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('BillStatus','oBillStatus');return false;">
                                    ����״̬<span id="oBillStatus" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('FlowStatus','oFlowStatus');return false;">
                                    ����״̬<span id="oFlowStatus" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('Confirmor','oConfirmor');return false;">
                                    ȷ����<span id="oConfirmor" class="orderTip"></span></div>
                            </th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                <div class="orderClick" onclick="OrderBy('ConfirmDate','oConfirmDate');return false;">
                                    ȷ������<span id="oConfirmDate" class="orderTip"></span></div>
                            </th>
                        </tr>--%>
                        <tr>
                            <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">ѡ��<input type="checkbox" visible="false" id="checkall" onclick="SelectAll()" value="checkbox" /></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy('CustNo','oCustNo');return false;">��Ӧ�̱��<span id="oCustNo" class="orderTip"></span></div></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy('CustName','oCustName');return false;">��Ӧ������<span id="oCustName" class="orderTip"></span></div></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy('CustNam','oCustNam');return false;">��Ӧ�̼��<span id="oCustNam" class="orderTip"></span></div></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy('PYShort','oPYShort');return false;">��Ӧ��ƴ������<span id="oPYShort" class="orderTip"></span></div></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy('CustTypeName','oCustTypeName');return false;">��Ӧ�����<span id="oCustTypeName" class="orderTip"></span></div></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy('CustClassName','oCustClassName');return false;">��Ӧ�̷���<span id="oCustClassName" class="orderTip"></span></div></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy('AreaName','oAreaName');return false;">��������<span id="oAreaName" class="orderTip"></span></div></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy('ManagerName','oManagerName');return false;">�ֹܲɹ�Ա<span id="oManagerName" class="orderTip"></span></div></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy('CreditGradeName','oCreditGradeName');return false;">���ʼ���<span id="oCreditGradeName" class="orderTip"></span></div></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy('CreatorName','oCreatorName');return false;">������<span id="oCreatorName" class="orderTip"></span></div></th>
                            <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF"><div class="orderClick" onclick="OrderBy('CreateDate','oCreateDate');return false;">��������<span id="oCreateDate" class="orderTip"></span></div></th>
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
                                        <div id="pageDataList1_PagerList" class="jPagerBar">
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
                <br />
            </td>
        </tr>
    </table>
    <a name="pageDataList1Mark"></a><span id="Forms" class="Spantype"></span>
<div id="userList" class="userListCss" style="overflow-x:hidden;overflow-y:scroll">
<iframe id="aaaa" style="position: absolute; z-index: -1; width:400px; height:100px;" frameborder="1">  </iframe>
<table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td height="20" bgcolor="#E6E6E6" class="Blue">
          <table width="100%" border="0" cellspacing="0" cellpadding="">
              <tr>
                <td width="65%">��Ӧ�̷���&nbsp;&nbsp;&nbsp;<a href="#" onclick="clearInfo();">���</a></td>
                <td align="right">
                <img src="../../../Images/Pic/Close.gif" title="�ر�" style="CURSOR: pointer"  onclick="document.all['userList'].style.display='none';"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>
              </tr>
          </table>
          </td>
        </tr>
        <tr><td bgcolor="#F4F0ED" height="200" valign="top">
            <asp:TreeView ID="TreeView1" runat="server" ShowLines="True">
    </asp:TreeView>
</td></tr>
     </table>
</div>
    </form>
</body>
</html>


