<%@ Page Language="VB" AutoEventWireup="false" CodeFile="aoptions.aspx.vb" Inherits="aoptions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <style type="text/css">
        .style1
        {
            color: #CC0000;
        }
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body background="images/b10.jpg" style="background-repeat: no-repeat;">
    <form id="form1" runat="server">
    <b style="font-size: x-large; font-weight: bolder">Welcome <span class="style1" style="font-size: x-large; font-weight: bolder">Administrator!</span></b>
    <hr />
    <table 
        style="width:100%;">
        <tr>
            <td style="font-size: xx-large; font-weight: bold">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="cpwd.aspx" 
                    Target="main">Change Password</asp:HyperLink>
            &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: xx-large; font-weight: bold">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/UploadFile.aspx" 
                    Target="main">Upload Images</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: xx-large; font-weight: bold">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/RemvImgs.aspx" 
                    Target="main">Remove Images</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-size: xx-large; font-weight: bold">
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ViewImgs.aspx" 
                    Target="main">View Images</asp:HyperLink>
            </td>
            <td class="auto-style1" style="font-size: large; font-weight: bold">
                </td>
            <td class="auto-style1" style="font-size: large; font-weight: bold">
                </td>
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
    </table><p></p>
    &nbsp;</form>
</body>
</html>
