<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="Addbook.aspx.cs" Inherits="EFProject.admin.Addbook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 321px;
        }

        .auto-style3 {
            width: 220px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    ة<table class="ui-accordion">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lbl_title" runat="server" Text="Title"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_title" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_title" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lbl_author" runat="server" Text="Author"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddl_author" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddl_author" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lbl_publisher" runat="server" Text="Publisher"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddl_publisher" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lbl_pubdate" runat="server" Text="Publishing Date"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_pubdate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_pubdate" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lbl_category" runat="server" Text="Category"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddl_category" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lbl_edition" runat="server" Text="Edition"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_edition" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_edition" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <%--<asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="txt_edition" ErrorMessage="RangeValidator" MaximumValue="10" MinimumValue="1">The number is out of range</asp:RangeValidator>--%>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lbl_noofcopies" runat="server" Text="No Of Copies"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_noofcopies" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_noofcopies" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <%--<asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="txt_noofcopies" ErrorMessage="RangeValidator" MaximumValue="100" MinimumValue="1">The number is out of range</asp:RangeValidator>--%>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lbl_description" runat="server" Text="Descriptions"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_desc" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txt_desc" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <%--<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt_desc" ErrorMessage="RangeValidator" MaximumValue="50" MinimumValue="1">The number must be in(1:50)</asp:RangeValidator>--%>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="btn_addbook" runat="server" OnClick="btn_addbook_Click" Text="Add Book" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
