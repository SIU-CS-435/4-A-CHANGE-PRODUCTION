<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Reg.aspx.vb" Inherits="Reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <style type="text/css">
        .style1
        {
            font-size: large;
            font-weight: bold;
        }
        .style2
        {
            width: 189px;
        }
        .auto-style1 {
            width: 263px;
        }
    </style>
</head>
<body style="background-repeat: no-repeat;" background="images/b10.jpg">
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style1" colspan="3" bgcolor="" style="font-size: xx-large; font-weight: bolder;">
                CUSTOMER REGISTRATION FORM</td>
        </tr>
        <tr>
            <td colspan="3">
                <hr />&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-size: x-large; font-weight: bold">
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Customer Name "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-size: x-large; font-weight: bold">
                <asp:Label ID="Label2" runat="server" Font-Size="x-Large" 
                    Text="Customer Address "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="62px" TextMode="MultiLine" 
                    Width="202px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-size: x-large; font-weight: bold">
                <asp:Label ID="Label3" runat="server" Font-Size="x-Large" Text="E-Mail ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Invalid!" Font-Size="Small" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-size: x-large; font-weight: bold">
                <asp:Label ID="Label4" runat="server" Font-Size="x-Large" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-size: x-large; font-weight: bold">
                <asp:Label ID="Label6" runat="server" Font-Size="x-Large" Text="Registration Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Register" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#CC0000" 
        Text=""></asp:Label>
    </form>
    &nbsp;<p>
        &nbsp;</p>
</body>
</html>
