<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index2.aspx.vb" Inherits="index2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<style>
    table
{
position:absolute;
left:520px;
top:200px;
box-shadow: 10px 10px 20px #888888;
        height: 291px;
       width: 461px;
        overflow-x: hidden;
          overflow-y: hidden;
         

    }

    .style1
    {
       
        width: 107px;
        color : #ff0000;
          overflow-y: hidden;
          overflow-x: hidden;

    }
    .style2
    {
         overflow-x: hidden;
        color: #99CCFF;
          overflow-y: hidden;


    }
    .nav {
    
    display : inline-block;
    height: 86px;
    width:1365px;
    background-color: #233f93;
    margin-left:-7.5px;
    margin-top:-7.6px;
     overflow-x: hidden;
      overflow-y: hidden;
      
     
  
    }
    .nav h1{
         font-weight: bolder; 
         font-style: normal;
          font-family:"Comic Sans MS", cursive, sans-serif; 
          color: #ffffff;
          padding-bottom:30px;
           overflow-x: hidden;
            overflow-y: hidden;
            text-shadow:2px 2px 8px black;
         

    }
    .nav h1  a{
      font-weight: bolder; 
         font-style: normal;
         padding-top:25px;
         font-size:24px;
          font-family:"Comic Sans MS", cursive, sans-serif; 
          color: white;
        position:absolute;
    text-decoration:none;
        margin-left:76%;
         overflow-x: hidden;
          overflow-y: hidden;
          top: 17px; 
          left: 180px; 
          width: 144px; 
          height: 29px;
    }
    
    .nav h1 a:hover{
        color:#ff0000;
    }
       
    .auto-style2 {
        width: 458px;
        color : #585858;
         font-family:"Comic Sans MS", cursive, sans-serif; 
        overflow-y: hidden;
        overflow-x: hidden;
        background: white;
    text-decoration:none;
    }
    
       
    .auto-style3 {
        width: 130px;
        background: white; 
   
 
   -webkit-border-radius: 10px; 
   border-radius:10px;
 

    color: #666; 
    outline: none; 
    height:32px;     
    }

   
     .auto-style6 {
         font-family:"Comic Sans MS", cursive, sans-serif; 
        width: 458px;
        color : #585858
           
    }

     #Button1:hover{
         background-color: green;
     }
      #Button2:hover{
         background-color: green;
     }
   #log
   {
      position:absolute;
left:531px;
top:250px;
 font-family:"Comic Sans MS", sans-serif;
 font-size:36;
 color:#606060;

   }
       
</style>
    <title>login</title>
</head>
    <body style="width: 1140px; height: 84px;" >
 

    <div class="nav"><h1 >4 A CHANGE <a href='Reg.aspx' " >SIGN UP</a></h1></div>
<form id="form1" runat="server" >   

<p style="width: 172px">
    &nbsp;</p>
 <table style="width:38%;">
     
     <tr>
         <td class="auto-style6">
            
                <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="g1" 
                    Text="Admin" Font-Bold="True" Font-Size="Larger" />    
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g1" 
                    Text="Customer" Font-Bold="True" Font-Size="Larger" />
            </td>
         
     </tr>
     <tr>
             <td class="auto-style2" style="font-size: x-large; font-weight: bolder; font-style: normal;">
                 User ID</td></tr>
          <tr>   <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" style="border-radius:5px;" Height="34px" Width="230px" font-size="18px" placeholder="Enter User ID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*" ></asp:RequiredFieldValidator>
                </td></tr>
         
     </tr>
     <tr>
         <td class="auto-style2" style="font-size: x-large; font-weight: bolder; font-style: normal;">
             Password</td>
        </tr>
     <tr> <td class="auto-style3">
             <asp:Panel ID="Panel1" runat="server">
             </asp:Panel>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="34px" Width="230px" font-size="25px" style="border-radius:5px;" placeholder="*************"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
         
     </tr>
     <tr>
         
         <td class="auto-style9">
                <asp:Button ID="Button1" height="50px" width="70px" border-radius="15px"   style="border-radius:5px;"  runat="server" Text="Sign-In" />
            &nbsp;&nbsp;
                 <asp:Button ID="Button2" height="50px" width="70px" border-radius="15px"  runat="server" style="border-radius:5px;"  Text="Clear" />
            </td>
        
     </tr>
     <tr>
         
         <td class="auto-style6">
        <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Times New Roman" 
            Text=""></asp:Label>
         </td>
       
     </tr>
 </table>

    </body>
</form>



       



</html>
