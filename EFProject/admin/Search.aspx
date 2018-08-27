<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="EFProject.admin.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }

        .auto-style2 {
            height: 21px;
        }
    </style>
	<link href="../assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet" />
  
    <link href="../assets/plugins/chosen-bootstrap/chosen/chosen.css" rel="stylesheet" type="text/css" />
    
  <script type="text/javascript">  
      $(function () {

          $.ajax({
              type: "POST",
              url: "Search.aspx/GetMyResult",
              data: '',
              contentType: "application/json; charset=utf-8",
              dataType: "json",

              success: function (res) {
                  result3 = res.d;
                  index = 2;
                  $.each(result3, function (ie, e) {

                      $("#inputusers").append('<option  value="' + e.userName + '">' + e.lName + '</option>');
                      $(".chzn-results").append('<li id="inputusers_chzn_o_' + index + '" class="active-result " style="">' + e.lName + '</li>');
                      index++;
                      //<li id="inputusers_chzn_o_1" class="active-result highlighted" style="">All</li>
                  });
                  
              },
              error: function (Error) {

                  console.log(Error);
                  alert("Error");
              }


          });


      });
    </script></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="ui-accordion">
        <tr>
            <td>&nbsp;</td>
            <td>

                <div class="span8">
                    <div class="pull-left">
                        <select data-placeholder="Select user" class="chosen" tabindex="-1" id="inputusers">
                            <option value="0"></option>
                             <option value="1">All</option>
                   
                        </select>
                    </div>
                <//div>

            </td>
            <td>&nbsp;<asp:Button ID="btn_go" runat="server" OnClick="btn_go_Click" Text="Go" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="lbl_username" runat="server"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label runat="server" Text="Email"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="lbl_email" runat="server"></asp:Label>
            </td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="label" runat="server" Text="Birthdate"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="lbl_birthdate" runat="server"></asp:Label>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Address "></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_address" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Phone"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_Phone" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
  
    <%--<script type="text/javascript" src="../assets/plugins/chosen-bootstrap/chosen/chosen.jquery.min.js"></script>--%>
    <script src="../assets/plugins/chosen-bootstrap/chosen/chosen.jquery.js"></script>
</asp:Content>
