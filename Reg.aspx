<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Reg.aspx.vb" Inherits="Reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <style type="text/css">
        .style1 h1 {
            color: white;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            text-align: center;
            height: 50px;
            margin-top: -10px;
            background-color: #233f93;
            margin-left: -7.6px;
            width: 1316px;
            padding: 25px;
            padding-bottom: 0px;
            padding-top: 30px;
        }

        .style2 {
            width: 189px;
        }

        #TextBox1, #TextBox3, #TextBox4, #TextBox5 {
            background: white;
            border: 2px;
            border-color: #585858;
            border-bottom-style: dashed;
            -webkit-border-radius: 5px;
            border-radius: 5px;
            font-size: 26px;
            font-family: 'Comic Sans MS';
            outline: none;
            ;
            height: 32px;
            width: 350px;
        }

        .stylet {
            box-shadow: 10px 10px 10px #585858;
        }

        #Button1, #Button2 {
            border-radius: 10px;
            font-family: 'Comic Sans MS';
            font-size: large;
            box-shadow: 3px 3px 2px #585858;
            margin-left: 53px;
            }

            #Button1:hover {
                background-color: green;
                color: white;
            }

            #Button2:hover {
                background-color: green;
                color: white;
            }

        #Label5 {
            font-size: 24px;
            font-family: 'Comic Sans MS';
        }
    </style>
</head>
<body >
    <form id="form1" runat="server" autocomplete="off">
   
    <div class="style1" ">
                <h1>CUSTOMER REGISTRATION FORM</h1></div>
      
        <table class="stylet" style="width:40%; height: 468px; margin-left: 450px; margin-top:-100px; ">
        <tr>
            <td class="auto-style1" style="font-size: x-large; font-weight: bold">
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Customer Name " autocomplete="off"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Ex: JOHN"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td><br />
               &nbsp;</tr><tr><td class="auto-style1" style="font-size: x-large; font-weight: bold"><asp:Label ID="Label2" 
                   runat="server" Font-Size="x-Large" 
                    Text="Customer Address "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="62px" TextMode="MultiLine" 
                    Width="202px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-size: x-large; font-weight: bold">
                <br />
                <asp:Label ID="Label3" runat="server" Font-Size="x-Large" autocomplete="off" Text="E-Mail ID"></asp:Label>
        </td>
            <td>
               <asp:TextBox ID="TextBox3" runat="server" placeholder="EX.JOHN@GMAIL.COM"></asp:TextBox>
                     &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                       &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Invalid email! Example:xxxx@gmail.com" Font-Size="Small" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
              
            </td>
            <td>
                &nbsp;</td><br />
                     &nbsp;</tr><tr><td class="auto-style1" style="font-size: x-large; font-weight: bold"><asp:Label ID="Label4" 
                         runat="server" Font-Size="x-Large" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" placeholder="***********"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                &nbsp&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Textbox4"
         ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}"
      ErrorMessage ="Password must contain: Minimum 8 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character" 
                    ForeColor="Red" />
            </td>
            <td>
                &nbsp;</td><br />
              &nbsp;</tr><tr><td class="auto-style1" style="font-size: x-large; font-weight: bold"><asp:Label ID="Label6" 
                  runat="server" Font-Size="x-Large" Text="Registration Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
         &nbsp;</td>
            
             &nbsp;</tr><tr><td class="auto-style1">&nbsp;</td>
    <tr>
        <td>
                <asp:Label ID="Label7" 
                         runat="server"  class="auto-style1" style="font-Size: X-Large ; font-weight: bold" Text="Gender"></asp:Label>
            </td>
                
                <td>
                <asp:DropDownList ID="DropDownList1" runat="server"
                                  AppendDataBoundItems="true" Height="26px" Width="108px">
                <asp:ListItem Value="-1">Select</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                </td>
            </tr>
<tr>
    <br />
   
            <td>
                
                
        <asp:Button ID="Button1" runat="server" Text="Register" Height="42px" Width="86px" />
                
                </td>
                <td>
                <asp:Button ID="Button2" runat="server"  Text="Clear" Height="42px" Width="86px"/>
                
            </td>
   </tr>
            <td>
               </td><br />
&nbsp;</tr></table><asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#CC0000" 
        Text="registration status:"></asp:Label>
    </form>
   
</body>
</html>
