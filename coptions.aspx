<%@ Page Language="VB" AutoEventWireup="false" CodeFile="coptions.aspx.vb" Inherits="coptions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Page</title>
    <style type="text/css">
        .style1
        {
            color: #CC0000;
        }
    </style>
</head>
<body background="images/p6.jpg" style="background-repeat: no-repeat;">
    <form id="form1" runat="server">
    <b style="font-size: x-large; font-weight: bold">Welcome <span class="style1" style="font-size: x-large; font-weight: bold">Customer!</span></b>
    <hr />
    <table 
        style="width:100%;">
        <tr>
            <td style="font-size: xx-large; font-weight: bold">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="cpwd.aspx" 
                    Target="main">Change Password</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: xx-large; font-weight: bold">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/SearchImgs.aspx" 
                    Target="main">Search Images</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: xx-large; font-weight: bold">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="index2.aspx" 
                    Target="_top">Logout</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
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
    </table>
    </form>
</body><p></p><p></p><br /><br />
    &nbsp;&nbsp;&nbsp;
</html>
