<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="EFProject.admin.ViewProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1" border="0">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_uName" runat="server" Text="User Name" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lbl_userName" runat="server" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_email" runat="server" Text="E_mail" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lbl_mail" runat="server" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lbl_Name1" runat="server" Text="First Name" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lbl_Fname" runat="server" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_name2" runat="server" Text="Last Name " Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lbl_lname" runat="server" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_bD" runat="server" Text="Birth Date" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lbl_birthDate" runat="server" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_add" runat="server" Text="Address" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lbl_address" runat="server" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style11">
                        <asp:Button ID="btn_Update" runat="server" OnClick="btn_Update_Click" Text="Update" />
                    </td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
</asp:Content>
