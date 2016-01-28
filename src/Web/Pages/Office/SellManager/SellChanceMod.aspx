<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SellChanceMod.aspx.cs" Inherits="Pages_Office_SellManager_SellChanceMod" %>

<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc1" %>
<%@ Register Src="../../../UserControl/CodeTypeDrpControl.ascx" TagName="CodeTypeDrpControl"
    TagPrefix="uc2" %>
<%@ Register Src="../../../UserControl/CodingRuleControl.ascx" TagName="CodingRuleControl"
    TagPrefix="uc3" %>
<%@ Register Src="../../../UserControl/sellModuleSelectCustUC.ascx" TagName="sellModuleSelectCustUC"
    TagPrefix="uc4" %>
<%@ Register src="../../../UserControl/Common/GetExtAttributeControl.ascx" tagname="GetExtAttributeControl" tagprefix="uc5" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�޸����ۻ���</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" type="text/css" href="../../../css/default.css" />
    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />

    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript" src="../../../js/common/PageBar-1.1.1.js"></script>

    <script src="../../../js/JQuery/formValidator.js" type="text/javascript"></script>

    <script src="../../../js/JQuery/formValidatorRegex.js" type="text/javascript"></script>

    <script src="../../../js/common/UploadFile.js" type="text/javascript"></script>

    <script src="../../../js/Calendar/WdatePicker.js" type="text/javascript"></script>

    <script src="../../../js/common/check.js" type="text/javascript"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>

    <script src="../../../js/common/Common.js" type="text/javascript"> </script>

    <script src="../../../js/common/TreeView.js" type="text/javascript"></script>

    <script src="../../../js/office/SellManager/SellChanceMod.js" type="text/javascript"></script>

