<%@ Page Language="C#" AutoEventWireup="true" CodeFile="perz.aspx.cs" Inherits="perz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 148px;
        }
        .style2
        {
            width: 288px;
        }
        .style3
        {
            width: 178px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>PERSONALIZED IMAGE VIEW</h3><hr />
    </div>
    <table style="width:100%;">
        <tr>
            <td class="style1">
                Pic ID</td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Filename</td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Category</td>
            <td class="style2">
                <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style3">
                Default Tag</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Image</td>
            <td class="style2">
                <asp:Image ID="Image1" runat="server" Height="213px" Width="229px" />
            </td>
            <td class="style3">
                Existing Personalized Tags</td>
            <td>
                <asp:ListBox ID="ListBox1" runat="server" Height="200px" Width="159px">
                </asp:ListBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Tag required</td>
            <td class="style2">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                    RepeatDirection="Horizontal" Width="256px">
                    <asp:ListItem Selected="True">Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Tag Name</td>
            <td class="style2">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Tag Image" />
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:Label ID="Label1" runat="server" ForeColor="Red" 
        Text="Status .................."></asp:Label>
    </form>
</body>
</html>
