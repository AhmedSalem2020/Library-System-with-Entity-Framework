<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="UpdateEmployee.aspx.cs" Inherits="EFProject.admin.UpdateEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 854;
        }
        .auto-style2 {
            width: 965px;
        }
        .auto-style3 {
            width: 218px;
        }
        .auto-style4 {
            width: 553px;
        }
        .auto-style5 {
            width: 553px;
            height: 21px;
        }
        .auto-style6 {
            width: 218px;
            height: 21px;
        }
        .auto-style7 {
            width: 965px;
            height: 21px;
        }
        .auto-style8 {
            height: 21px;
        }
        .auto-style9 {
            width: 553px;
            height: 28px;
        }
        .auto-style10 {
            width: 218px;
            height: 28px;
        }
        .auto-style11 {
            width: 965px;
            height: 28px;
        }
        .auto-style12 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="ui-accordion">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:ListBox ID="lsb_employee" runat="server" AutoPostBack="True" CssClass="auto-style1" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lbl_username" runat="server" Text="User Name"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_username" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:Label ID="lbl_hint1" runat="server" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lbl_mail" runat="server" Text="E-mail"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_mail" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_mail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_mail" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email is not  formated</asp:RegularExpressionValidator>
                <asp:Label ID="lbl_hint2" runat="server" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lbl_fname" runat="server" Text="First Name "></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_fname" runat="server" Width="206px"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_fname" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lbl_lname" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_lname" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_lname" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lbl_birthdate" runat="server" Text="Birth Date"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_birthdate" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_birthdate" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lbl_address" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_address" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_address" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lbl_phone" runat="server" Text="Phone"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_phone" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">
                <asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" Text="Update" />
            </td>
            <td class="auto-style11">
                <asp:Button ID="btn_remove" runat="server" OnClick="btn_remove_Click" Text="Remove" />
            </td>
            <td class="auto-style12">
                <asp:Label ID="lbl_id" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
