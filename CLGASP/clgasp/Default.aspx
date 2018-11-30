<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="clgasp._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Poornima College of Engg. </title>
</head>
<link rel="Stylesheet" href="StyleSheet1.css" />
<body>
    <form id="form1" runat="server">
    <div id="maindiv">
        <div style="height: 145px; background-color: #D7F2FD;">
            <div style="margin-top: 15px; width: 500px; float: left;">
                <img src="Images/header-02-logo.jpg" />
            </div>
            <div style="float: right; width: 400px; height: 100px; margin-top: 40px;">
                <table>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="Label1" runat="server" Text="Enter Username and Password" ForeColor="Green"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" BorderWidth="2px" BorderStyle="solid" Height="22px"
                                Width="150px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BorderWidth="2px" BorderStyle="solid"
                                Height="22px" Width="150px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Red" Visible="false"></asp:Label>
                            <div style="width: 200px;">
                                <a href="result.aspx">Click Here to RESULT</a></div>
                        </td>
                    </tr>
                </table>
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
            <div style="width: 980px; margin-left: auto; margin-right: auto; background-image: Images/pce%20main.jpg">
                <marquee> 
                    <img src="Images/pgc.jpg" height="300px" />
                    <img src="Images/pce%20main.jpg" height="300px" />
                    <img src="Images/pce%20seminar.jpg" height="300px" />
                    <img src="Images/piet%201.jpg" height="300px" />
                    <img src="Images/piet.jpg" height="300px" />
                    <img src="Images/mul.jpg" height="300px" />
                    <img src="Images/gestion_event2013.jpg" height="300px" />

                </marquee>
            </div>
            <div style="margin-left: auto; margin-right: auto; background-color: #969696;
                color: #1F0B61;">
                PGC, established by Shanti Education Society in year 2000 with student strength
                of 180 has now become best destination for Technical Education in Rajasthan. During
                its journey of 12 years PGC has developed 4 institutions of repute and has grown
                to the size of 8000 students. PGC institutions are known for excellent placements,
                consistent university results & 360 degree development of students. All PGC institutions
                are affiliated to Rajasthan Technical University and approved by AICTE. Located
                at RIICO institutional area, Sitapura, Jaipur on Jaipur Kota National Highway (at
                a distance of 18kms from Jaipur Railway Station and Central Bus Terminal & 8kms
                from Jaipur International Airport) PGC institutions are well connected to major
                destinations of India.
            </div>
        </div>
    </div>
    <div style="background-color:Gray; text-align:center">
        RICCO
    </div>
    </form>
</body>
</html>
