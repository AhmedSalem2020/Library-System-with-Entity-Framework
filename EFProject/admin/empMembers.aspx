<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="empMembers.aspx.cs" Inherits="EFProject.admin.empMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="../assets/plugins/bootstrap-fileupload/bootstrap-fileupload.js"></script>
    <link rel="stylesheet" type="text/css" href="../assets/plugins/bootstrap-fileupload/bootstrap-fileupload.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   

    <script src="empmembers.js"></script>

    <!-- BEGIN PAGE CONTAINER-->
    <div class="container-fluid">
        <!-- BEGIN PAGE HEADER-->
        <div class="row-fluid">
            <div class="span12">
                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                <h3 class="page-title">’Manage Members <small>add ,block or delete Member</small>
                </h3>
                <ul class="breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="ShowProfileBasicAdmin.aspx">Home</a>
                        <i class="icon-angle-right"></i>
                    </li>
                   
                    <li><a href="#">Members</a></li>
                </ul>
                <!-- END PAGE TITLE & BREADCRUMB-->
            </div>
        </div>

        <!-- END PAGE HEADER-->
        <!-- BEGIN PAGE CONTENT-->
        <div class="row-fluid">
            <div class="span12">
                <!-- BEGIN EXAMPLE TABLE PORTLET-->
                <div class="portlet box light-grey">
                    <div class="portlet-title">
                        <div class="caption"><i class="icon-globe"></i>Managed Table</div>
                        <div class="tools">
                            <a href="javascript:;" class="collapse"></a>
                            <a href="#portlet-config" data-toggle="modal" class="config"></a>
                            <a href="javascript:;" class="reload"></a>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="clearfix">
                            <div class="btn-group">
                                <a id="sample_editable_1_new" href="#addnew" class="btn blue">Add New <i class="icon-plus"></i>
                                </a>
                            </div>

                        </div>
                        <table id="sample_1" class="table table-striped table-bordered table-hover " >
                            <thead>
                                <tr>
                                    <th>
                                        <%-- <input type="checkbox" class="group-checkable" data-set="#sample_1 .checkboxes" />--%>
                                        Full Name
                                    </th>
                                    <th>Username</th>
                                    <th class="hidden-480">Email</th>
                                    <th class="hidden-480">Birth</th>
                                    <th class="hidden-480">Joined</th>
                                    <th class="hidden-480">image</th>
                                    <th>Status
                                    </th>
                                    <th>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                        <div id="addnew">
                            <form id="form1">
                            <table class="table table-striped table-bordered table-hover">

                                <tbody>
                                    <tr class="odd gradeX">
                                        <td>
                                            <input type="text" class="span12 "required id="fName" name="fName" placeholder="firstName" />
                                            <input type="text" class="span12 "required id="lName" placeholder="LastName" /></td>
                                        <td>
                                            <input type="text" class="span12 "required id="userName"  placeholder="userName" /></td>
                                        <td class="hidden-480  controls">
                                            <input type="email" class="span12 validError" required id="email" placeholder="email" />

                                        </td>
                                        <td class="hidden-480">BD
                                            <input type="date" class="span10 " min="1/1/2000" id="bdate" value="" />

                                        </td>
                                        <td class="center hidden-480">
                                            <div class="control-group span12">
                                                <label class="control-label">Image Upload</label>
                                                <div class="controls span12">
                                                    <div class="fileupload fileupload-new" data-provides="fileupload">
                                                        <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                                            <img id="profileImg" src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" />
                                                        </div>
                                                        <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                                                        <div>
                                                            <span class="btn btn-file"><span class="fileupload-new">Select image</span>
                                                                <span class="fileupload-exists">Change</span>
                                                                <input type="file" accept="image/x-png,image/gif,image/jpeg" class="default" /></span>
                                                            <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Remove</a>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            
                                            <input type="button" id="addbtn"  class="span12 btn blue" style=" margin-top: 100px; " value="Add" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                                </div>
                    </div>
                </div>
                <!-- END EXAMPLE TABLE PORTLET-->
            </div>
        </div>

        <!-- END PAGE CONTENT-->
    </div>
    <!-- END PAGE CONTAINER-->
</asp:Content>
