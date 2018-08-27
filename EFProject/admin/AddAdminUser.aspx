<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="AddAdminUser.aspx.cs" Inherits="EFProject.admin.AddAdminUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 309px;
        }
        .auto-style6 {
            width: 29px;
        }
        .auto-style7 {
            height: 52px;
        }
        .auto-style8 {
            width: 29px;
            height: 52px;
        }
        .auto-style9 {
            width: 150px;
            height: 52px;
        }
        .auto-style10 {
            width: 309px;
            height: 52px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script>
        $(function () {
            $("#btn_Save").click(function () {
                if (
                    $("#<%=txt_UserName.ClientID%>").val() == ""
                    && $("#<%=txt_Email.ClientID%>").val() == ""
                    && $("#<%=txt_Fname.ClientID%>").val() == ""
                    && $("#<%=txt_Lname.ClientID%>").val() == ""
                    && $("#<%=txt_BirthDate.ClientID%>").val() == ""
                    && $("#<%=txt_Address.ClientID%>").val() == ""
                    && $("#<%=txt_Phone.ClientID%>").val() == ""
                    && $("#<%=txt_Password.ClientID%>").val() == ""
                    && $("#<%=txt_JoinDate.ClientID%>").val() == ""
                    && $("#<%=txt_Salary.ClientID%>").val() == ""
                ) {
                    alert("TextBox is Empty");
                }//end if
                else {
                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json;charset=utf-8",
                        url: "AddAdminUser.aspx/AddAdmins",
                        data: "{'userName':'"
                            + $("#<%=txt_UserName.ClientID%>").val()
                            + "','email':'"
                            + $("#<%=txt_Email.ClientID%>").val()
                            + "','fName': '"
                            + $("#<%=txt_Fname.ClientID%>").val()
                            + "','lName':'"
                            + $("#<%=txt_Lname.ClientID%>").val()
                            + "','birthDate':'"
                            + $("#<%=txt_BirthDate.ClientID%>").val()
                            + "','address':'"
                            + $("#<%=txt_Address.ClientID%>").val()
                            + "','phone':'"
                            + $("#<%=txt_Phone.ClientID%>").val()
                            + "','password':'"
                            + $("#<%=txt_Password.ClientID%>").val()
                            + "','joinDate':'"
                            + $("#<%=txt_JoinDate.ClientID%>").val()
                            + "','salary':'"
                            + $("#<%=txt_Salary.ClientID%>").val()
                            + "'}",
                        success: function (results) {
                            alert("record has been saved in database");
                            $("#<%=txt_UserName.ClientID%>").val("");
                            $("#<%=txt_Email.ClientID%>").val(""); 
                            $("#<%=txt_Fname.ClientID%>").val("");
                            $("#<%=txt_Lname.ClientID%>").val("");
                            $("#<%=txt_BirthDate.ClientID%>").val("");
                            $("#<%=txt_Address.ClientID%>").val("");
                            $("#<%=txt_Phone.ClientID%>").val("");
                            $("#<%=txt_Password.ClientID%>").val("");
                            $("#<%=txt_JoinDate.ClientID%>").val("");
                            $("#<%=txt_Salary.ClientID%>").val("");
                        },
                        error: function (results) {
                            alert("Error!!!");
                        }
                    });//ajaxCall
                }//end else
            });//click
        });//load
    </script>
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="input-medium" style="font-size: large">UserName:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_UserName" runat="server" Height="30px" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_UserName" runat="server" ControlToValidate="txt_UserName" ForeColor="Red" ValidationGroup="v">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="input-medium" style="font-size: large">Email:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_Email" runat="server" Height="30px" Width="160px" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_Email" runat="server" ControlToValidate="txt_Email" ForeColor="Red" ValidationGroup="v">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rev_Email" runat="server" ControlToValidate="txt_Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="v">Enter Correct Email</asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="input-medium" style="font-size: large">First Name:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_Fname" runat="server" Height="30px" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_Fname" runat="server" ControlToValidate="txt_Fname" ForeColor="Red" ValidationGroup="v">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="input-medium" style="font-size: large">Last Name:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_Lname" runat="server" Height="30px" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_Lname" runat="server" ControlToValidate="txt_Lname" ForeColor="Red" ValidationGroup="v">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="input-medium" style="font-size: large">Password:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_Password" runat="server" Height="30px" Width="160px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_Password" runat="server" ControlToValidate="txt_Password" ForeColor="Red" ValidationGroup="v">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8"></td>
            <td class="auto-style9" style="font-size: large">Address:</td>
            <td class="auto-style10">
                <asp:TextBox ID="txt_Address" runat="server" Height="30px" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_Address" runat="server" ControlToValidate="txt_Address" ForeColor="Red" ValidationGroup="v">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="input-medium" style="font-size: large">Birth Date:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_BirthDate" runat="server" Height="30px" Width="160px" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_BirthDate" runat="server" ControlToValidate="txt_BirthDate" ForeColor="Red" ValidationGroup="v">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="input-medium" style="font-size: large">Join Date:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_JoinDate" runat="server" Height="30px" Width="160px" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_JoinDate" runat="server" ControlToValidate="txt_JoinDate" ForeColor="Red" ValidationGroup="v">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="input-medium" style="font-size: large">Phone:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_Phone" runat="server" Height="30px" Width="160px" TextMode="Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_Phone" runat="server" ControlToValidate="txt_Phone" ForeColor="Red" ValidationGroup="v">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rev_Phone" runat="server" ControlToValidate="txt_Phone" ForeColor="Red" ValidationExpression="^01[0-2][0-9]{8}$" ValidationGroup="v">Invalid Phone</asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="input-medium" style="font-size: large">Salary:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_Salary" runat="server" Height="30px" Width="160px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_Salary" runat="server" ControlToValidate="txt_Salary" ForeColor="Red" ValidationGroup="v">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rv_Salary" runat="server" ControlToValidate="txt_Salary" ForeColor="Red" MaximumValue="20000" MinimumValue="1000" ValidationGroup="v" ErrorMessage="Range Salary 1000 To 20000"></asp:RangeValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="input-medium">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="input-medium">&nbsp;</td>
            <td class="auto-style5">
                <input ID="btn_Save" type="button" value="Save" style="background-color:blue; width:130px; height:50px;"/>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="input-medium">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
