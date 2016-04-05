<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadFile.aspx.cs" Inherits="SecureFile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
  
    <style type="text/css">
         .style1
        {
            width: 300px;
            height: 40px;
            font-family:'Comic Sans MS';
            font-size:24px;
        }
        #table{
            height:300px;
            width:700px;
            margin-top:30px;
             margin-left:400px;
             box-shadow:10px 10px 10px #585858;
       
        }
        #Label1{
           font-family:'Comic Sans MS';
           font-size:34px;
           
           margin-top:140px;
             margin-left:250px;
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
            margin-top:20px;
             margin-left:600px;
        }

        #drop{
            height:40px;
            width:90px;
        }
    </style>
</head>

<body background="">
    <form id="form1" runat="server">
    <div id="top">UPLOAD IMAGES</div>
        <div id="table">
    <table >
        <tr>
            <td class="style1">
                Default Tag Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" autocomplete="off"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Select File</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="442px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Category</td>
            <td id ="drop">
                &nbsp;<asp:DropDownList ID="DropDownList1"  runat="server" Height="20px" 
                    Width="128px">
                </asp:DropDownList>
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
                <asp:Button ID="Button1" runat="server" Text="Upload File" 
                    onclick="Button1_Click" />
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
    </table>
        </div>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
 
    
       
    </form>
</body>
</html>