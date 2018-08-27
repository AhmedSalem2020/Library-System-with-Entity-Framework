<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="UpdateBook.aspx.cs" Inherits="EFProject.admin.UpdateBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 289px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>`</td>
            <td>
                <asp:ListBox ID="lb_books" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lb_books_SelectedIndexChanged"></asp:ListBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbl_title" runat="server" Text="Title"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_title" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_title" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbl_noofcopies" runat="server" Text="No Of Copies"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_noofcopies" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_noofcopies" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt_noofcopies" ErrorMessage="RangeValidator" MaximumValue="100" MinimumValue="1">1 to 100</asp:RangeValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbl_available" runat="server" Text="Available"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_available" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_available" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txt_available" ErrorMessage="RangeValidator" MaximumValue="1" MinimumValue="0">0 OR 1</asp:RangeValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbl_desc" runat="server" Text="Description "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_desc" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_desc" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbl_id" runat="server" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" Text="Update" />
            </td>
            <td>
                <asp:Button ID="btn_remove" runat="server" OnClick="btn_remove_Click" Text="Remove" ValidationGroup="del" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
