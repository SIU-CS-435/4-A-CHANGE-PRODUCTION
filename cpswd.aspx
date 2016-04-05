<%@ Page Language="VB" AutoEventWireup="false" CodeFile="cpswd.aspx.vb" Inherits="cpwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        table{
            height:200px;
            width:300px;
            margin-top:80px;
             margin-left:400px;
             box-shadow:10px 10px 10px #585858;
       
        }
        
        #head h3{
            color:grey;
            text-align:center;
            font-family:'Comic Sans MS';
            font-size:24px;

        }
        #Label1{
         font-size:26px;
         font-family:'Comic Sans MS';
         padding:0px;
        }
        #TextBox1{
      
            height:32px;
            width:250px;
            border-radius:5px;
            font-family:'Comic Sans MS';
            padding:0px;
        }
        #Label2{
     font-size:26px;
         font-family:'Comic Sans MS';
         padding:0px;
        }
        #TextBox2{
         
            height:32px;
            width:250px;
            border-radius:5px;
            font-family:'Comic Sans MS';
            padding:0px;
        }
        #Label3{
            font-size:26px;
         font-family:'Comic Sans MS';
         padding:0px;
        }
        #TextBox3{
         
            height:32px;
            width:250px;
            border-radius:5px;
            font-family:'Comic Sans MS';
            padding:0px;
        }
        #Button1{
            height:60px;
            width:120px;
            border-radius:10px;
        margin-left:250px;
            }

        #Button1:hover
        {
           background-color:green;
        }
        .auto-style1 {
            width: 343px;
        }

    </style>

</head>
<body  >
    <form id="form1" runat="server">
    <div id="head"><h3>CHANGE PASSWORD</h3></div>
    <table >
        <tr >
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="Current Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" style="margin-bottom: 0px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
           
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="New  Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" style="margin-bottom: 0px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                 &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2"
                 ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}"
ErrorMessage="Password must contain: Minimum 8 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character" ForeColor="Red" />
            </td>
           
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Confirm Password:"></asp:Label>
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
           
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Update" />
            </td>
           
        </tr>
    </table>
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" 
        ForeColor="" Text=""></asp:Label>
    </form>
    </body>
</html>
