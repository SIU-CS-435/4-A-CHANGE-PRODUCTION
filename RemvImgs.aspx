<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RemvImgs.aspx.cs" Inherits="RemvImgs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
         #top{

            font-family:'Comic Sans MS';
            color:grey;
            font-size:24px;
            margin-left:600px;
           
        }
        #Table1{

            text-align:center;
            border-collapse: collapse;
            
            width:100%;
            font-family:'Comic Sans MS';
            font-size:34px;

        }
       
        

    </style>
</head>
<body background="theme7.png">
    <form id="form1" runat="server">
    <div id="top">
    
       REMOVE IMAGES</div>
    <asp:Table ID="Table1" runat="server" GridLines="Both">
    </asp:Table>
    <asp:Image ID="Image1" runat="server" />
    <asp:Image ID="Image2" runat="server" />
    </form>
   
</body>
</html>