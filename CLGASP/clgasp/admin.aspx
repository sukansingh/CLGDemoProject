<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="clgasp.admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrator</title>
    <script type="text/javascript">

        function showregdiv() {
            document.getElementById("mdfyregdiv").style.visibility = "visible";
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
        <div style="width: 980px; margin-left: auto; margin-right: auto; background-color: #9AF4BC;">
            <div style="width: 250px; margin-left: auto; margin-right: auto;">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Search Student</asp:LinkButton>
                <asp:TextBox ID="TextBox1" runat="server" Visible="False" aria-label="username"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" Visible="False" /><br />
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" EnableModelValidation="True"
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle ForeColor="White" BackColor="#507CD1" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
            </div>
            <br />
            <div style="width: 250px; margin-left: auto; margin-right: auto;">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Show All Students</asp:LinkButton>
                <asp:GridView ID="GridView2" runat="server" Width="100%" CellPadding="4" EnableModelValidation="True"
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle ForeColor="White" BackColor="#507CD1" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
            </div>
            <br />
            <div style="width: 250px; margin-left: auto; margin-right: auto;">
                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Delete User</asp:LinkButton>
                <asp:TextBox ID="TextBox5" runat="server" Text="username" Visible="false"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Text="Delete" Visible="false" OnClick="Button3_Click" />
            </div>
            <br />
            <div style="width: 250px; margin-left: auto; margin-right: auto;">
                <a href="admininsertuser.aspx">Insert User</a>
            </div>
            <br />
            <div style="width: 250px; margin-left: auto; margin-right: auto;">
                <asp:LinkButton ID="lbtninsert" runat="server" OnClick="lbtninsert_Click"> Update Column Value </asp:LinkButton>
                <asp:TextBox ID="tbinsertid" runat="server" Text="id" Visible="false"></asp:TextBox>
                <asp:TextBox ID="tbinsertreg" runat="server" Text="reg." Visible="false"></asp:TextBox>
                <asp:TextBox ID="tbinsert" runat="server" Text="Column Name" Visible="false"></asp:TextBox>
                <asp:TextBox ID="tbinsertval" runat="server" Text="Value" Visible="false"></asp:TextBox>
                <asp:Button ID="btninsert" runat="server" Text="Insert" Visible="false" OnClick="btninsert_Click" />
            </div>
            <br />
            <div style="width: 250px; margin-left: auto; margin-right: auto;">
                <a href="#" onclick="showregdiv();" style="margin-left: auto; margin-right: auto;">Modify
                    Detail</a><br />
                <div id="mdfyregdiv" style="visibility: hidden;" onclick="showregdiv();">
                    <asp:TextBox ID="tbreg" runat="server"></asp:TextBox>
                    <asp:Button ID="btnReg" runat="server" Text="Search" OnClick="btnReg_Click1" />
                    <table>
                        <tr>
                            <td>
                                ID
                            </td>
                            <td>
                                <asp:TextBox ID="tbmdfyid" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Name
                            </td>
                            <td>
                                <asp:TextBox ID="tbmdfyname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Email ID
                            </td>
                            <td>
                                <asp:TextBox ID="tbmdfyemail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Mobile No.
                            </td>
                            <td>
                                <asp:TextBox ID="tbmdfymbl" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                DOB [yy-mm-dd]
                            </td>
                            <td>
                                <asp:TextBox ID="tbmdfydob" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Permanent Address
                            </td>
                            <td>
                                <asp:TextBox ID="tbmdfypadd" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Residential Address
                            </td>
                            <td>
                                <asp:TextBox ID="tbmdfyradd" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Username
                            </td>
                            <td>
                                <asp:TextBox ID="tbmdfyusr" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Password
                            </td>
                            <td>
                                <asp:TextBox ID="tbmdfypass" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Attendence
                            </td>
                            <td>
                                <asp:TextBox ID="tbmdfyatt" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Father Name
                            </td>
                            <td>
                                <asp:TextBox ID="tbmdfyfthr" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Mother Name
                            </td>
                            <td>
                                <asp:TextBox ID="tbmdfymthr" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Father No.
                            </td>
                            <td>
                                <asp:TextBox ID="tbmdfyfthrn" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Reg. No.
                            </td>
                            <td>
                                <asp:TextBox ID="tbmdfyreg" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td style="text-align: right;">
                                <asp:Button ID="btnmdfy" runat="server" Text="Modify" OnClick="btnmdfy_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
