<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchImgs.aspx.cs" Inherits="SearchImgs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 300px;
            height: 34px;
            font-family:'Comic Sans MS';
        }
        #table{
            height:250px;
            width:700px;
            margin-top:30px;
             margin-left:350px;
             box-shadow:10px 10px 10px #585858;
       
        }
        #Label1{
           font-family:'Comic Sans MS';
           font-size:28px;
           
           margin-top:140px;
            
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
            height:50px;
            width:100px;
            border-radius:5px;
           
        }

        #top{

            font-family:'Comic Sans MS';
            color:grey;
            font-size:24px;
            text-align:center;
            margin-top:50px;
            margin-left:50px;
        }
        .auto-style1 {
            width: 376px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="top">
    
       SEARCH IMAGES</div>
   <div id="table"> <table style="width:100%;">
        <tr>
            <td class="style1">
                Specify Tag Name</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server" autocomplete="off" style="margin-left: 0px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Search Type</td>
            <td class="auto-style1">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" Width="256px">
                    <asp:ListItem Selected="True">Default</asp:ListItem>
                    <asp:ListItem>Personalized</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;&nbsp;</td>
          
            <td class="auto-style1">
                
    <asp:Label ID="Label1" runat="server" ForeColor="Red" 
        Text=""></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td class="style1">
               &nbsp;</td>
            
            <td class="auto-style1">
               &nbsp; <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
       </div>
    <asp:Table ID="Table1" runat="server" GridLines="Both">
    </asp:Table>
    </form>
   
</body>
</html>