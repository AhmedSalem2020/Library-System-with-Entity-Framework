<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="ShowProfileBasicAdmin.aspx.cs" Inherits="EFProject.admin.ShowProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 940px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <div class="portlet box blue">
										<div class="portlet-title">
											<div class="caption"><i class="icon-reorder"></i>Person Information</div>
											<div class="tools">
												<a href="javascript:;" class="collapse"></a>
												<a href="#portlet-config" data-toggle="modal" class="config"></a>
												<a href="javascript:;" class="reload"></a>
												<a href="javascript:;" class="remove"></a>
											</div>
										</div>
										<div class="portlet-body form">
											<!-- BEGIN FORM-->
											<div class="form-horizontal form-view">
                                                <div class="span12">
                                                    <h3 class="auto-style6">Welcome - <asp:Label ID="lbl_AdminName" runat="server"></asp:Label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Image ID="img_Image" runat="server" Height="155px" Width="155px" BorderStyle="None" />
                                                    </h3>
                                                </div>
													<div class="span12 ">
														<div class="control-group">
															<label class="control-label" for="firstName">First Name:</label>
															<div class="controls">
                                                            <asp:Label ID="lbl_FirstName" runat="server"></asp:Label>																
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span12 ">
														<div class="control-group">
															<label class="control-label" for="lastName">Last Name:</label>
															<div class="controls">
																<asp:Label ID="lbl_LastName" runat="server"></asp:Label>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span12 ">
														<div class="control-group">
															<label class="control-label" >Email:</label>
															<div class="controls">
																 <asp:Label ID="lbl_Email" runat="server"></asp:Label> 
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span12">
														<div class="control-group">
															<label class="control-label" >Date of Birth:</label>
															<div class="controls">
																 <asp:Label ID="lbl_BirthDate" runat="server"></asp:Label>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span12">
														<div class="control-group">
															<label class="control-label" >Hire Date:</label>
															<div class="controls">
																<asp:Label ID="lbl_HierDate" runat="server"></asp:Label>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span12">
														<div class="control-group">
															<label class="control-label" >Address:</label>
															<div class="controls">                                                
																<asp:Label ID="lbl_Address" runat="server"></asp:Label>
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span12 ">
														<div class="control-group">
															<label class="control-label" >Phone:</label>
															<div class="controls">
																 <asp:Label ID="lbl_Phone" runat="server"></asp:Label>
															</div>
														</div>
													</div>
													<div class="span12">
														<div class="control-group">
															<label class="control-label" >Salary:</label>
															<div class="controls">
																<asp:Label ID="lbl_Salary" runat="server"></asp:Label>
															</div>
														</div>
													</div>
													<!--/span-->
												<div class="form-actions">
											        <asp:Button ID="btn_EditProfile" runat="server" OnClick="btn_EditProfile_Click" Text="Edit Profile" BackColor="Blue" BorderStyle="None" Height="40px"/>
                                                     &nbsp;&nbsp;
                                                    <asp:Button ID="btn_ChangePassword" runat="server" OnClick="btn_ChangePassword_Click" Text="Change Password" BackColor="#CCCCCC" BorderStyle="None" Height="40px" />

											</div>
											<!-- END FORM-->  
										</div>
									</div>
    </div>
   <%-- <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="font-size: large">&nbsp;</td>
            <td class="auto-style2" style="font-size: large">Welcome:</td>
            <td class="auto-style3">
                <asp:Label ID="lbl_AdminName" runat="server"></asp:Label>
            </td>
            <td colspan="2" rowspan="7">
                <asp:Image ID="img_Image" runat="server" Height="155px" Width="155px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-size: large">&nbsp;</td>
            <td class="auto-style2" style="font-size: large">First Name:</td>
            <td class="auto-style3">
                <asp:Label ID="lbl_FirstName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-size: large">&nbsp;</td>
            <td class="auto-style2" style="font-size: large">Last Name:</td>
            <td class="auto-style3">
                <asp:Label ID="lbl_LastName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-size: large">&nbsp;</td>
            <td class="auto-style2" style="font-size: large">Email:</td>
            <td class="auto-style3">
                <asp:Label ID="lbl_Email" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-size: large">&nbsp;</td>
            <td class="auto-style2" style="font-size: large">Birth Date:</td>
            <td class="auto-style3">
                <asp:Label ID="lbl_BirthDate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-size: large">&nbsp;</td>
            <td class="auto-style2" style="font-size: large">Hire Date:</td>
            <td class="auto-style3">
                <asp:Label ID="lbl_HierDate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-size: large">&nbsp;</td>
            <td class="auto-style4" style="font-size: large">Address:</td>
            <td class="auto-style5">
                <asp:Label ID="lbl_Address" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-size: large">&nbsp;</td>
            <td class="auto-style2" style="font-size: large">Phone:</td>
            <td class="auto-style3">
                <asp:Label ID="lbl_Phone" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-size: large">&nbsp;</td>
            <td class="auto-style2" style="font-size: large">Salary:</td>
            <td class="auto-style3">
                <asp:Label ID="lbl_Salary" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:LinkButton ID="lbtn_Updateprofile" runat="server" OnClick="lbtn_Updateprofile_Click" Font-Bold="True" Font-Size="Large">EditProfile</asp:LinkButton>
            </td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:LinkButton ID="lbtn_ChangePassword" runat="server" Font-Bold="True" Font-Size="Large" OnClick="lbtn_ChangePassword_Click">ChangePassword</asp:LinkButton>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>--%>
</asp:Content>
