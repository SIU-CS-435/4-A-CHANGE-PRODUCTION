<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index2.aspx.vb" Inherits="index2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<style>
    table
{
position:absolute;
left:400px;
top:170px;
        height: 153px;
        width: 461px;
    }
    .style1
    {
        width: 107px;
    }
    .style2
    {
        color: #99CCFF;
    }
</style>
    <title>PIS</title>
</head>
 <form id="form1" runat="server" >
<body style="background-repeat: no-repeat;" background="images/b4.jpg">
 <h1 style="font-size: xx-large; font-weight: bolder; font-style: normal; color: #003366; text-align: center">Priority And Recommendation In Personalized And Dynamic Image Search</h1>  
    <div style="color: #000000; font-size: xx-large;">
        <span class="style2" style="color: #000000">New Customers </span> <a href='Reg.aspx' style="color: #000000">
        <span class="style2" style="color: #3333CC">Register </span> </a><span class="style2" style="color: #000000">Here</span><hr /><p></p>
    </div>
    
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
<p>
    &nbsp;</p>

 <table style="width:100%;">
     <tr>
         <td class="style1">
             &nbsp;</td>
         <td>
                <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="g1" 
                    Text="Admin" Font-Bold="True" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g1" 
                    Text="Customer" Font-Bold="True" />
            </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td class="style1" style="font-size: x-large; font-weight: bolder; font-style: normal;">
             User ID</td>
         <td>
                <asp:TextBox ID="TextBox1" runat="server" style="margin-bottom: 0px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td class="style1" style="font-size: x-large; font-weight: bolder; font-style: normal;">
             Password</td>
         <td>
             <asp:Panel ID="Panel1" runat="server">
             </asp:Panel>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="153px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td class="style1">
             &nbsp;</td>
         <td>
                <asp:Button ID="Button1" runat="server" Text="Sign-In" />
             <asp:Button ID="Button2" runat="server" Text="Reset" />
            </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td class="style1">
             &nbsp;</td>
         <td>
        <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Times New Roman" 
            Text=""></asp:Label>
         </td>
         <td>
             &nbsp;</td>
     </tr>
 </table>
 <p>
     &nbsp;</p>
</form>


<p align="center" style="color: #660066; font-size: large; font-weight: bold; font-style: oblique">
    &nbsp;</p>
<p align="center" style="color: #660066; font-size: large; font-weight: bold; font-style: oblique">
    &nbsp;</p>
<p align="center" style="color: #660066; font-size: large; font-weight: bold; font-style: oblique">
    &nbsp;</p>
<p align="center" style="color: #660066; font-size: large; font-weight: bold; font-style: oblique">
    &nbsp;</p>
<p align="center" style="color: #660066; font-size: large; font-weight: bold; font-style: oblique">
    &nbsp;</p>
<p align="center" style="color: #660066; font-size: large; font-weight: bold; font-style: oblique">
    &nbsp;</p>
<p align="center" style="color: #660066; font-size: large; font-weight: bold; font-style: oblique">
    &nbsp;</p>
<p align="left" style="color: #660066; font-size: x-large; font-weight: bold; font-style: oblique">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; If &quot;Plan A&quot; Didn&#39;t work, The Alphabet Has 25 More Letters.</p>
<p align="left" dir="ltr" style="font-style: italic; font-weight: bold; font-size: x-large; color: #993366">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Stay Cool !!!!!</p>



</html>
