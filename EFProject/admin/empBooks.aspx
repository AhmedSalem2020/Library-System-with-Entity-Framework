<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="empBooks.aspx.cs" Inherits="EFProject.admin.empBooks" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="../assets/plugins/bootstrap-fileupload/bootstrap-fileupload.js"></script>
    <link rel="stylesheet" type="text/css" href="../assets/plugins/bootstrap-fileupload/bootstrap-fileupload.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <script src="empbooks.js"></script>

    <!-- BEGIN PAGE CONTAINER-->
    <div class="container-fluid">
        <!-- BEGIN PAGE HEADER-->
        <div class="row-fluid">
            <div class="span12">
                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                <h3 class="page-title">Manage Books <small>who is read and brrow</small>
                </h3>
                <ul class="breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="index.html">Home</a>
                        <i class="icon-angle-right"></i>
                    </li>
                    <li>
                        <a href="#">Data Tables</a>
                        <i class="icon-angle-right"></i>
                    </li>
                    <li><a href="#">Books</a></li>
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
                        <div class="caption"><i class="icon-globe"></i>Books Table</div>
                        <div class="tools">
                            <a href="javascript:;" class="collapse"></a>
                            <a href="#portlet-config" data-toggle="modal" class="config"></a>
                            <a href="javascript:;" class="reload"></a>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="clearfix">
                        </div>
                        <table id="sample_1" class="table table-striped table-bordered table-hover ">
                            <thead>
                                <tr>
                                    <th>Title
                                    </th>
                                    <th>Author</th>
                                    <th class="hidden-480">Publisher</th>
                                    <th class="hidden-480">category</th>
                                    <th class="hidden-480">publish Date</th>
                                    <th class="hidden-480"></th>
                                    <th></th>

                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>

                    </div>
                </div>




                <!-- END EXAMPLE TABLE PORTLET-->

                <div id="borrow" class="portlet box blue">
                    <div class="portlet-title">
                        <div class="caption"><i class="icon-globe"></i>Borrow Book</div>
                        <div class="tools">
                            <a href="javascript:;" class="collapse"></a>
                            <a href="javascript:;" class="reload"></a>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="clearfix text-center">
                            <label class="label label-inverse">Borrow </label>

                            <asp:TextBox ID="txt_borrow" runat="server"></asp:TextBox>

                            <label class="label label-inverse">To </label>

                            <asp:DropDownList ID="ddl_users" runat="server"></asp:DropDownList>

                            <input id="btn_AddBrow" type="button" value="Borrow" class="btn blue" />
                        </div>


                    </div>
                </div>


                <div id="read" class="portlet box " style="background-color: forestgreen;">
                    <div class="portlet-title">
                        <div class="caption"><i class="icon-globe"></i>Read Book</div>
                        <div class="tools">
                            <a href="javascript:;" class="collapse"></a>
                            <a href="javascript:;" class="reload"></a>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="clearfix text-center">
                            <label class="label label-inverse">Read </label>

                            <asp:TextBox ID="txt_read" runat="server"></asp:TextBox>

                            <label class="label label-inverse">To </label>

                            <asp:DropDownList ID="ddl_users2" runat="server"></asp:DropDownList>

                            <input id="btn_addRead" type="button" value="Read" class="btn green" />
                        </div>


                    </div>
                </div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                     <ContentTemplate>
                <div id="returnBook"   class="portlet box " style="background-color: indianred;">
                   <a  name="MOVEHERE"></a>
                    <div class="portlet-title">
                        <div class="caption"><i class="icon-globe"></i>Return Book</div>
                        <div class="tools">
                            <a href="javascript:;" class="collapse"></a>
                            <a href="javascript:;" class="reload"></a>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="clearfix text-center">
                            <div class="control-group">
                                
                                <asp:RadioButtonList ID="rbtnl_returnType" runat="server"   AutoPostBack="True" CellPadding="10" CssClass="radio line  text-center" OnSelectedIndexChanged="rbtnl_returnType_SelectedIndexChanged" >
                                    <asp:ListItem Value="0" >Reading</asp:ListItem>
                                    <asp:ListItem Value="1">Borrowing</asp:ListItem>
                                </asp:RadioButtonList>
                               
                            </div>
													<label class="label label-inverse">Book</label>
                            <asp:DropDownList ID="ddl_Returnbooks" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_Returnbooks_SelectedIndexChanged"></asp:DropDownList>


                            <label class="label label-inverse">Member </label>

                            <asp:DropDownList ID="ddl_ReturnUsers" runat="server"></asp:DropDownList>


                            <asp:Button ID="btn_return" runat="server" Text="Return"  BackColor="indianred" ForeColor="White" OnClick="btn_return_Click" />
                            <%--<input id="btn_return" type="button" value="Return" class="btn green"style="background-color: indianred;" />--%>
                        </div>


                    </div>
                </div>
                    </ContentTemplate>
                    
                         </asp:UpdatePanel>


            </div>



        </div>

        <!-- END PAGE CONTENT-->
    </div>
    <!-- END PAGE CONTAINER-->
</asp:Content>
