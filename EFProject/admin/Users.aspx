<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="EFProject.admin.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <table class="auto-style1">
        <tr>
            <td>
                <div class="portlet box blue ">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="icon-reorder"></i>Admins Data</div>
                        <div class="tools">
                            <a class="collapse" href="javascript:;"></a><a class="config" data-toggle="modal" href="#portlet-config"></a><a class="reload" href="javascript:;"></a><a class="remove" href="javascript:;"></a>
                        </div>
                    </div>
                    <div class="portlet-body" style="width:100%">
                <asp:GridView ID="gv_Admin" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" ForeColor="Black" GridLines="Horizontal" OnRowCancelingEdit="gv_Admin_RowCancelingEdit" OnRowDeleting="gv_Admin_RowDeleting" OnRowEditing="gv_Admin_RowEditing" OnRowUpdating="gv_Admin_RowUpdating" Width="100%">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField HeaderText="UserName">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_UserName" runat="server" Text='<%# Bind("userName") %>' ValidationGroup="v" Width="120px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_UserName" runat="server" ControlToValidate="txt_UserName" ValidationGroup="v" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("userName") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_Email" runat="server" CausesValidation="True" Text='<%# Bind("email") %>' TextMode="Email" ValidationGroup="v" Width="135px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_Email" ControlToValidate="txt_Email" ValidationGroup="v" ForeColor="Red" runat="server" Text="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rev_Email" runat="server" ControlToValidate="txt_Email" ForeColor="Red" ValidationGroup="v" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="Enter Correct Email" ></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="FirstName ">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_Fname" runat="server" Text='<%# Bind("fName") %>' CausesValidation="True" ValidationGroup="v" Width="90px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_Fname" runat="server" ForeColor="Red" ValidationGroup="v" ControlToValidate="txt_Fname" Text="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("fName") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="LastName">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_Lname" runat="server" Text='<%# Bind("lName") %>' CausesValidation="True" ValidationGroup="v" Width="90px"></asp:TextBox>
                                <asp:RequiredFieldValidator ForeColor="Red" ID="rfv_Lname" runat="server" ValidationGroup="v" ControlToValidate="txt_Lname" Text="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("lName") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="HireDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_HierDate" runat="server" Text='<%# Bind("JoinDate") %>' CausesValidation="True" ValidationGroup="v" Width="110px"></asp:TextBox>
                                <asp:RequiredFieldValidator ForeColor="Red" ID="rfv_HierDate" runat="server" ValidationGroup="v" ControlToValidate="txt_HierDate" Text="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Convert.ToDateTime(Eval("JoinDate")).ToString("dd/MM/yyyy") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_Phone" runat="server" Text='<%# Bind("phone") %>' Width="90px" TextMode="Phone" ValidationGroup="v"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_Phone" runat="server" ControlToValidate="txt_Phone" ForeColor="Red" ValidationGroup="v">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Salary">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_Salary" runat="server" Text='<%# Bind("salary") %>' CausesValidation="True" ValidationGroup="v" Width="90px" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ForeColor="Red" ID="rfv_Salary" runat="server" ValidationGroup="v" ControlToValidate="txt_Salary" Text="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ForeColor="Red" ID="rv_Salary" runat="server" ControlToValidate="txt_Salary" MaximumValue="20000" MinimumValue="1000" Text="Range Salary 1000 to 20000" ValidationGroup="v" ></asp:RangeValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("salary") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <div class="portlet box green ">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="icon-reorder"></i>Employees Data</div>
                        <div class="tools">
                            <a class="collapse" href="javascript:;"></a><a class="config" data-toggle="modal" href="#portlet-config"></a><a class="reload" href="javascript:;"></a><a class="remove" href="javascript:;"></a>
                        </div>
                    </div>
                    <div class="portlet-body" style="width:100%">
                <asp:GridView ID="gv_Employee" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" ForeColor="Black" GridLines="Horizontal" OnRowCancelingEdit="gv_Employee_RowCancelingEdit" OnRowDeleting="gv_Employee_RowDeleting" OnRowEditing="gv_Employee_RowEditing" OnRowUpdating="gv_Employee_RowUpdating" Width="100%">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField HeaderText="UserName">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_UserName" runat="server" Text='<%# Bind("userName") %>' ValidationGroup="gv" Width="120px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_UserName" runat="server" ControlToValidate="txt_UserName" ValidationGroup="gv" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("userName") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_Email" runat="server" CausesValidation="True" Text='<%# Bind("email") %>' TextMode="Email" ValidationGroup="gv" Width="135px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_Email" ControlToValidate="txt_Email" ValidationGroup="gv" ForeColor="Red" runat="server" Text="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rev_Email" runat="server" ControlToValidate="txt_Email" ForeColor="Red" ValidationGroup="gv" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="Enter Correct Email" ></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="FirstName ">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_Fname" runat="server" Text='<%# Bind("fName") %>' CausesValidation="True" ValidationGroup="gv" Width="90px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_Fname" runat="server" ForeColor="Red" ValidationGroup="gv" ControlToValidate="txt_Fname" Text="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("fName") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="LastName">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_Lname" runat="server" Text='<%# Bind("lName") %>' CausesValidation="True" ValidationGroup="gv" Width="90px"></asp:TextBox>
                                <asp:RequiredFieldValidator ForeColor="Red" ID="rfv_Lname" runat="server" ValidationGroup="gv" ControlToValidate="txt_Lname" Text="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("lName") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="HireDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_HierDate" runat="server" Text='<%# Bind("JoinDate") %>' CausesValidation="True" ValidationGroup="gv" Width="110px"></asp:TextBox>
                                <asp:RequiredFieldValidator ForeColor="Red" ID="rfv_HierDate" runat="server" ValidationGroup="gv" ControlToValidate="txt_HierDate" Text="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Convert.ToDateTime(Eval("JoinDate")).ToString("dd/MM/yyyy") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_Phone" runat="server" Text='<%# Bind("phone") %>' Width="90px" TextMode="Phone" ValidationGroup="gv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_Phone" runat="server" ControlToValidate="txt_Phone" ForeColor="Red" ValidationGroup="gv">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Salary">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_Salary" runat="server" Text='<%# Bind("salary") %>' CausesValidation="True" ValidationGroup="gv" Width="90px" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ForeColor="Red" ID="rfv_Salary" runat="server" ValidationGroup="gv" ControlToValidate="txt_Salary" Text="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ForeColor="Red" ID="rv_Salary" runat="server" ControlToValidate="txt_Salary" MaximumValue="20000" MinimumValue="1000" Text="Range Salary 1000 to 20000" ValidationGroup="gv" ></asp:RangeValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("salary") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <div class="portlet box red ">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="icon-reorder"></i>Members Data</div>
                        <div class="tools">
                            <a class="collapse" href="javascript:;"></a><a class="config" data-toggle="modal" href="#portlet-config"></a><a class="reload" href="javascript:;"></a><a class="remove" href="javascript:;"></a>
                        </div>
                    </div>
                    <div class="portlet-body" style="width:100%">
                <asp:GridView ID="gv_Member" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" ForeColor="Black" GridLines="Horizontal" OnRowDeleting="gv_Member_RowDeleting" Width="100%">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:TemplateField HeaderText="UserName">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_UserName" runat="server" Text='<%# Bind("userName") %>' ValidationGroup="gv" Width="120px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_UserName" runat="server" ControlToValidate="txt_UserName" ValidationGroup="gv" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("userName") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_Email" runat="server" CausesValidation="True" Text='<%# Bind("email") %>' TextMode="Email" ValidationGroup="gv" Width="135px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_Email" ControlToValidate="txt_Email" ValidationGroup="gv" ForeColor="Red" runat="server" Text="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rev_Email" runat="server" ControlToValidate="txt_Email" ForeColor="Red" ValidationGroup="gv" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="Enter Correct Email" ></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="FirstName ">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_Fname" runat="server" Text='<%# Bind("fName") %>' CausesValidation="True" ValidationGroup="gv" Width="90px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_Fname" runat="server" ForeColor="Red" ValidationGroup="gv" ControlToValidate="txt_Fname" Text="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("fName") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="LastName">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_Lname" runat="server" Text='<%# Bind("lName") %>' CausesValidation="True" ValidationGroup="gv" Width="90px"></asp:TextBox>
                                <asp:RequiredFieldValidator ForeColor="Red" ID="rfv_Lname" runat="server" ValidationGroup="gv" ControlToValidate="txt_Lname" Text="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("lName") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="HireDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_HierDate" runat="server" Text='<%# Bind("JoinDate") %>' CausesValidation="True" ValidationGroup="gv" Width="110px"></asp:TextBox>
                                <asp:RequiredFieldValidator ForeColor="Red" ID="rfv_HierDate" runat="server" ValidationGroup="gv" ControlToValidate="txt_HierDate" Text="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Convert.ToDateTime(Eval("JoinDate")).ToString("dd/MM/yyyy") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_Phone" runat="server" Text='<%# Bind("phone") %>' Width="90px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                    </div>
                </div>
            </td>
        </tr>
    </table>
<br />


</asp:Content>
