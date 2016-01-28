<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SellOrderAdd.aspx.cs" Inherits="Pages_Office_SellManager_SellOrderAdd" %>

<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc7" %>
<%@ Register Src="../../../UserControl/CodingRuleControl.ascx" TagName="CodingRuleControl"
    TagPrefix="uc3" %>
<%@ Register Src="../../../UserControl/CodeTypeDrpControl.ascx" TagName="CodeTypeDrpControl"
    TagPrefix="uc2" %>
<%@ Register Src="../../../UserControl/SelectSellOfferUC.ascx" TagName="SelectSellOfferUC"
    TagPrefix="uc1" %>
<%@ Register Src="../../../UserControl/sellModuleSelectCustUC.ascx" TagName="sellModuleSelectCustUC"
    TagPrefix="uc4" %>
<%@ Register Src="../../../UserControl/ProductInfoControl.ascx" TagName="ProductInfoControl"
    TagPrefix="uc5" %>
<%@ Register Src="../../../UserControl/SelectSellContractUC.ascx" TagName="SelectSellContractUC"
    TagPrefix="uc8" %>
<%@ Register Src="../../../UserControl/SellModuleSelectFeeTypeUC.ascx" TagName="SellModuleSelectFeeTypeUC"
    TagPrefix="uc9" %>
<%@ Register Src="../../../UserControl/FlowApply.ascx" TagName="FlowApply" TagPrefix="uc6" %>
<%@ Register Src="../../../UserControl/SellModuleSelectCurrency.ascx" TagName="SellModuleSelectCurrency"
    TagPrefix="uc10" %>
<%@ Register Src="../../../UserControl/GetGoodsInfoByBarCode.ascx" TagName="GetGoodsInfoByBarCode"
    TagPrefix="uc11" %> 
<%@ Register src="../../../UserControl/SelectSellChance.ascx" tagname="SelectSellChance" tagprefix="uc12" %>
<%@ Register Src="../../../UserControl/Common/StorageSnapshot.ascx" TagName="StorageSnapshot"
    TagPrefix="uc13" %>
<%@ Register Src="../../../UserControl/Common/GetExtAttributeControl.ascx" TagName="GetExtAttributeControl"
    TagPrefix="uc14" %>   
<%@ Register Src="../../../UserControl/Common/ProjectSelectControl.ascx" TagName="ProjectSelectControl" TagPrefix="uc15" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>���۶���</title>
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

    <script src="../../../js/common/DeleteFile.js" type="text/javascript"></script>

    <script src="../../../js/office/SellManager/SellOrderAdd.js" type="text/javascript"></script>
    <script src="../../../js/common/UnitGroup.js" type="text/javascript"></script>
