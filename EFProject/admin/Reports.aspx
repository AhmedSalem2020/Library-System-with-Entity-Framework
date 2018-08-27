<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="EFProject.admin.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="auto-style1">
        <tr>
            <td style="text-align:center;">
                <asp:Label ID="lbl_Report" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#990000" Text="Reports about Library System"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align:center;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align:center;">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <div class="row-fluid top-news span3" style="margin-left:20%; width:60%;">
                    <div class="span12" style="margin-left:17px;">
                        <a class="btn red" href="Admin.aspx"><span style="text-align:center;">Admins Report</span></a>
                    </div>
                    <div class="span12">
                        <a class="btn green" href="Employee.aspx"><span style="text-align:center;">Employees Report</span></a>
                    </div>
                    <div class="span12">
                        <a class="btn blue" href="Members.aspx"><span style="text-align:center;">Members Report</span></a>
                    </div>
                    <div class="span12">
                        <a class="btn yellow" href="Books.aspx"><span style="text-align:center;">Books Report</span></a>
                    </div>
                    <div class="span12">
                        <a class="btn gray" href="BookStatus.aspx"><span style="text-align:center;">BookStatus Report</span></a>
                    </div>
                </div>
            </td>
        </tr>
        </table>
</asp:Content>
