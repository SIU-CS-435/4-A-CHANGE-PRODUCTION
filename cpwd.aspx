<%@ Page Language="VB" AutoEventWireup="false" CodeFile="cpwd.aspx.vb" Inherits="cpwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="">
    <form id="form1" runat="server">
    <center><font color=red><h3>RESET PASSWORD</h3></font></center>
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Current Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" style="margin-bottom: 0px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="New  Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" style="margin-bottom: 0px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" style="margin-bottom: 0px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="Mismatch"></asp:CompareValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Update" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" 
        ForeColor="" Text=""></asp:Label>
    </form>
    </body>
</html>
