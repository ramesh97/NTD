<%@ Page Language="VB" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Physician Query Generator</title>
    <link href="Css/Master.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <table width="100%" cellspacing="0" cellpadding="0">
  <!--tr>
    <td valign="top"><div align="left"><img src="images/Prime_Health_Logo.jpg" /></div></td>
  </tr-->
  <tr>
    <td valign="top"><table id="Table3" width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td><img src="images/PQD_Header_01.jpg"  alt="" /></td>
        <td><img src="images/PQD_Header_02.jpg"  alt="" /></td>
        <td width="100%" background="images/PQD_Header_03.jpg">&nbsp;</td>
        <td><img src="images/PQD_Header_04.jpg" alt="" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top" height="452"><div align="center">
      <p>&nbsp;</p>
      <p><asp:Label ID="LblMsg" runat="server"></asp:Label>&nbsp;</p>
      <table border="0" align="center" cellpadding="0" cellspacing="0" id="Table4">
        <tr>
          <td><img src="images/Login_Box_01.jpg" width="18" height="30" alt="" /></td>
          <td bgcolor="#000000" style="width: 251px">&nbsp;</td>
          <td><img src="images/Login_Box_03.jpg" width="18" height="30" alt="" /></td>
        </tr>
        <tr>
          <td width="18" bgcolor="#9F012F">&nbsp;</td>
          <td valign="top" bgcolor="9f012f" style="width: 251px"><table width="250" align="center" cellpadding="0" cellspacing="2">
            <tbody>
              <tr>
                <td colspan="2">&nbsp;</td>
                </tr>
              <tr>
                <td width="100" height="30"><div align="left"><span class="style7 style1 style3 style4">User Name </span></div></td>
                <td width="150" height="30"><asp:TextBox ID="TxtLoginID" runat="server" Width="125px"></asp:TextBox></td>
              </tr>
              <tr>
                <td width="100" height="30"><div align="left"><span class="style7 style1 style3 style4">Password</span></div></td>
                <td width="150" height="30"><asp:TextBox ID="TxtPwd" runat="server" TextMode="Password" Width="125px"></asp:TextBox></td>
              </tr>
                <tr>
                    <td height="30" width="100">
                    </td>
                    <td align="left" height="30" width="150">
                        <asp:CheckBox ID="ChkPhysician" runat="server" CssClass="style7 style1 style3 style4"
                            Text="Physician ? " /></td>
                </tr>
              
              <tr>
                <td align="middle" style="height: 30px"><br />
                    <div id="Div1" 
                  style="DISPLAY: none; COLOR: red"></div>
                    <div align="right"></div></td>
                <td width="150" align="middle" style="height: 30px"><div align="left">&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/Login_But.jpg" /><br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                    ShowSummary="False" />
                    </div></td>
              </tr>
            </tbody>
          </table></td>
          <td width="18" bgcolor="#9F012F">&nbsp;</td>
        </tr>
        <tr>
          <td><img src="images/Login_Box_07.jpg" width="18" height="21" alt="" /></td>
          <td bgcolor="#9F012F" style="width: 251px">&nbsp;</td>
          <td><img src="images/Login_Box_09.jpg" width="18" height="21" alt="" /></td>
        </tr>
      </table>
        <p>&nbsp;</p>
      <p>&nbsp;</p>
    </div></td>
  </tr>
  <tr>
    <td height="25" bgcolor="#000000">&nbsp;</td>
  </tr>
</table>
        
      
    </form>
</body>
</html>
