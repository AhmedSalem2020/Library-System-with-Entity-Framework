<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="UpdateProfileBasicAdmin.aspx.cs" Inherits="EFProject.admin.UpdateProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    	<div class="portlet box blue">
										<div class="portlet-title">
											<div class="caption"><i class="icon-reorder"></i>Update Profile</div>
											<div class="tools">
												<a href="javascript:;" class="collapse"></a>
												<a href="#portlet-config" data-toggle="modal" class="config"></a>
												<a href="javascript:;" class="reload"></a>
												<a href="javascript:;" class="remove"></a>
											</div>
										</div>
										<div class="portlet-body form">
											<!-- BEGIN FORM-->
											<form action="#" class="form-horizontal form-row-seperated">
                                                  <div>
                                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Image ID="img_Image" runat="server" Height="170px" Width="170px" BorderStyle="None" />
                                                    </div>
                                                <br />
                                                <div class="control-group span12">
													<label class="control-label">User Name:</label>
                                                        <asp:TextBox ID="txt_UserName" runat="server" Height="31px" Width="550px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfv_UserName" runat="server" ControlToValidate="txt_UserName" ForeColor="Red" ValidationGroup="rfv">*</asp:RequiredFieldValidator>
                                                        <asp:Label ID="lbl_ValidUserName" runat="server"></asp:Label>
												</div>
                                                <div class="control-group span12">
                                                    <label class="control-label">Email:</label>
                                                    <asp:TextBox ID="txt_Email" runat="server" TextMode="Email" Height="30px" Width="550px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv_Email" runat="server" ControlToValidate="txt_Email" ForeColor="Red" ValidationGroup="rfv">*</asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="rev_mail" runat="server" ControlToValidate="txt_Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="rfv">Enter Correct Email</asp:RegularExpressionValidator>
                                                    <asp:Label ID="lbl_ValidEmail" runat="server"></asp:Label>
                                                </div>
												<div class="control-group span12">
													<label class="control-label">First Name:</label>
														<asp:TextBox ID="txt_Fname" runat="server" Height="30px" Width="550px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfv_Fname" runat="server" ControlToValidate="txt_Fname" ErrorMessage="Enter Your FName" ForeColor="Red" ValidationGroup="rfv">*</asp:RequiredFieldValidator>
                                                </div>
												<div class="control-group span12">
													<label class="control-label">Last Name:</label>
														 <asp:TextBox ID="txt_Lname" runat="server" Height="30px" Width="550px" ></asp:TextBox>
                                                         <asp:RequiredFieldValidator ID="rfv_Lname" runat="server" ControlToValidate="txt_Lname" ErrorMessage="Enter Your LName" ForeColor="Red" ValidationGroup="rfv">*</asp:RequiredFieldValidator>
												</div>
												<div class="control-group span12">
													<label class="control-label">Address:</label>
											    	<asp:TextBox ID="txt_Address" runat="server" Height="30px" Width="550px" ></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv_Address" runat="server" ControlToValidate="txt_Address" ErrorMessage="Enter Your Address" ForeColor="Red" ValidationGroup="rfv">*</asp:RequiredFieldValidator>
                                                </div>
												<div class="control-group span12">
													<label class="control-label" >Phone:</label>
													<asp:TextBox ID="txt_Phone" runat="server" Height="30px" Width="550px" TextMode="Phone"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv_Phone" runat="server" ControlToValidate="txt_Phone" ErrorMessage="Enter Your Phone" ForeColor="Red" ValidationGroup="rfv">*</asp:RequiredFieldValidator>
                                                    <asp:Label ID="lbl_ValidPhone" runat="server"></asp:Label>
												</div>
												<div class="control-group span12">
													<label class="control-label" >Image:</label>
													<asp:FileUpload ID="fu_Image" runat="server" Height="30px" Width="273px"/>
                                                    <asp:RequiredFieldValidator ID="rfv_Image" runat="server" ControlToValidate="fu_Image" ErrorMessage="Enter Your Image" ForeColor="Red" ValidationGroup="rfv">*</asp:RequiredFieldValidator>
                                                </div>
												<div class="form-actions">
                                                    <asp:Button ID="btn_Save" runat="server" Text="Save Changes" OnClick="btn_Save_Click" BackColor="Blue" BorderStyle="None" Height="40px" Width="100px" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" BackColor="#CCCCCC" BorderStyle="None" Height="40px" OnClick="btn_Cancel_Click" Width="100px"  />
                                                    <br />
                                                    <asp:Label ID="lbl_Status" runat="server"></asp:Label>
													
												</div>
											</form>
											<!-- END FORM-->  
										</div>
									</div>

    <%--<table class="auto-style1">
        <tr>
            <td class="auto-style16" style="font-size: large">&nbsp;</td>
            <td class="auto-style16" style="font-size: large">UserName:</td>
            <td class="auto-style17">
                <asp:TextBox ID="txt_UserName" runat="server" Height="40px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_UserName" runat="server" ControlToValidate="txt_UserName" ForeColor="Red" ValidationGroup="rfv">*</asp:RequiredFieldValidator>
                <asp:Label ID="lbl_ValidUserName" runat="server"></asp:Label>
            </td>
            <td colspan="2" rowspan="5" class="auto-style8">
                <asp:Image ID="img_Image" runat="server" Height="180px" Width="180px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16" style="font-size: large">&nbsp;</td>
            <td class="auto-style16" style="font-size: large">Email:</td>
            <td class="auto-style17">
                <asp:TextBox ID="txt_Email" runat="server" Height="40px" Width="250px" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_Email" runat="server" ControlToValidate="txt_Email" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rev_mail" runat="server" ControlToValidate="txt_Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="rfv">Enter Correct Email</asp:RegularExpressionValidator>
                <asp:Label ID="lbl_ValidEmail" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" style="font-size: large">&nbsp;</td>
            <td class="auto-style16" style="font-size: large">FName:</td>
            <td class="auto-style17">
                <asp:TextBox ID="txt_Fname" runat="server" Height="40px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_Fname" runat="server" ControlToValidate="txt_Fname" ErrorMessage="Enter Your FName" ForeColor="Red" ValidationGroup="rfv">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" style="font-size: large">&nbsp;</td>
            <td class="auto-style16" style="font-size: large">LName:</td>
            <td class="auto-style17">
                <asp:TextBox ID="txt_Lname" runat="server" Height="40px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_Lname" runat="server" ControlToValidate="txt_Lname" ErrorMessage="Enter Your LName" ForeColor="Red" ValidationGroup="rfv">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" style="font-size: large">&nbsp;</td>
            <td class="auto-style16" style="font-size: large">Address:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_Address" runat="server" Height="40px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_Address" runat="server" ControlToValidate="txt_Address" ErrorMessage="Enter Your Address" ForeColor="Red" ValidationGroup="rfv">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="font-size: large">&nbsp;</td>
            <td class="auto-style6" style="font-size: large">Phone:</td>
            <td class="auto-style7">
                <asp:TextBox ID="txt_Phone" runat="server" Height="40px" Width="250px" TextMode="Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_Phone" runat="server" ControlToValidate="txt_Phone" ErrorMessage="Enter Your Phone" ForeColor="Red" ValidationGroup="rfv">*</asp:RequiredFieldValidator>
                <asp:Label ID="lbl_ValidPhone" runat="server"></asp:Label>
            </td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" style="font-size: large">&nbsp;</td>
            <td class="auto-style10" style="font-size: large">Image:</td>
            <td class="auto-style11">
                <asp:FileUpload ID="fu_Image" runat="server" Height="40px" Width="250px" />
                <asp:RequiredFieldValidator ID="rfv_Image" runat="server" ControlToValidate="fu_Image" ErrorMessage="Enter Your Image" ForeColor="Red" ValidationGroup="rfv">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="lbtn_Profile" runat="server" Font-Bold="True" Font-Size="Large" OnClick="lbtn_Profile_Click">Profile</asp:LinkButton>
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">
                <asp:Button ID="btn_Save" runat="server" Height="45px" Text="Save" Width="90px" OnClick="btn_Save_Click" />
                <asp:Label ID="lbl_Status" runat="server"></asp:Label>
            </td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
    </table>--%>
</asp:Content>
