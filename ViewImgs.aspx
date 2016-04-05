<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewImgs.aspx.cs" Inherits="ViewImgs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
       #table{
            height:200px;
            width:550px;
            margin-top:0px;
             margin-left:400px;
             box-shadow:10px 10px 10px #585858;
       
        }
       #Table1{

            text-align:center;
            border-collapse: collapse;
           margin-top:30px; 
            width:100%;
            font-family:'Comic Sans MS';
            font-size:34px;

        }
       .style1
        {
            width: 300px;
            height: 34px;
            font-family:'Comic Sans MS';
            
           

        }

       #Label1{
           font-family:'Comic Sans MS';
           font-size:34px;
           
           margin-top:10px;
             margin-left:400px;
       }
        #TextBox1 {
            background: white;
            border: 3px;
            border-color: black;
            border-bottom-style:solid;
            -webkit-border-radius: 5px;
            border-radius: 5px;
            font-size: 26px;
            font-family: 'Comic Sans MS';
            outline: none;
            
            height: 32px;
            width: 350px;
        }

        #Button1{
            height:60px;
            width:100px;
            border-radius:5px;
           
        }

        #top{

            font-family:'Comic Sans MS';
            color:grey;
            font-size:24px;
            margin-top:10px;
             margin-left:600px;
        }
    </style>
</head>
<body background="theme7.png">
    <form id="form1" runat="server">
    <div id ="top">
    
        VIEW IMAGES</div>
    <div id="table">
        <table>
        <tr>
            <td class="style1">
                Specify Tag Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" autocomplete="off" style="margin-left: 0px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        
    </table>
       </div>
    <asp:Table ID="Table1" runat="server" GridLines="Both">
    </asp:Table>
    <asp:Label ID="Label1" runat="server" ForeColor="Red" 
        Text=""></asp:Label>
    </form>
   
</body>
</html>