</head>
<body>
    <form id="SellChanceForm" runat="server">
    <script type="text/javascript">
        var precisionLength=<%=SelPoint %>;//С������
    </script>
    <div id="treeDiv1" style="display: none; width: 300px; margin: 0; height: 400px;
        overflow: auto; background: #f1f1f1; border: solid 1px #999999;">
    </div>
    <div id="popupContent">
    </div>
    <span id="Forms" class="Spantype"></span>
    <uc1:Message ID="Message1" runat="server" />
    <input type="hidden" id="hiddDeptID" />
    <input id="hiddSeller" type="hidden" />
    <input id="hiddSeller1" type="hidden" />
    <input type="hidden" id="HiddenURLParams" runat="server" />
    <input id="sellChanceID" type="hidden" runat="server" /><!--���ۻ���ID-->
    <input id="hiddCurenctTime" type="hidden" runat="server" /><!--��ǰʱ��-->
    <uc4:sellModuleSelectCustUC ID="sellModuleSelectCustUC1" runat="server" />
    <table width="95%" height="57" border="0" cellpadding="0" cellspacing="0" class="maintable"
        id="mainindex">
        <tr>
            <td valign="top">
                <input type="hidden" id="hiddenEquipCode" value="" />
                <img src="../../../images/Main/Line.jpg" width="122" height="7" />
            </td>
            <td align="center" valign="top">
            </td>
        </tr>
        <tr>
            <td height="30" colspan="2" valign="top" class="Title">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td height="30" align="center" class="Title">
                            ���ۻ���
                        </td>
                    </tr>
                </table>
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="28" bgcolor="#FFFFFF" style="padding-top: 5px; padding-left: 5px;">
                            <table width="100%">
                                <tr>
                                    <td height="28" bgcolor="#FFFFFF" style="padding-top: 5px; padding-left: 5px;">
                                        <img runat="server" visible="false" src="../../../images/Button/Bottom_btn_save.jpg"
                                            alt="����" id="btn_save" style="cursor: hand" onclick="InsertChanceData();" />
                                        <img src="../../../Images/Button/Bottom_btn_back.jpg" alt="����" id="ibtnBack" style="cursor: hand"
                                            onclick="fnBack();" />
                                        <asp:HiddenField ID="hiddAcction" runat="server" Value="update" />
                                    </td>
                                    <td align="right" bgcolor="#FFFFFF" style="padding-top: 5px; width: 70px;">
                                        <img id="btnPrint" alt="��ӡ" src="../../../images/Button/Main_btn_print.jpg" style="cursor: pointer"
                                            title="��ӡ" onclick="fnPrintOrder()" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" valign="top">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td height="6">
                        </td>
                    </tr>
                </table>
                <table width="99%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="20" bgcolor="#F4F0ED" class="Blue">
                            <table width="100%" border="0" cellspacing="0" cellpadding="3">
                                <tr>
                                    <td>
                                        ���ۻ�����Ϣ
                                    </td>
                                    <td align="right">
                                        <div id='searchClick'>
                                            <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('Tb_01','searchClick')" /></div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table width="99%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#999999"
                    id="Tb_01">
                    <tr>
                        <td height="20" align="right" bgcolor="#E6E6E6" style="width: 10%;">
                            ������<span class="redbold">*</span>
                        </td>
                        <td height="20" bgcolor="#FFFFFF" style="width: 22%;">
                            <input id="ChanceNo" class="tdinput" readonly="readonly" style="width: 95%;" type="text" />
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%;">
                            ��������
                        </td>
                        <td height="20" bgcolor="#FFFFFF" style="width: 22%;">
                            <input id="Title" specialworkcheck="��������" type="text" class="tdinput" style="width: 95%;"
                                maxlength="50" />
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%;">
                            ��������
                        </td>
                        <td height="20" bgcolor="#FFFFFF">
                            <uc2:CodeTypeDrpControl ID="chanceTypeUC" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                            �ͻ�����<span class="redbold">*</span>
                        </td>
                        <td height="20" bgcolor="#FFFFFF">
                            <input id="CustID" class="tdinput" type="text" readonly="readonly" style="width: 99%;"
                                onclick="popSellCustObj.ShowList('protion');" />
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                            �ͻ��绰
                        </td>
                        <td height="20" bgcolor="#FFFFFF">
                            <input id="CustTel" specialworkcheck="�ͻ��绰" class="tdinput" type="text" style="width: 99%"
                                maxlength="50" />
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                            �ͻ�����
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF">
                            <input id="CustType" class="tdinput" type="text" readonly="readonly" style="width: 99%" />
                        </td>
                    </tr>
                    <tr>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                            ������Դ
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF">
                            <uc2:CodeTypeDrpControl ID="HapSourceUC" runat="server" />
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                            ��������<span class="redbold">*</span>
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF">
                            <input style="width: 99%" readonly="readonly" id="FindDate" class="tdinput" type="text"
                                onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('FindDate')})" />
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                            ҵ��Ա<span class="redbold">*</span>
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF">
                            <input id="UserSeller" class="tdinput" onclick="alertdiv('UserSeller,hiddSeller');"
                                readonly="readonly" style="width: 99%" type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                            ����<span class="redbold">*</span>
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF">
                            <input id="DeptId" class="tdinput" onclick="alertdiv('DeptId,hiddDeptID');" readonly="readonly"
                                style="width: 99%" type="text" />
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                            �ṩ��
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF">
                            <input id="ProvideMan" specialworkcheck="�ṩ��" class="tdinput" type="text" maxlength="25"
                                style="width: 99%" />
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF">
                        </td>
                    </tr>
                    <tr>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                            �ֻ���������<input type="checkbox" id ="cbIsMobileNotice" onclick="SetIsMobileNotice(this);"  />
                       </td>
                       <td height="20" align="left" bgcolor="#FFFFFF">
                           <input name="txtRemind" id="txtRemind" class="tdinput" type="text" size="18" readonly="readonly" value ="�����ѡ������ʱ��" disabled="disabled"
                                onclick="WdatePicker()" style="width:70%" />
                                 <select id="selCompleteDateHour" disabled="disabled" style="width:20%">
                                   <option value='00'>00</option><option value='01'>01</option>
                                   <option value='02'>02</option><option value='03'>03</option>
                                   <option value='04'>04</option><option value='05'>05</option>
                                   <option value='06'>06</option><option value='07'>07</option>
                                   <option value='08'>08</option><option value='09'>09</option>
                                   <option value='10'>10</option><option value='11'>11</option>
                                   <option value='12'>12</option><option value='13'>13</option>
                                   <option value='14'>14</option><option value='15'>15</option>
                                   <option value='16'>16</option><option value='17'>17</option>
                                   <option value='18'>18</option><option value='19'>19</option>
                                   <option value='20'>20</option><option value='21'>21</option>
                                   <option value='22'>22</option><option value='23'>23</option>
                               </select>ʱ
                       </td>
                       <td height="20" align="right" bgcolor="#E6E6E6">
                            �����ֻ���
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF">
                           <input id="RemindMTel" class="tdinput" type="text" disabled="disabled" />
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                            ������
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF">
                           <input id="UserReceiverName" class="tdinput" type="text" disabled="disabled" readonly="readonly" onclick="alertdiv('UserReceiverName,hiddReceiverID');" />
                           <input id="hiddReceiverID" type="hidden" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                            ��������
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF" colspan="5" style="width:89%">
                           <%--<input id="RemindContent" specialworkcheck="��������" class="tdinput" type="text" disabled="disabled" style="width:98%" />--%>
                           <textarea id="RemindContent" specialworkcheck="��������"   rows="3" cols="100" style="width: 95%" disabled="disabled"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td height="20" align="right" bgcolor="#E6E6E6" style="width: 10%">
                            ��������
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF" colspan="5" style="width: 89%">
                            <textarea specialworkcheck="��������" id="Requires" rows="3" cols="100" style="width: 95%"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td height="20" align="right" bgcolor="#E6E6E6" style="width: 10%">
                            �ɲ鿴�û�����Ա
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF" colspan="5" style="width: 89%">
                            <textarea id="CanViewUserName" readonly="readonly" onclick="treeview1.show()" rows="3"
                                cols="100" style="width: 95%"></textarea>
                            <input type="hidden" id="CanViewUserNameHidden" />
                            
                        </td>
                    </tr>
                </table>
                 <uc5:GetExtAttributeControl ID="GetExtAttributeControl1" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
           
                <br />
                
                <table width="99%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="20" bgcolor="#F4F0ED" class="Blue">
                            <table width="100%" border="0" cellspacing="0" cellpadding="3">
                                <tr>
                                    <td>
                                        Ԥ����Ϣ
                                    </td>
                                    <td align="right">
                                        <div id='Div1'>
                                            <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('Table4','Div1')" />
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999"
                    id="Table4">
                    <tr>
                        <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%;">
                            Ԥ�ڽ��<span class="redbold">*</span>
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF" style="width: 22%;">
                            <input id="IntendMoney" onchange="Number_round(this,<%=SelPoint %>)" class="tdinput" type="text"
                                style="width: 99%" maxlength="8" value="" />
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%;">
                            Ԥ��ǩ����<span class="redbold">*</span>
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF" style="width: 22%;">
                            <input style="width: 99%" readonly="readonly" id="IntendDate" class="tdinput" type="text"
                                onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('IntendDate')})" />
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%;">
                            &nbsp;
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF" style="width: 56%;">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <table width="99%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="20" bgcolor="#F4F0ED" class="Blue">
                            <table width="100%" border="0" cellspacing="0" cellpadding="3">
                                <tr>
                                    <td>
                                        ��ע��Ϣ
                                    </td>
                                    <td align="right">
                                        <div id='searchClick2'>
                                            <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('Table3','searchClick2')" />
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999"
                    id="Table3">
                    <tr>
                        <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%;">
                            �Ƶ���
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF" style="width: 22%;">
                            <asp:TextBox ID="Creator" Width="120px" runat="server" CssClass="tdinput" ReadOnly="True"
                                Enabled="false"></asp:TextBox>
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%;">
                            �Ƶ�����
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF" style="width: 22%;">
                            <asp:TextBox ID="CreateDate" runat="server" Width="120px" CssClass="tdinput" ReadOnly="True"
                                Enabled="false"></asp:TextBox>
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%;">
                            ��������
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF" style="width: 23%;">
                            <asp:TextBox ID="ModifiedUserID" runat="server" Width="120px" CssClass="tdinput"
                                ReadOnly="True" Enabled="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                            ����������
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF">
                            <asp:TextBox ID="ModifiedDate" runat="server" Width="120px" CssClass="tdinput" ReadOnly="True"
                                Enabled="false"></asp:TextBox>
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                            �Ƿ񱻱���&nbsp;
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF">
                            <input id="IsQuoted" class="tdinput" type="text" disabled="disabled" style="width: 20px;"
                                maxlength="8" value="��" />
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF">
                        </td>
                    </tr>
                    <tr>
                        <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%;">
                            ��ע
                        </td>
                        <td height="20" colspan="5" align="left" bgcolor="#FFFFFF" style="width: 89%;">
                            <textarea specialworkcheck="��ע" id="Remark" rows="3" cols="100" style="width: 95%"></textarea>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <table width="99%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="20" bgcolor="#F4F0ED" class="Blue">
                            <table width="100%" border="0" cellspacing="0" cellpadding="3">
                                <tr>
                                    <td>
                                        <span class="Blue">���ۻ����ƽ�</span>
                                    </td>
                                    <td align="right">
                                        <div id='searchClick3'>
                                            <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('TableTJ','searchClick3')" /></div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table width="99%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#999999"
                    id="TableTJ">
                    <tr>
                        <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%;">
                            ����<span class="redbold">*</span>
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF" style="width: 22%;">
                            <input style="width: 99%" readonly="readonly" id="PushDate" class="tdinput" type="text"
                                onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('PushDate')})" />
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%;">
                            �׶�<span class="redbold">*</span>
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF" style="width: 22%;">
                            <select style="width: 120px; margin-top: 2px; margin-left: 2px;" id="Phase">
                                <option value="1">���ڹ�ͨ</option>
                                <option value="2">��������</option>
                                <option value="3">�������</option>
                                <option value="4">����ָ��</option>
                                <option value="5">��Ͷ��/����</option>
                                <option value="6">����̸��</option>
                                <option value="7">��ͬǩԼ</option>
                            </select>
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%;">
                            ״̬<span class="redbold">*</span>
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF" style="width: 23%;">
                            <select style="width: 120px; margin-top: 2px; margin-left: 2px;" id="State">
                                <option value="1">����</option>
                                <option value="2">�ɹ�</option>
                                <option value="3">ʧ��</option>
                                <option value="4">����</option>
                                <option value="5">ʧЧ</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                            ҵ��Ա<span class="redbold">*</span>
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF">
                            <input id="UserSeller1" class="tdinput" onclick="alertdiv('UserSeller1,hiddSeller1');"
                                readonly="readonly" style="width: 99%" type="text" />
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                            ���������
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF">
                            <uc2:CodeTypeDrpControl ID="FeasibilityUC" runat="server" />
                        </td>
                        <td height="20" align="right" bgcolor="#E6E6E6">
                            ����ʱ��(��)<span class="redbold">*</span>
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF">
                            <input id="DelayDate" class="tdinput" maxlength="8" type="text" style="width: 99%"
                                value="" />
                        </td>
                    </tr>
                    <tr>
                        <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%;">
                            ��ע
                        </td>
                        <td height="20" align="left" bgcolor="#FFFFFF" colspan="5" style="width: 89%;">
                            <textarea id="Remark1" specialworkcheck="���ۻ����ƽ���ע" rows="3" cols="100" style="width: 95%"></textarea>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <table width="99%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="20" bgcolor="#F4F0ED" class="Blue">
                            <table width="100%" border="0" cellspacing="0" cellpadding="3">
                                <tr>
                                    <td>
                                        <span class="Blue">���ۻ����ƽ���ʷ</span>
                                    </td>
                                    <td align="right">
                                        <div id='Div2'>
                                            <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('Table2','Div2')" /></div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"
                    id="Table2">
                    <tr>
                        <td>
                            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" id="chanceList"
                                bgcolor="#999999">
                                <tbody>
                                    <tr style="height: 20px;">
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick">
                                                �׶�</div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick">
                                                ����</div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick">
                                                ҵ��Ա</div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick">
                                                ״̬</div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick">
                                                ������</div>
                                        </th>
                                        <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                                            <div class="orderClick">
                                                �׶α�ע</div>
                                        </th>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <script src="../../../js/common/Flow.js" type="text/javascript"></script>
    
    </form>
</body>
</html>
