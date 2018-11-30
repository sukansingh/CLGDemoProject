<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admininsertuser.aspx.cs"
    Inherits="clgasp.admininsertuser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<link rel="Stylesheet" href="StyleSheet1.css" />
<body>
    <form id="form1" runat="server">
    <div id="maindiv">
        <div style="height: 145px; background-color: #D7F2FD;">
            <div style="margin-top: 15px; width: 500px; float: left;">
                <img src="Images/header-02-logo.jpg" /></div>
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
            <table style="margin-left: auto; margin-right: auto;">
                <tr>
                    <td>
                        ID
                    </td>
                    <td>
                        <asp:TextBox ID="tbid" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Name
                    </td>
                    <td>
                        <asp:TextBox ID="tbname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Reg. No.
                    </td>
                    <td>
                        <asp:TextBox ID="tbreg" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Email ID
                    </td>
                    <td>
                        <asp:TextBox ID="tbemail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Username
                    </td>
                    <td>
                        <asp:TextBox ID="tbusr" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password
                    </td>
                    <td>
                        <asp:TextBox ID="tbpass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Mobile No.
                    </td>
                    <td>
                        <asp:TextBox ID="tbmbl" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Father Name
                    </td>
                    <td>
                        <asp:TextBox ID="tbfthr" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Mother Name
                    </td>
                    <td>
                        <asp:TextBox ID="tbmthr" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Father No.
                    </td>
                    <td>
                        <asp:TextBox ID="tbfthrn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Attendence
                    </td>
                    <td>
                        <asp:TextBox ID="tbatt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Parmanent Add.
                    </td>
                    <td>
                        <asp:TextBox ID="tbpadd" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Residential Add.
                    </td>
                    <td>
                        <asp:TextBox ID="tbradd" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        DOB
                    </td>
                    <td>
                        <asp:DropDownList ID="date" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="month" runat="server">
                            <asp:ListItem Value="01">Jan</asp:ListItem>
                            <asp:ListItem Value="02">Feb</asp:ListItem>
                            <asp:ListItem Value="03">Mar</asp:ListItem>
                            <asp:ListItem Value="04">Apr</asp:ListItem>
                            <asp:ListItem Value="05">May</asp:ListItem>
                            <asp:ListItem Value="06">Jun</asp:ListItem>
                            <asp:ListItem Value="07">Jul</asp:ListItem>
                            <asp:ListItem Value="08">Aug</asp:ListItem>
                            <asp:ListItem Value="09">Sep</asp:ListItem>
                            <asp:ListItem Value="10">Oct</asp:ListItem>
                            <asp:ListItem Value="11">Nov</asp:ListItem>
                            <asp:ListItem Value="12">Dec</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="year" runat="server">
                            <asp:ListItem>1976</asp:ListItem>
                            <asp:ListItem>1977</asp:ListItem>
                            <asp:ListItem>1978</asp:ListItem>
                            <asp:ListItem>1979</asp:ListItem>
                            <asp:ListItem>1980</asp:ListItem>
                            <asp:ListItem>1981</asp:ListItem>
                            <asp:ListItem>1982</asp:ListItem>
                            <asp:ListItem>1983</asp:ListItem>
                            <asp:ListItem>1984</asp:ListItem>
                            <asp:ListItem>1985</asp:ListItem>
                            <asp:ListItem>1986</asp:ListItem>
                            <asp:ListItem>1987</asp:ListItem>
                            <asp:ListItem>1988</asp:ListItem>
                            <asp:ListItem>1989</asp:ListItem>
                            <asp:ListItem>1990</asp:ListItem>
                            <asp:ListItem>1991</asp:ListItem>
                            <asp:ListItem>1992</asp:ListItem>
                            <asp:ListItem>1993</asp:ListItem>
                            <asp:ListItem>1994</asp:ListItem>
                            <asp:ListItem>1995</asp:ListItem>
                            <asp:ListItem>1996</asp:ListItem>
                            <asp:ListItem>1997</asp:ListItem>
                            <asp:ListItem>1998</asp:ListItem>
                            <asp:ListItem>1999</asp:ListItem>
                            <asp:ListItem>2000</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td style="text-align: right;">
                        <asp:Button ID="btninsert" runat="server" Text="Insert" Width="100px" OnClick="btninsert_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
