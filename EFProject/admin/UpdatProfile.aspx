<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="UpdatProfile.aspx.cs" Inherits="EFProject.admin.UpdatProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_uName" runat="server" Text="User Name" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt_userName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_email" runat="server" Text="E_mail" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt_mail" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lbl_Name1" runat="server" Text="First Name" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txt_Fname" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_name2" runat="server" Text="Last Name " Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt_lname" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_bD" runat="server" Text="Birth Date" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt_birthDate" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_add" runat="server" Text="Address" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt_address" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_id" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style11">
                        <asp:Button ID="btn_Update" runat="server" OnclientClick="myMethod(event)" Text="Update" />
                    </td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
;2                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    <script src="jquery-3.2.1.js"></script>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>
  <script type="text/javascript">
      function myMethod(e) {
          var data = { 'fname': $("#<%=txt_Fname.ClientID%>").val(), 'lname': $("#<%=txt_lname.ClientID%>").val(), 'email': $("#<%=txt_mail.ClientID%>").val(), 'add': $("#<%=txt_address.ClientID%>").val(), 'id': $("#<%=lbl_id.ClientID%>").text() };
          "{}"
          var json1 = JSON.stringify(data);
          $.ajax
              ({
                  type: "POST",
                  contentType: "application/json; charset=utf-8",
                  dataType: "json",
                  data: "{ 'fname':'" + $("#<%=txt_Fname.ClientID%>").val() + "'}",//json1,
                  url: "UpdatProfile.aspx/UpdateData",
                  success: function (result) {
                      debugger;
                      alert('sucess');
                  },
                  error: function (status, ex) {
                      glo1 = status;
                      glo2 = ex;
                      debugger;
                      //alert("Error Code: Status: " + status + " Ex: " + ex);
                      console.log(status);
                      console.log(ex);
                  }
              });
          // return false;
      }
      </script>
    </asp:Content>
