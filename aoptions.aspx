<%@ Page Language="VB" AutoEventWireup="false" CodeFile="aoptions.aspx.vb" Inherits="aoptions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Admin Page</title>
    <style type="text/css">
         ul {
    list-style-type: none;
    margin: -5px;
    padding: 0;
    overflow: hidden;
    background-color: #333;
    margin-top:-13px;
    margin-left:-8px;
    width:1366px;
}

li {
    float: left;
}

li a {
    display: inline-block;
    color: white;
    font-family:'Comic Sans MS';
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size:26px;
}


        li a:hover {
            background-color: #00ff21;
        }

li a:visited {
    background-color: #00ff21;
}
#home
{
    cursor:default;
}

#log{
    text-align:end;
    
}

        #l {
            margin-left: 240px;
            padding-left:75px;
            
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
   <ul>
               <li> <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="main.htm" 
                    Target="main">Home</asp:HyperLink></li>

               <li> <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="cpswd.aspx" 
                    Target="main">Change Password</asp:HyperLink></li>
            
               <li> <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/UploadFile.aspx" 
                    Target="main">Upload Images</asp:HyperLink></li>
            
               <li> <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/RemvImgs.aspx" 
                    Target="main">Remove Images</asp:HyperLink></li>
           
              <li>  <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ViewImgs.aspx" 
                    Target="main">View Images</asp:HyperLink></li>
           
                <li><asp:HyperLink ID="l" runat="server" NavigateUrl="index2.aspx" 
                    Target="_top">Logout</asp:HyperLink></li>
          </ul>
   </form>
</body>
</html>