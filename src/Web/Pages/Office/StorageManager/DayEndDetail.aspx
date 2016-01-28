<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DayEndDetail.aspx.cs" Inherits="Pages_Office_StorageManager_DayEndDetail" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�ɹ�������</title>
    
    <link href="../../../css/pagecss.css" type="text/css" rel="Stylesheet" />

    <script src="../../../js/JQuery/jquery_last.js" type="text/javascript"></script>

    <script src="../../../js/JQuery/formValidator.js" type="text/javascript"></script>

    <script src="../../../js/JQuery/formValidatorRegex.js" type="text/javascript"></script>

    <script src="../../../js/Calendar/WdatePicker.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript" src="../../../js/common/PageBar-1.1.1.js"></script>

    <script src="../../../js/common/page.js" type="text/javascript"></script>

    <script src="../../../js/common/Check.js" type="text/javascript"></script>
    
    <script src="../../../js/common/Common.js" type="text/javascript"></script>

    <script src="../../../js/common/UserOrDeptSelect.js" type="text/javascript"></script>
    
    <script type="text/javascript">
   /*���ݴ�ӡ*/
function PurchaseArrivePrint() {
    var ID = $("#hiddenEquipCode").val();
    if (ID=='') {
        showPopup("../../../Images/Pic/Close.gif", "../../../Images/Pic/note.gif", "���ȱ��棡");
        return;
    }  
     
                var urlParam="";
                urlParam +="ProductID="+document.getElementById("hidProductID").value;
                urlParam +="&BatchNo="+document.getElementById("hidBatchNo").value;
                urlParam +="&DailyDate="+document.getElementById("hidDailyDate").value;
                urlParam +="&StorageID="+document.getElementById("hidStorageID").value;
       window.open("../../../Pages/PrinttingModel/StorageManager/DayEndPrint.aspx?"+urlParam );
}
    </script>
    
    <script src="../../../js/common/UploadFile.js" type="text/javascript"></script>

    <link rel="stylesheet" type="text/css" href="../../../css/default.css" />
    <style type="text/css">
        .style2
        {
            background-color: #E6E6E6;
            text-align: right;
        }
        .style3
        {
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="Form1" runat="server">
                           
    
 
    <table width="95%" height="57" border="0" cellpadding="0" cellspacing="0" class="maintable"
        id="mainindex">
        <tr>
            <td valign="top">
                <input type="hidden" id="hiddenEquipCode" value=""  runat="server"/>
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
                          
                            <td height="30" align="center" class="Title">
                            <div id="divTitle" runat="server">  ����ս���ϸ</div>
                        </td>
                        </td>
                    </tr>
                </table>
                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="28" align="left" bgcolor="#FFFFFF">
                            <!-- Start ����״ֵ̬ -->
                            <table width="100%">
                                <tr>
                                    <td>
                                    
                                        
                                      
                                        <asp:ImageButton  ImageUrl ="../../../Images/Button/Bottom_btn_back.jpg" 
                                            ID="btnBack" runat="server" onclick="btnBack_Click"  />
                                        </td>
                                    <td align="right">
                                            <img  src="../../../Images/Button/Main_btn_print.jpg" alt="��ӡ" style=" float:right; cursor: pointer;"  id="imgPrint"  onclick="PurchaseArrivePrint();" /> 
                                    </td>
                                </tr>
                            </table>
                            <input type="hidden" id="hidProductID" name="hidProductID"   runat="server" />
                            <input type="hidden" id="hidBatchNo" name="hidBatchNo"   runat="server" />
                            <input type="hidden" id="hidDailyDate" name="hidDailyDate"   runat="server" />
                            <input type="hidden" id="hidStorageID" name="hidStorageID"   runat="server" />
                            <!-- End ����״ֵ̬ -->
                            <!-- Start ���̴���-->
                            <!-- End ���̴���-->
                            
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
                    id="Tb_01" style="display: block">
                    <tr>
                        <td align="right" class="style2" width="10%">�ս�����
                        </td>
                        <td class="style3" width="23%">
                            
                            <asp:TextBox ID="txtDailyDate" runat="server" CssClass="tdinput" 
                                 Width="95%" ReadOnly="true"></asp:TextBox>
                            
                        </td>
                        <td align="right" class="style2" width="10%">
                            �ֿ�</td>
                        <td class="style3" width="23%">
                          
                            <asp:TextBox ID="txtStorageID" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                          
                        </td>
                        <td align="right" class="style2" width="10%">Ʒ��</td>
                
                        <td class="style3" width="24%">
                                       
                            <asp:TextBox ID="txtProductID" runat="server" CssClass="tdinput" 
                                Width="95%" ReadOnly="true"></asp:TextBox>
                                       
                        </td>
                    </tr>
                    <tr>
                        <td height="20" align="right" class="tdColTitle" width="10%">����  </td>
                        <td height="20" class="tdColInput" width="23%">
                              
                            <asp:TextBox ID="txtBatchNo" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                              
                        </td>
                        <td height="20" align="right" class="tdColTitle" width="10%">
                            ��Ʒ���</td>
                        <td height="20" class="tdColInput" width="23%">
                          <asp:TextBox ID="txtProductNo" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td height="20" align="right" class="tdColTitle" width="10%">
                            &nbsp;</td>
                        <td height="20" class="tdColInput" width="24%">
                         
                        </td>
                    </tr>
                    </table>
                <table width="99%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td height="20" bgcolor="#F4F0ED" class="Blue">
                            <table width="100%" border="0" cellspacing="0" cellpadding="3">
                                <tr>
                                    <td>
                                        �ϼ���Ϣ
                                    </td>
                                    <td align="right">
                                        <div id='divButtonTotal'>
                                            <img src="../../../images/Main/Close.jpg" style="cursor: pointer" onclick="oprItem('Tb_02','divButtonTotal')" /></div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table width="99%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#999999"
                    id="Tb_02" style="display: block">
                          <tr>
                        <td align="right" class="tdColTitle" width="10%">���������</td>
                        <td class="tdColInput" width="23%">
                               
                            <asp:TextBox ID="txtInTotal" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                               
                        </td>
                        <td align="right" class="tdColTitle" width="10%">����������</td>
                        <td class="tdColInput" width="23%">
                     
                            <asp:TextBox ID="txtOutTotal" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                     
                        </td>
                        <td align="right" class="tdColTitle" width="10%">���ս����</td>
                        <td class="tdColInput" width="24%">
                           
                            <asp:TextBox ID="txtTodayCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                           
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="tdColTitle" width="10%">�������۽��</td>
                        <td class="tdColInput" width="23%">
                           
                            <asp:TextBox ID="txtSaleFee" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                           
                        </td>
                        <td align="right" class="tdColTitle" width="10%">���������˻���� 
                        </td>
                        <td class="tdColInput" width="23%">
                       
                            <asp:TextBox ID="txtSaleBackFee" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                       
                        </td>
                        <td align="right" class="tdColTitle" width="10%">���ղɹ����</td>
                        <td class="tdColInput" width="24%">
                            
                         <asp:TextBox ID="txtPhurFee" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="tdColTitle" width="10%">
                             
 
                             ���ղɹ��˻����</td>
                        <td class="tdColInput" width="23%">
                            <asp:TextBox ID="txtPhurBackFee" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td align="right" class="tdColTitle" width="10%">
                            ������</td>
                        <td class="tdColInput" width="23%">
                       
                                <asp:TextBox ID="txtCreator" runat="server" CssClass="tdinput" 
                                      Width="95%" ReadOnly="true"></asp:TextBox>
                               </td>
                        <td align="right" class="tdColTitle" width="10%">
                             
 
                             ��������</td>
                        <td class="tdColInput" width="24%">
                         
                            <asp:TextBox ID="txtCreateDate" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                         
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="tdColTitle" width="10%">
                             
 
 �ڳ����¼������</td>
                        <td class="tdColInput" width="23%">
                                <asp:TextBox ID="txtInitInCount" runat="server" CssClass="tdinput" 
                                      Width="95%" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td align="right" class="tdColTitle" width="10%">
                             
 
 �ڳ���浼������</td>
                        <td class="tdColInput" width="23%">
                           <asp:TextBox ID="txtInitBatchCount" runat="server" CssClass="tdinput" 
                                      Width="95%" ReadOnly="true"></asp:TextBox></td>
                        <td align="right" class="tdColTitle" width="10%">
                             
 
                             �ɹ��������</td>
                        <td class="tdColInput" width="24%">
                             <asp:TextBox ID="txtPhurInCount" runat="server" CssClass="tdinput" 
                                      Width="95%" ReadOnly="true"></asp:TextBox>
                            </td>
                    </tr>
                    
                    <tr>
                        <td align="right" class="tdColTitle" width="10%">�����깤�������</td>
                        <td class="tdColInput" width="23%">
                               <asp:TextBox ID="txtMakeInCount" runat="server" CssClass="tdinput" 
                                      Width="95%" ReadOnly="true"></asp:TextBox> </td>
                         <td align="right" class="tdColTitle" width="10%">�����˻��������</td>
                        <td class="tdColInput" width="24%">
                       
                            <asp:TextBox ID="txtSaleBackInCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                       
                        </td>
                         <td align="right" class="tdColTitle" width="10%">&nbsp;&nbsp;&nbsp;&nbsp;�ŵ������˻��������(�ܵ귢��ģʽ)</td>
                        <td class="tdColInput" width="24%">
                     
                            <asp:TextBox ID="txtSubSaleBackInCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                     
                        </td>
                        
                       
                       
                    </tr>
          
                    
                 <tr>
                        <td align="right" class="tdColTitle" width="10%"> ����������</td>
                        <td class="tdColInput" width="23%">
                              
                            <asp:TextBox ID="txtRedInCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                              
                        </td>
                        <td align="right" class="tdColTitle" width="10%">�����������</td>
                        <td class="tdColInput" width="23%">
                         
                            <asp:TextBox ID="txtOtherInCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                         
                        </td>
                        <td align="right" class="tdColTitle" width="10%"> ���ͳ�������</td>
                        <td class="tdColInput" width="23%">
                       
                              <asp:TextBox ID="txtSendOutCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox></td>
                    </tr>
                  <tr>
                        <td align="right" class="tdColTitle" width="10%">
                             
 
                             ���ϳ�������</td>
                        <td class="tdColInput" width="23%">
                            <asp:TextBox ID="txtTakeOutCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td align="right" class="tdColTitle" width="10%">
                           �����������</td>
                        <td class="tdColInput" width="23%">
                              <asp:TextBox ID="txtBackInCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox></td>
                        <td align="right" class="tdColTitle" width="10%">
                             ������������</td>
                        <td class="tdColInput" width="24%">
                         <asp:TextBox ID="txtTakeInCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                   <tr>
                        <td align="right" class="tdColTitle" width="10%">
                             
 
                             �������������</td>
                        <td class="tdColInput" width="23%">
                            <asp:TextBox ID="txtDispInCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td align="right" class="tdColTitle" width="10%">
                           �����˻��������</td>
                        <td class="tdColInput" width="23%">
                            
                            <asp:TextBox ID="txtSendInCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                            
                        </td>
                        <td align="right" class="tdColTitle" width="10%">
                             ���۳�������</td>
                        <td class="tdColInput" width="24%">
                         <asp:TextBox ID="txtSaleOutCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                           <tr>
                        <td align="right" class="tdColTitle" width="10%">
                             
 
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             
 
                             �ŵ���������(�ܵ귢��ģʽ)</td>
                        <td class="tdColInput" width="23%">
                            <asp:TextBox ID="txtSubSaleOutCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td align="right" class="tdColTitle" width="10%">
                           �ɹ��˻���������</td>
                        <td class="tdColInput" width="23%">
                              <asp:TextBox ID="txtPhurBackOutCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox></td>
                        <td align="right" class="tdColTitle" width="10%">
                             ����������</td>
                        <td class="tdColInput" width="24%">
                         <asp:TextBox ID="txtRedOutCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                           <tr>
                        <td align="right" class="tdColTitle" width="10%">
                             
 
                             ������������</td>
                        <td class="tdColInput" width="23%">
                            <asp:TextBox ID="txtOtherOutCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td align="right" class="tdColTitle" width="10%">
                           ��������������</td>
                        <td class="tdColInput" width="23%">
                              <asp:TextBox ID="txtDispOutCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox></td>
                        <td align="right" class="tdColTitle" width="10%">
                             �������</td>
                        <td class="tdColInput" width="24%">
                         <asp:TextBox ID="txtLendCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                              <tr>
                        <td align="right" class="tdColTitle" width="10%">
                             
 
                             ����������</td>
                        <td class="tdColInput" width="23%">
                            <asp:TextBox ID="txtAdjustCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td align="right" class="tdColTitle" width="10%">
                           ��汨������</td>
                        <td class="tdColInput" width="23%">
                              <asp:TextBox ID="txtBadCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox></td>
                        <td align="right" class="tdColTitle" width="10%">
                             �̵��������</td>
                        <td class="tdColInput" width="24%">
                         <asp:TextBox ID="txtCheckCount" runat="server" CssClass="tdinput" 
                                  Width="95%" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    
                                                   
                </table>
                <br />
            </td>
        </tr>
       
    </table>

    </form>
</body>
</html>
