<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SellProductReportAdd.aspx.cs" Inherits="Pages_Office_SellReport_SellProductReportAdd" %>
<%@ Register Src="../../../UserControl/Message.ascx" TagName="Message" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>���ۻ㱨</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" type="text/css" href="../../../css/default.css" />
    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />
    <script src="../../../js/common/PageBar-1.1.1.js" type="text/javascript"></script>
    <script src="../../../js/common/Check.js" type="text/javascript"></script>
    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>
    <script src="../../../js/Calendar/WdatePicker.js" type="text/javascript"></script>
    <script src="../../../js/common/Common.js" type="text/javascript"> </script> 
    <script src="../../../js/common/Page.js" type="text/javascript"></script>
    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>
    
</head>
<body onload="formatNumLen()">
    <form id="EquipAddForm" runat="server">
    <div id="popupContent"></div>
    <span id="Forms" class="Spantype"></span>
    <uc1:Message ID="Message1" runat="server" />
    <input type='hidden' id='txtTRLastIndex' value="0" />
    <input type='hidden' id="rowIndex" />
    <input type="hidden" id="HiddenURLParams" runat="server" /> 
    <input type="hidden" id="hiddSellRptID" runat="server" /><!--����ID-->

    <script type="text/javascript">
        var isList=<%=isList %>;
        var precisionLength=<%=SelPoint %>;//С������
        //ת����ʼ��ֵС��λ��
        function formatNumLen()
        {
            var lengthstr="0.";
            for(var i=0;i<precisionLength;i++)
            {
                lengthstr = lengthstr+"0";
            }
            $("#price").val(lengthstr);
            $("#sellNum").val(lengthstr);
            $("#sellPrice").val(lengthstr);
        }
    </script>
    
    <div <%--style="height: 500px; overflow: scroll;"--%>>
        <table width="95%" border="0" cellpadding="0" cellspacing="0" class="maintable"
            id="mainindex">
            <tr>
                <td valign="top">
                    <img src="../../../images/Main/Line.jpg" alt="" width="122" height="7" />
                </td>
                <td align="center" valign="top">
                </td>
            </tr>
            <tr>
                <td height="30" colspan="2" valign="top" class="Title">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td height="30" align="center" class="Title">
                                <%--<% if (this.isList > 0)
                                   {%>���ۻ㱨
                                   <%}
                                   else
                                   { %>�½����ۻ㱨��<%} %>--%>
                                   ���ۻ㱨
                            </td>
                        </tr>
                    </table>
                    <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                        <tr>
                            <td height="28" bgcolor="#FFFFFF" style="padding-top: 5px; padding-left: 5px;">
                               <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1">
                                  <tr>
                                    <td align="left" width="600px">
                                     <img runat="server" src="../../../images/Button/Bottom_btn_save.jpg" 
                                        alt="����" id="btn_save" style="cursor:pointer; float:left;" onclick="SaveData();" visible="false" />
                                    <img runat="server" src="../../../images/Button/Bottom_btn_save.jpg" alt="�޸�" id="btn_update"  style="cursor: hand;
                                         display: none;float:left;" onclick="UpdateData();"  visible="false" /> 
                                     <img runat="server" src="../../../images/Button/UnClick_bc.jpg" alt="�޸�" id="btn_unupdate" style="cursor: hand;
                                         display: none;float:left;" visible="false" />
                                     <img src="../../../Images/Button/Bottom_btn_back.jpg" style="cursor: hand; float:left;" alt="����" id="ibtnBack" onclick="fnBack();" />
                                    </td>
                                    <td align="right">
                                    <%--<img src="../../../images/Button/Main_btn_print.jpg" alt="��ӡ" onclick="fnPrintOrder()" />--%>
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
                            <td align="right" bgcolor="#E6E6E6" style="width: 11%">
                                ����<span class="redbold">*</span>
                            </td>
                            <td bgcolor="#FFFFFF" style="width: 22%">
                                <input id="createdate" name="createdate" style="width: 98%;" readonly="readonly" class="tdinput"
                                    type="text" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:$dp.$('createdate')})" runat="server"/>
                            </td>
                            <td align="right" bgcolor="#E6E6E6" style="width: 11%">
                                ���۲���<span class="redbold">*</span>
                            </td>
                            <td bgcolor="#FFFFFF" style="width: 22%">
                                <input id="SellDept" name="SellDept" readonly="readonly" type="text" style="width: 98%;" runat="server"
                                    class="tdinput" onclick="alertdiv('SellDept,hiddSellDeptID');" />
                                    <input type="hidden" id="hiddSellDeptID" runat="server" />
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6" style="width: 11%">
                                ��Ʒ
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF" style="width:23%">
                                <input id="hiddProductName" specialworkcheck="��Ʒ" class="tdinput" type="text" value="" style="width: 98%;"/>
                               <%-- <input id="pCheck" type="checkbox" onclick="fnPCheckChange();" checked="checked" />--%>
                                <asp:DropDownList ID="productName" runat="server" Width="100px" AppendDataBoundItems="True">
                                </asp:DropDownList><span id="spene"><font color="red">����б���ѡ��</font></span>
                            </td>
                        </tr>
                        <tr> 
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                �۸�
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input id="price" onchange="Number_round(this,<%=SelPoint %>)" class="tdinput" type="text" value="" style="width: 98%;"/>
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ��������
                            </td>
                            <td height="20" bgcolor="#FFFFFF">
                               <input id="sellNum" onchange="Number_round(this,<%=SelPoint %>)" class="tdinput" type="text" value="" style="width: 98%;"/>  
                            </td>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ���۽��
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF">
                                <input id="sellPrice" onchange="Number_round(this,<%=SelPoint %>)" class="tdinput" type="text" value="" style="width: 98%;"/>
                            </td>
                        </tr>
                        <tr>
                            <td height="20" align="right" bgcolor="#E6E6E6">
                                ��ע
                            </td>
                            <td height="20" align="left" bgcolor="#FFFFFF" colspan="5">
                                <%--<input id="memo" class="tdinput" type="text" value="" style="width: 98%;"/>--%>
                                <asp:TextBox ID="memo" CssClass="tdinput" Width="98%" runat="server" Rows="4">
                                    
                                </asp:TextBox>
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
                                            <span class="Blue">�����ϸ</span>
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
                                            <img  runat="server" alt="���" src="../../../images/Button/Show_add.jpg" 
                                                id="imgAdd" style="cursor: hand; float:left;" onclick="AddRow();" visible="false" />
                                            <img  runat="server" alt="ɾ��" src="../../../images/Button/Show_del.jpg" 
                                                id="imgDel" style="cursor: hand; float:left;" onclick="fnDelOneRow()" visible="false" />
                                            <img  runat="server" alt="���" src="../../../images/Button/UnClick_tj.jpg"
                                                id="un_imgAdd" style="display: none;cursor: hand; float:left;"  visible="false" />
                                            <img  runat="server" alt="ɾ��" src="../../../images/Button/UnClick_del.jpg"
                                                id="un_imgDel" style="display: none;cursor: hand; float:left;" visible="false" />
                                             
                                        </td>
                                    </tr>
                                </table>
                                <div style="width: 100%; background-color: #FFFFFF; overflow:hidden">
                                  <div style="border:none; width:100%">
                                    <table width="100%" border="0" id="tbExpDetails" style="behavior: url(../../../draggrid.htc);
                                        height: auto;" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                                        <tr>
                                            <td align="center" bgcolor="#E6E6E6" class="ListTitle" style="width:6%">
                                                ѡ��<input type="checkbox" visible="false" id="checkall" onclick="fnSelectAll()" value="checkbox" />
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6" class="ListTitle" style="width:150px">
                                                ҵ��Ա
                                            </td>
                                            <td align="center" bgcolor="#E6E6E6"  class="ListTitle" style="width:120px">
                                                ��ɱ���
                                            </td>
                                        </tr>
                                        </table>
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
                </td>
            </tr>
        </table>
    </div>
    
    <script src="../../../js/office/SellReport/SellProductReportAdd.js" type="text/javascript"></script>
    
    </form>
</body>
</html>