</head>
<body onload="formatNumLen()">
    <form id="EquipAddForm" runat="server">
    <div id="popupContent">
    </div>
    <span id="Forms" class="Spantype"></span>
    <uc7:Message ID="Message1" runat="server" />
    <uc11:GetGoodsInfoByBarCode ID="GetGoodsInfoByBarCode1" runat="server" />
    <uc13:StorageSnapshot ID="StorageSnapshot1" runat="server" /> 
    <uc1:SelectSellOfferUC ID="SelectSellOfferUC1" runat="server" />
    <uc4:sellModuleSelectCustUC ID="sellModuleSelectCustUC1" runat="server" />
    <uc5:ProductInfoControl ID="ProductInfoControl1" runat="server" />
    <input type='hidden' id="rowIndex" />
    <uc8:SelectSellContractUC ID="SelectSellContractUC1" runat="server" />
    <uc9:SellModuleSelectFeeTypeUC ID="SellModuleSelectFeeTypeUC1" runat="server" />
    <uc15:ProjectSelectControl ID="ProjectSelectControl1" runat="server" /><!--������Ŀ-->
    <input type="hidden" id="OurDelegate" />
    <input id="Seller" type="hidden"  runat="server" />
    <input type="hidden" id="SellDeptId" runat="server" />
    <input type="hidden" id='hiddBillStatus' value='1' />
    <input type="hidden" id="hiddOrderID" value='0' />
    <input type="hidden" id="HiddenURLParams" runat="server" />
    <asp:HiddenField ID="hfAttachment" runat="server" />
    <asp:HiddenField ID="hfPageAttachment" runat="server" />
    <input type='hidden' id='txtTRLastIndex' value="0" />
    <input type='hidden' id='hiddFeeIndex' value="0" />
    <input type ="hidden" id="txtIsMoreUnit" runat="server" /><!--�Ƿ����ö൥λ-->

    <script type="text/javascript">
    var glb_BillTypeFlag =<%=XBase.Common.ConstUtil.CODING_RULE_SELL %>;
    var glb_BillTypeCode = <%=XBase.Common.ConstUtil.CODING_RULE_SELLORDER_NO %>;
    var glb_BillID = 0;                                //����ID
    var glb_IsComplete = true;                                          //�Ƿ���Ҫ�ᵥ��ȡ���ᵥ(Сд��ĸ)
    var FlowJS_HiddenIdentityID ='hiddOrderID';                      //���������������ID
    var FlowJs_BillNo ='SellOrderUC_txtCode';          //��ǰ���ݱ�������
    var FlowJS_BillStatus ='hiddBillStatus';                             //����״̬ID
     eventObj.Table = 'dg_Log';//�����¼��õ�
    
    var precisionLength=<%=SelPoint %>;//С������
    //ת����ʼ��ֵС��λ��
    function formatNumLen()
    {
        var lengthstr="0.";
        var lengthstr2="100.";
        for(var i=0;i<precisionLength;i++)
        {
            lengthstr = lengthstr+"0";
            lengthstr2 = lengthstr2+"0";
        }
        $("#TotalPrice").val(lengthstr);
        $("#Tax").val(lengthstr);
        $("#TotalFee").val(lengthstr);
        $("#DiscountTotal").val(lengthstr);
        $("#RealTotal").val(lengthstr);
        $("#CountTotal").val(lengthstr);
        $("#SaleFeeTotal").val(lengthstr);
        $("#huikuan").val(lengthstr);
        $("#Discount").val(lengthstr2);
    }
    </script>

    <uc6:FlowApply ID="FlowApply1" runat="server" />
    <uc10:SellModuleSelectCurrency ID="SellModuleSelectCurrency2" runat="server" />
    <uc12:SelectSellChance ID="SelectSellChance1" runat="server" />
    <script src="../../../js/common/Flow.js" type="text/javascript"></script>
    <div <%--style="height: 500px; overflow: scroll;"--%>>
        <table width="95%" height="57" border="0" cellpadding="0" cellspacing="0" class="maintable"
            id="mainindex">
            <tr>
                <td valign="top">
                    <input type="hidden" id="hiddenEquipCode" value="" />
                    <img src="../../../images/Main/Line.jpg" width="122" height="7" alt=""/>
                </td>
                <td align="center" valign="top">
                </td>
            </tr>
            <tr>
                <td height="30" colspan="2" valign="top" class="Title">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td height="30" align="center" class="Title">
                                �½����۶���
                            </td>
                        </tr>
                    </table>
                    <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                        <tr>
                            <td height="28" bgcolor="#FFFFFF" style="padding-top: 5px; padding-left: 5px;">
                            <table width="100%">
                                <tr>
                                    <td height="28" bgcolor="#FFFFFF" style="padding-top: 5px; padding-left: 5px;">
                                       
                                        <img visible="false" runat="server" src="../../../images/Button/Bottom_btn_save.jpg"
                                    alt="����" id="btn_save" style="cursor: hand" onclick="InsertSellOfferData();" />
                                <img src="../../../images/Button/Bottom_btn_save.jpg" alt="����" id="btn_update" style="cursor: hand;
                                    margin: 0px; display: none;" onclick="UpdateSellOfferData();" />
                                <img visible="false" runat="server" alt="����" src="../../../Images/Button/UnClick_bc.jpg"
                                    id="imgUnSave" style="display: none;" />
                                <span visible="false" runat="server" id="GlbFlowButtonSpan"></span>
                                <img src="../../../Images/Button/Bottom_btn_back.jpg" style="display: none; cursor: hand"
                                    alt="����" id="ibtnBack" onclick="fnBack();" />
                                    </td>
                                    <td align="right" bgcolor="#FFFFFF" style="padding-top: 5px; width: 70px;">
                                        <img id="btnPrint" alt="��ӡ" src="../../../images/Button/Main_btn_print.jpg" style="cursor: pointer"
                                            title="��ӡ"  onclick="fnPrintOrder()"  />
                                    </td>
                                </tr>
                            </table>
                               <!-- �������ã��Ƿ��������� -->
                                <input type="hidden" id="hidBarCode" runat="server" value="" />
                             
                            </td>
                           
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2" valign="top">
                    <table width="99%" border="0" cellspacing="0" cellpadding="0">
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
                                        <td align="left">
                                            ������Ϣ
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
                            <td align="right" bgcolor="#E6E6E6" style="width: 10%">
                                �������<span class="redbold">*</span>
                            </td>
                            <td bgcolor="#FFFFFF" style="width: 23%">
                                <uc3:CodingRuleControl ID="SellOrderUC" runat="server" />
                            </td>
                            <td align="right" bgcolor="#E6E6E6" style="width: 10%">
                                ����
                            </td>
                            <td bgcolor="#FFFFFF" style="width: 23%">
                                <input name="Title" id="Title" specialworkcheck="����" type="text" style="width: 95%;"
                                    class="tdinput" maxlength="50" />
                            </td>
                            <td align="right" bgcolor="#E6E6E6" style="width: 10%">
                                Դ������
                            </td>
                            <td bgcolor="#FFFFFF" style="width: 24%">
                                <select  style="width: 120px;margin-top:2px;margin-left:2px;" id="FromType" onchange="fnFromTypeChange(this)">
                                    <option value="0" selected="selected">����Դ</option>
                                     <option value="3">���ۻ���</option>
                                    <option value="1">���۱��۵�</option>
                                    <option value="2">���ۺ�ͬ</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                Դ�����
                            </td>
                            <td height="20" bgcolor="#FFFFFF">
                                <input name="FromBillID" id="FromBillID" onclick="fnSelectOfferInfo()" class="tdinput"
                                    type="text" readonly="true" style="width: 95%;" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                �ͻ�����<span class="redbold">*</span>
                            </td>
                            <td height="20" bgcolor="#FFFFFF">
                                <input name="CustID" id="CustID" class="tdinput" type="text" readonly="readonly"
                                    style="width: 95%;" onclick="fnSelectCustInfo()" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                �ͻ��绰
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input id="CustTel" specialworkcheck="�ͻ��绰" class="tdinput" type="text" style="width: 95%;"
                                    maxlength="25" />
                            </td>
                        </tr>
                        <tr>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ҵ������
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <select name="BusiType"  style="width: 120px;margin-top:2px;margin-left:2px;" id="BusiType">
                                    <option value="1">��ͨ����</option>
                                    <option value="2">ί�д���</option>
                                    <option value="3">ֱ��</option>
                                    <option value="4">����</option>
                                    <option value="5">���۵���</option>
                                </select>
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                �������
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <uc2:CodeTypeDrpControl ID="sellTypeUC" runat="server" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ���㷽ʽ
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <uc2:CodeTypeDrpControl ID="PayTypeUC" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ֧����ʽ
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <uc2:CodeTypeDrpControl ID="MoneyTypeUC" runat="server" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ������ʽ
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <uc2:CodeTypeDrpControl ID="OrderMethod" runat="server" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ������ʽ
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <uc2:CodeTypeDrpControl ID="TakeType" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ���ͷ�ʽ
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <uc2:CodeTypeDrpControl ID="CarryType" runat="server" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ����<span class="redbold">*</span>
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input id="CurrencyType" class="tdinput" type="text" onclick="fnSelectCurrency()"
                                    readonly="readonly" style="width: 95%;" maxlength="100" runat="server" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ����
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input name="Rate" id="Rate" style="width: 95%;" class="tdinput" type="text" disabled="disabled"
                                    value="0.0000" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ҵ��Ա<span class="redbold">*</span>
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input id="UserSeller" class="tdinput" onclick="fnSelectSeller()" readonly="readonly"
                                    style="width: 95%;" type="text" runat="server" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ����<span class="redbold">*</span>
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input id="DeptId" class="tdinput" onclick="fnSelectDept()" readonly="readonly" style="width: 95%;"
                                    type="text" runat="server" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                �ͻ�������
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input id="TheyDelegate" onclick="" class="tdinput" type="text" style="width: 95%;"
                                    specialworkcheck="�ͻ�������" maxlength="25" />
                            </td>
                        </tr>
                        <tr>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                �ҷ�����
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input id="UserOurDelegate" readonly="readonly" style="width: 95%;" class="tdinput"
                                    type="text" onclick="alertdiv('UserOurDelegate,OurDelegate');" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ǩ������<span class="redbold">*</span>
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <asp:TextBox ID="OrderDate" runat="server" Width="90%" class="tdinput" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('OrderDate')})"
                                    ReadOnly="true"></asp:TextBox>
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ��ʼ����
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input name="StartDate" style="width: 95%;" readonly="readonly" id="StartDate" class="tdinput"
                                    type="text" style="width: 95%;" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('StartDate')})" />
                            </td>
                        </tr>
                        <tr>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ��ֹ����
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input name="EndDate" id="EndDate" readonly="readonly" class="tdinput" type="text"
                                    style="width: 95%;" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('EndDate')})" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ��ٷ���ʱ��
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input name="SendDate" style="width: 95%;" readonly="readonly" id="SendDate" class="tdinput"
                                    type="text" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('SendDate')})" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ����״̬
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input type="text" id="State" style="width: 95%" class="tdinput" value="������" disabled="disabled" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" bgcolor="#E6E6E6">
                                �쳣��ֹԭ��
                            </td>
                            <td align="left" bgcolor="#FFFFFF">
                                <input specialworkcheck="�쳣��ֹԭ��" id="StatusNote" class="tdinput" maxlength="50" style="width: 95%"
                                    type="text" />
                            </td>
                            <td align="right" bgcolor="#E6E6E6">
                                �ͻ�������
                            </td>
                            <td bgcolor="#FFFFFF">
                                <input specialworkcheck="�ͻ�������" id="CustOrderNo" class="tdinput" type="text" style="width: 95%;"
                                    maxlength="50" />
                            </td>
                            <td align="right" bgcolor="#E6E6E6">
                                �Ƿ���ֵ˰
                            </td>
                            <td align="left" bgcolor="#FFFFFF">
                                <input id="isAddTax" checked="checked" name="AddTax" onclick="fnAddTax()" type="radio"
                                    value="1" />��
                                <input id="NotAddTax" name="AddTax" onclick="fnAddTax()" type="radio" value="0" />��
                            </td>
                        </tr>
                        <tr>
                            <td align="right" bgcolor="E6E6E6">
                                �ɲ鿴��������Ա
                            </td>
                            <td align="left" bgcolor="#FFFFFF" colspan="3">
                                <asp:TextBox id="UserCanViewUserName" style="width: 98%" ReadOnly="true" CssClass="tdinput" runat="server" onclick="alertdiv('UserCanViewUserName,CanViewUser,2');" >
                                </asp:TextBox>
                                <input id="CanViewUser"  type="hidden" runat="server" />
                            </td>
                            <td align="right" bgcolor="#E6E6E6">
                                ������Ŀ
                            </td>
                            <td align="left" bgcolor="#FFFFFF">
                                <input id="ProjectID" class="tdinput" type="text" style="width:60%" readonly="readonly" onclick="ShowProjectInfo('ProjectID','hiddProjectID');"/>
                                <%--<a href="#" onclick="fnClearProject();">���ѡ��</a>--%>
                                <input id="hiddProjectID" type="hidden" runat="server" />
                            </td>
                        </tr>
                    </table>
                    <!-- ��չ����-->
                    <uc14:GetExtAttributeControl ID="GetExtAttributeControl1" runat="server" />
            
                    <br />
                    <table width="99%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#999999">
                        <tr>
                            <td height="20" bgcolor="#F4F0ED" class="Blue">
                                <table width="100%" border="0" cellspacing="0" cellpadding="3">
                                    <tr>
                                        <td>
                                            �ϼ���Ϣ
                                        </td>
                                        <td align="right">
                                            <div id='searchClick1'>
                                                <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('Tb_02','searchClick1')" /></div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table width="99%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#999999"
                        id="Tb_02">
                        <tr>
                            <td align="right" bgcolor="#E6E6E6" style="width: 11%">
                                ���ϼ�
                            </td>
                            <td bgcolor="#FFFFFF" style="width: 22%">
                                <input id="TotalPrice" disabled="disabled" style="width: 95%;" class="tdinput" type="text"
                                    value="0.00" />
                            </td>
                            <td align="right" bgcolor="#E6E6E6" style="width: 11%">
                                ˰��ϼ�
                            </td>
                            <td bgcolor="#FFFFFF" style="width: 22%">
                                <input id="Tax" disabled="disabled" style="width: 95%;" class="tdinput" type="text"
                                    value="0.00" size="15" />
                            </td>
                            <td align="right" bgcolor="#E6E6E6" style="width: 11%">
                                ��˰���ϼ�
                            </td>
                            <td bgcolor="#FFFFFF" style="width: 23%">
                                <input id="TotalFee" disabled="disabled" style="width: 95%;" class="tdinput" type="text"
                                    value="0.00" size="15" />
                            </td>
                        </tr>
                        <tr>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                �����ۿ�(%)<span class="redbold">*</span>
                            </td>
                            <td height="20" bgcolor="#FFFFFF">
                                <input id="Discount" onchange="Number_round(this,<%=SelPoint %>)" value="100.00" onblur="fnCheckPer(this)"
                                    style="width: 95%;" class="tdinput" type="text" maxlength="8" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                �ۺ�˰���
                            </td>
                            <td height="20" bgcolor="#FFFFFF">
                                <input id="RealTotal" disabled="disabled" style="width: 95%;" class="tdinput" type="text"
                                    value="0.00" size="15" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                �ۿۺϼ�
                            </td>
                            <td height="20" bgcolor="#FFFFFF">
                                <input id="DiscountTotal" disabled="disabled" style="width: 95%;" class="tdinput"
                                    value="0.00" type="text" size="15" />
                            </td>
                        </tr>
                        <tr>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ���������ϼ�
                            </td>
                            <td height="20" bgcolor="#FFFFFF">
                                <input id="CountTotal" disabled="disabled" style="width: 95%;" class="tdinput" type="text"
                                    value="0.00" size="15" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ���۷��úϼ�
                            </td>
                            <td height="20" bgcolor="#FFFFFF">
                                <input id="SaleFeeTotal" disabled="disabled" style="width: 95%;" class="tdinput"
                                    value="0.00" type="text" size="15" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                            </td>
                            <td height="20" bgcolor="#FFFFFF">
                            </td>
                        </tr>
                    </table>
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
                                                <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('Tb_03','searchClick2')" /></div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999"
                        id="Tb_03">
                        <tr>
                            <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%">
                                ����״̬
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF" style="width: 22%">
                                <label id="BillStatus">
                                    �Ƶ�</label>
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%">
                                �Ƶ���
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF" style="width: 22%">
                                <asp:TextBox ID="Creator" Width="120px" runat="server" CssClass="tdinput" Enabled="false"
                                    ReadOnly="True"></asp:TextBox>
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%">
                                �Ƶ�����
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <asp:TextBox ID="CreateDate" runat="server" Width="120px" CssClass="tdinput" Enabled="false"
                                    ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ȷ����
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <asp:TextBox ID="Confirmor" runat="server" Width="120px" CssClass="tdinput" Enabled="false"
                                    ReadOnly="True"></asp:TextBox>
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ȷ������
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <asp:TextBox ID="ConfirmDate" runat="server" Width="120px" CssClass="tdinput" Enabled="false"
                                    ReadOnly="True"></asp:TextBox>
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                �ᵥ��
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <asp:TextBox ID="Closer" runat="server" Width="120px" ReadOnly="True" Enabled="false"
                                    CssClass="tdinput"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                �ᵥ����
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <asp:TextBox ID="CloseDate" runat="server" Width="120px" CssClass="tdinput" Enabled="false"
                                    ReadOnly="True"></asp:TextBox>
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ��������
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <asp:TextBox ID="ModifiedUserID" runat="server" Width="120px" CssClass="tdinput"
                                    Enabled="false" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ����������
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <asp:TextBox ID="ModifiedDate" runat="server" Width="120px" CssClass="tdinput" Enabled="false"
                                    ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ��ע
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input specialworkcheck="��ע" id="Remark" class="tdinput" style="width: 95%" type="text"
                                    maxlength="100" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ��װ����˵��
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input specialworkcheck="��װ����˵��" id="PackTransit" class="tdinput" style="width: 95%"
                                    type="text" maxlength="100" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ����˵��
                            </td>
                            <td height="20" align="left" colspan="3" bgcolor="#FFFFFF">
                                <input specialworkcheck="����˵��" id="PayRemark" class="tdinput" style="width: 95%"
                                    type="text" maxlength="100" />
                            </td>
                        </tr>
                        <tr>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ����˵��
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input specialworkcheck="����˵��" id="DeliverRemark" class="tdinput" style="width: 95%"
                                    type="text" maxlength="100" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ����
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <div id="divUploadAttachment" runat="server">
                                    <a href="#" onclick="DealAttachment('upload');">�ϴ�����</a>
                                </div>
                                <div id="divDealAttachment" runat="server" style="display: none;">
                                    <a href="#" onclick="DealAttachment('download');"><span id='spanAttachmentName' runat="server">
                                    </span></a>&nbsp; <a href="#" onclick="DealAttachment('clear');">ɾ������</a>
                                </div>
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                            </td>
                            <td height="20" align="left" colspan="3" bgcolor="#FFFFFF">
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table width="99%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#999999">
                        <tr>
                            <td height="20" bgcolor="#F4F0ED" class="Blue">
                                <table width="100%" border="0" cellspacing="0" cellpadding="3">
                                    <tr>
                                        <td>
                                            ��ص���״̬
                                        </td>
                                        <td align="right">
                                            <div id='Div2'>
                                                <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('Tb_05','Div2')" /></div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999"
                        id="Tb_05">
                        <tr>
                            <td height="28" align="right" bgcolor="#E6E6E6" style="width: 11%">
                                �������
                            </td>
                            <td height="28" align="left" bgcolor="#FFFFFF" style="width: 22%">
                                δ����
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%">
                                �ؿ�״̬
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF" style="width: 22%">
                                δ�ؿ�
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%">
                                �ѻؿ���
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input id="huikuan" disabled="disabled" style="width: 95%;" class="tdinput" value="0.00"
                                    type="text" />
                            </td>
                        </tr>
                        <tr>
                            <td height="28" align="right" bgcolor="#E6E6E6" style="width: 11%">
                                �������
                            </td>
                            <td height="28" align="left" bgcolor="#FFFFFF" style="width: 22%">
                                δ����
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%">
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF" style="width: 22%">
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%">
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table width="99%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#999999">
                        <tr>
                            <td valign="top" bgcolor="#F4F0ED">
                                <img src="../../../images/Main/Line.jpg" width="122" height="7" />
                            </td>
                            <td align="right" valign="top" bgcolor="#F4F0ED">
                                <img src="../../../images/Main/LineR.jpg" width="122" height="7" />
                            </td>
                        </tr>
                        <tr>
                            <td height="20" bgcolor="#F4F0ED" class="Blue" colspan="2">
                                <table width="100%" border="0" cellspacing="0" cellpadding="3">
                                    <tr>
                                        <td valign="top">
                                            <span class="Blue">������ϸ</span>
                                        </td>
                                        <td align="right" valign="top">
                                            <div id='searchClick3'>
                                                <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('Table2','searchClick3')" /></div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#999999"
                        id="Table2">
                        <tr>
                            <td>
                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                                    <tr>
                                        <td height="28" bgcolor="#FFFFFF" colspan="11" style="padding-top: 5px; padding-left: 5px;">
                                            <img visible="false" runat="server" alt="���" src="../../../images/Button/Show_add.jpg"
                                                id="imgAdd" style="cursor: hand" onclick="AddSignRow();" />
                                            <img visible="false" src="../../../images/Button/btn_Pllr.jpg" alt="����¼��" style="cursor: pointer" id="AddMore"
                                                runat="server" onclick="AddSignRows();" />&nbsp;
                                            <img visible="false" runat="server" alt="ɾ��" src="../../../images/Button/Show_del.jpg"
                                                id="imgDel" style="cursor: hand" onclick="fnDelOneRow()" />
                                            <img visible="false" runat="server" alt="" src="../../../Images/Button/UnClick_tj.jpg"
                                                style="display: none;" id="imgUnAdd" />
                                            <img visible="false" runat="server" alt="" src="../../../Images/Button/UnClick_del.jpg"
                                                style="display: none;" id="imgUnDel" />
                                            <img id="btnSubSnapshot" src="../../../images/Button/btn_kckz.jpg" style="cursor: hand"
                                                onclick="ShowSnapshot();" alt="������" />
                                            <img  runat="server"  visible="false"  src="../../../Images/Button/btn_tmsm.jpg" alt="����ɨ��" style="cursor: hand;" id="GetGoods" onclick="GetGoodsInfoByBarCode()"/>
                                            <img alt="����ɨ��" src="../../../Images/Button/btn_tmsmu.jpg"  id="UnGetGoods"  style=" display:none"  runat="server"  visible="false" />
                                            <uc2:CodeTypeDrpControl ID="PackageUC" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                                <div id="divDetail" style="width: 100%; background-color: #FFFFFF; overflow: scroll;">
                                  <div style="border:none; width:200%">
                                    <table width="100%" border="0" id="dg_Log" style="behavior: url(../../../draggrid.htc);
                                        height: auto;" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                                        <tr>
                                            <td align="center" bgcolor="#E6E6E6" class="ListTitle" style="width: 3%">
                                                ѡ��<input type="checkbox" visible="false" id="checkall" onclick="fnSelectAll()" value="checkbox" />
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" style="width: 8%" class="ListTitle">
                                                ��Ʒ���<span class="redbold">*</span>
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" style="width: 8%" class="ListTitle">
                                                ��Ʒ����
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" style="width: 5%" class="ListTitle">
                                                ���
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" style="width: 5%" class="ListTitle">
                                                ��ɫ
                                            </td>
                                            <td align="center" id="BaseUnitD" runat="server" bgcolor="#E6E6E6" style="width: 5%" class="ListTitle">
                                                ������λ
                                            </td>
                                            <td align="center" id="BaseCountD" runat="server" bgcolor="#E6E6E6" style="width: 5%" class="ListTitle">
                                                ��������
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" style="width: 5%" class="ListTitle">
                                                ��λ
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" style="width: 5%" class="ListTitle">
                                                ����<span class="redbold">*</span>
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" style="width: 5%" class="ListTitle">
                                                ��������(��)
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" style="width: 6%" class="ListTitle">
                                                ��װҪ��
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" style="width: 5%" class="ListTitle">
                                                ����<span class="redbold">*</span>
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" style="width: 5%" class="ListTitle">
                                                ��˰��<span class="redbold">*</span>
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" style="width: 4%" class="ListTitle">
                                                �ۿ�(%)<span class="redbold">*</span>
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" style="width: 4%" class="ListTitle">
                                                ˰��(%)<span class="redbold">*</span>
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" style="width: 8%" class="ListTitle">
                                                ��˰���
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" style="width: 8%" class="ListTitle">
                                                ���
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" style="width: 5%" class="ListTitle">
                                                ˰��
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" class="ListTitle">
                                                ��ע
                                            </td>
                                        </tr>
                                        </table>
                                        </div>
                                        <div style="height: 20px; width: 200%">
                                        </div>
                                </div>
                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="2" bgcolor="#999999">
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table width="99%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#999999">
                        <tr>
                            <td valign="top" bgcolor="#F4F0ED">
                                <img src="../../../images/Main/Line.jpg" width="122" height="7" />
                            </td>
                            <td align="right" valign="top" bgcolor="#F4F0ED">
                                <img src="../../../images/Main/LineR.jpg" width="122" height="7" />
                            </td>
                        </tr>
                        <tr>
                            <td height="20" bgcolor="#F4F0ED" class="Blue" colspan="2">
                                <table width="100%" border="0" cellspacing="0" cellpadding="3">
                                    <tr>
                                        <td height="25" valign="top">
                                            <span class="Blue">���۷�����ϸ</span>
                                        </td>
                                        <td align="right" valign="top">
                                            <div id='Div3'>
                                                <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('TableDD','Div3')" /></div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#999999"
                        id="TableDD">
                        <tr>
                            <td>
                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                                    <tr>
                                        <td height="28" bgcolor="#FFFFFF" colspan="11" style="padding-top: 5px; padding-left: 5px;">
                                            <img visible="false" runat="server" src="../../../images/Button/Show_add.jpg" style="cursor: hand"
                                                id="AddFee" onclick="fnAddFeeRow();" />
                                            <img visible="false" runat="server" src="../../../images/Button/Show_del.jpg" style="cursor: hand"
                                                id="DelFee" onclick="fnDelOneRow2();" />
                                            <img visible="false" runat="server" alt="" src="../../../Images/Button/UnClick_tj.jpg"
                                                style="display: none;" id="UnAddFee" />
                                            <img visible="false" runat="server" alt="" src="../../../Images/Button/UnClick_del.jpg"
                                                style="display: none;" id="UnDelFee" />
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" id="dg_Log2" style="behavior: url(../../../draggrid.htc)"
                                    align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                                    <tr>
                                        <td align="center" bgcolor="#E6E6E6" class="Blue" style="width: 60px;">
                                            ѡ��<input type="checkbox" visible="false" name="checkall1" id="checkall1" onclick="fnSelectAll2()"
                                                value="checkbox" />
                                        </td>
                                        <td align="center" bgcolor="#E6E6E6" style="width: 100px;" class="Blue">
                                            ��������<span class="redbold">*</span>
                                        </td>
                                        <td align="center" bgcolor="#E6E6E6" style="width: 100px;" class="Blue">
                                            ���<span class="redbold">*</span>
                                        </td>
                                        <td align="left" bgcolor="#E6E6E6" style="padding-left: 30px;" class="Blue">
                                            ��ע
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="2" bgcolor="#999999">
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
   
    </form>
</body>
</html>
