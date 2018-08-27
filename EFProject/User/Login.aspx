<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EFProject.User.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
      <style type="text/css">
    .auto-style2 {
        width: 967px;
    }
    .auto-style6 {
              width: 402px;
          }
    .auto-style7 {
              width: 215px;
          }
          .auto-style8 {
              width: 232px;
              height: 73px;
          }
          .auto-style9 {
              width: 402px;
              height: 73px;
          }

          #mainwrapper {

              width: 60%;
                height: 400px;
                margin: 25px auto;
                background: -webkit-radial-gradient(circle,white,lightblue);
                border: 2px solid black;
                border-radius: 15px;
                /*box-shadow: pink -10px -10px 10px,blue 10px 10px 10px;*/
                padding: 10px;
                display: -webkit-box;
                -webkit-box-orient: horizontal;
                -webkit-transition: all 3s;
          }

          #Button1{

               background-color: #008CBA; /* Green */
                border: none;
                color: white;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 15px;
                width:80%;
                
                
          }
          #Label10{

              text-decoration: underline;
                  text-indent: 50px;
                word-spacing: 5px;


          }

        #LinkButton1{

                
                color: white;
                padding: 14px 25px;
                text-align: center; 
                display: inline-block;
                 font-size: 20px
        }

        #Label14 , #Label15{

              font-size:20px;
              word-spacing: 2px;
        }

      

          .auto-style10 {
              width: 232px;
              height: 32px;
          }
          .auto-style11 {
              width: 402px;
              height: 32px;
          }

      

          .auto-style12 {
              width: 232px;
              height: 38px;
          }
          .auto-style13 {
              width: 402px;
              height: 38px;
          }

      

          .auto-style14 {
              width: 232px;
          }

      

      </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="mainwrapper">

             <table class="auto-style2">
    <tr>
        <td class="auto-style8">&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#009900" Text="Login to your account" Font-Underline="False"></asp:Label>
        </td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label14" runat="server" Text="User Name"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txt_username" runat="server" ValidationGroup="login" BorderColor="#990099" CssClass="auto-style7" Font-Bold="True" Font-Size="Medium" placeholder="Enter your name here"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txt_username" ForeColor="Red" ValidationGroup="login">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11"></td>
    </tr>
    <tr>
        <td class="auto-style12">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label15" runat="server" Text="Password"></asp:Label>
        </td>
        <td class="auto-style13">
            <asp:TextBox ID="txt_loginPass" runat="server" TextMode="Password" ValidationGroup="login" BorderColor="#990099" CssClass="auto-style7" Font-Bold="True" Font-Size="Medium" ToolTip="Enter your password here"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txt_loginPass" ForeColor="Red" ValidationGroup="login">*</asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style6">
            <asp:CheckBox ID="chk_remeber" runat="server" Text="Remember Me" Font-Bold="True" Font-Underline="True" ForeColor="#6600CC" Font-Size="Medium" />
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#6600FF" OnClick="LinkButton1_Click" ValidationGroup="forget" Font-Size="Medium">I Forget My Password</asp:LinkButton>
        </td>
    </tr>

    <tr>
        <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
        </td>
        <td class="auto-style6">
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server"  BackColor="#009900" OnClick="btn_login_Click1" Text="Login" ValidationGroup="login" ForeColor="White" Width="117px" />
            <asp:Label ID="lbl_result" runat="server" Font-Size="Large"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style6">
            &nbsp;&nbsp; 
        </td>
    </tr>
    </table>
        </div>
    </form>
</body>
</html>
