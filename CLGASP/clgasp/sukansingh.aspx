<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sukansingh.aspx.cs" Inherits="clgasp.sukansingh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sukan Singh</title>
    <script type="text/javascript">
        function showdiv() {
            document.getElementById("tablediv").style.visibility = "visible";
        }

    </script>
</head>
<link rel="Stylesheet" href="StyleSheet1.css" />
<body>
    <form id="form1" runat="server">
    <div id="maindiv">
        <div style="height: 145px; background-color: #D7F2FD;">
            <div style="margin-top: 15px; width: 500px; float: left;">
                <img src="Images/header-02-logo.jpg" />
            </div>
        </div>
        <div style="background-color: #787B7E; height: 30px">
            <table style="width: 100%">
                <tr style="text-align: center; font-size: 20px">
                    <td>
                        <a href="Default.aspx" style="color: #D78476">Home</a>
                    </td>
                    <td>
                        <a href="trick.aspx" style="color: #D78476">Tricks</a>
                    </td>
                    <td>
                        <a href="about.aspx" style="color: #D78476">About</a>
                    </td>
                </tr>
            </table>
        </div>
        <div style="width: 980px; background-color: #9AF4BC; height: 500px; margin-left: auto;
            margin-right: auto;">
            <a href="#" onclick="showdiv();" style="float: right;">Change Password</a><br />
            <div id="tablediv" style="float: right; width: 350px; height: auto; visibility: hidden;"
                onclick="showdiv();">
                <table>
                    <tr>
                        <td>
                            Username
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Current Password
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            New Password
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Confirm Password
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Change" Width="90px" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </div>
            <div style="width: 150px; margin-left: 20px;">
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="150px" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" EnableModelValidation="True" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                </asp:DetailsView>
            </div>
            
        </div>
    </div>
    </form>
</body>
</html>
