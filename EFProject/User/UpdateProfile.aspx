<%@ Page Title="" Language="C#" MasterPageFile="~/User/USer.Master" AutoEventWireup="true" CodeBehind="UpdateProfile.aspx.cs" Inherits="EFProject.User.UpdateProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <section class="directory-search-form-slider business">
            <!--Start Slider Carousel-->
            <div id="directory-slider-carousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">

                
                    <!--Start Slide Item-->
                    <div class="item active" style="background: url('assets/img/slider/1504890499.jpg');">
                        <div class="directory-slider-overlay"></div>
                        <div class="slider-content">
                            <h2 class="text-bold animated rollIn">Wellcome to Librery</h2>
                            <h3 class="animated rollIn">All The Books You Would like to Read, </h3>
                        </div>
                    </div>
                    <!--End Slide Item-->

                
                    <!--Start Slide Item-->
                    <div class="item" style="background: url('assets/img/slider/1504890524.jpg');">
                        <div class="directory-slider-overlay"></div>
                        <div class="slider-content">
                            <h2 class="text-bold animated rollIn">Amazing Books</h2>
                            <h3 class="animated rollIn">You Will Be satisfied</h3>
                        </div>
                    </div>
                    <!--End Slide Item-->

                
                </div>
                <a class="left carousel-control" href="#directory-slider-carousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
                <a class="right carousel-control" href="#directory-slider-carousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
            <!--End Slider Carousel-->

           <%-- <!--Start Search Filter-->
            <div class="container">
                <div class="row">
                    <form action="../ErrorPage/error.aspx" method="POST">
                        <div class="col-md-12">
                            <div class="search-filter">
                                <!--Start Search Keyword-->
                                <input type="text" class="form-control keyword" name="book" placeholder="Book Name">
                                <!--End Search Filter-->

                                <!--Start Search Location Options-->
                                <input type="text" class="form-control keyword" name="author" placeholder="Author Name">
                                <!--End Search Location Options-->

                                <!--Start Search Category Options-->
                                <input type="text" class="form-control keyword" name="publisher" placeholder="Publisher Name">
                                <!--End Search Category Options-->

                                <!--Start Search Button-->
                                <div class="search-btn">
                                    <button type="submit">SEARCH</button>
                                </div>
                                <!--End Search Button-->
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!--End Search Filter-->--%>
        </section>
        <!--End Search Directory Section-->

      <%--  <!--Start Featured section-->
        <section class="business-feat">
            <!--Start Featured container-->
            <div class="container">
                <!--Start Section Title-->--%>
              <%--  <div class="section-title">
                    <h2 class="text-center text-bold"><span>Librery</span> Books Listing</h2>
                </div>
                <!--End Section Title-->

                <!--Start Featured Row-->
                <div class="row">

                
                    <!--Start Featured Item Col-->
                    <div class="col-md-4 col-sm-6">
                        <!--Start Featured Item-->
                        <div class="feat-item">
                            <div class="feat-item-img">
                                <img class="img-responsive" src="nopic.png" alt="">
                            </div>
                            <div class="feat-item-cont">
                                <h3 class="text-bold">podda Nodir Majhi</h3>
                                <h4 class="text-bold">Robindronath</h4>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Publisher:</strong> amar Prokashoni</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Year of Publication:</strong> 2015</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Edition:</strong> 1st</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> 100</strong> in Stock</p>
                            </div>
                        </div>
                        <!--End Featured Item-->
                    </div>
                    <!--End Featured Item Col-->

                
                    <!--Start Featured Item Col-->
                    <div class="col-md-4 col-sm-6">
                        <!--Start Featured Item-->
                        <div class="feat-item">
                            <div class="feat-item-img">
                                <img class="img-responsive" src="nopic.png" alt="">
                            </div>
                            <div class="feat-item-cont">
                                <h3 class="text-bold">bisher Bashi</h3>
                                <h4 class="text-bold">Robindronath</h4>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Publisher:</strong> sedin prokashoni</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Year of Publication:</strong> 2001</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Edition:</strong> 3rd</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> 49</strong> in Stock</p>
                            </div>
                        </div>
                        <!--End Featured Item-->
                    </div>
                    <!--End Featured Item Col-->

                
                    <!--Start Featured Item Col-->
                    <div class="col-md-4 col-sm-6">
                        <!--Start Featured Item-->
                        <div class="feat-item">
                            <div class="feat-item-img">
                                <img class="img-responsive" src="nopic.png" alt="">
                            </div>
                            <div class="feat-item-cont">
                                <h3 class="text-bold">dhukkho sukh</h3>
                                <h4 class="text-bold">Robindronath</h4>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Publisher:</strong> surjo shikha</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Year of Publication:</strong> 2005</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Edition:</strong> 15th</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> 49</strong> in Stock</p>
                            </div>
                        </div>
                        <!--End Featured Item-->
                    </div>
                    <!--End Featured Item Col-->

                
                    <!--Start Featured Item Col-->
                    <div class="col-md-4 col-sm-6">
                        <!--Start Featured Item-->
                        <div class="feat-item">
                            <div class="feat-item-img">
                                <img class="img-responsive" src="nopic.png" alt="">
                            </div>
                            <div class="feat-item-cont">
                                <h3 class="text-bold">ratuler rat din</h3>
                                <h4 class="text-bold">Robindronath</h4>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Publisher:</strong> rab krishno </p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Year of Publication:</strong> 1995</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Edition:</strong> 2nd</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> 50</strong> in Stock</p>
                            </div>
                        </div>
                        <!--End Featured Item-->
                    </div>
                    <!--End Featured Item Col-->

                
                    <!--Start Featured Item Col-->
                    <div class="col-md-4 col-sm-6">
                        <!--Start Featured Item-->
                        <div class="feat-item">
                            <div class="feat-item-img">
                                <img class="img-responsive" src="nopic.png" alt="">
                            </div>
                            <div class="feat-item-cont">
                                <h3 class="text-bold">aj robibar</h3>
                                <h4 class="text-bold">humayun ahmed</h4>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Publisher:</strong> BTV</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Year of Publication:</strong> 2001</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Edition:</strong> 1st</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> 1</strong> in Stock</p>
                            </div>
                        </div>
                        <!--End Featured Item-->
                    </div>
                    <!--End Featured Item Col-->

                
                    <!--Start Featured Item Col-->
                    <div class="col-md-4 col-sm-6">
                        <!--Start Featured Item-->
                        <div class="feat-item">
                            <div class="feat-item-img">
                                <img class="img-responsive" src="nopic.png" alt="">
                            </div>
                            <div class="feat-item-cont">
                                <h3 class="text-bold">dukkho sukh</h3>
                                <h4 class="text-bold">humayun ahmed</h4>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Publisher:</strong> NTV</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Year of Publication:</strong> 2015</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> Edition:</strong> 5th</p>
                                <p><i class="fa fa-arrow-circle-right color-main"></i><strong> 49</strong> in Stock</p>
                            </div>
                        </div>
                        <!--End Featured Item-->
                    </div>
                    <!--End Featured Item Col-->

                
                </div>
                <!--End Featured Row-->
            </div>
            <!--End Featured container-->--%>
        </section>
        <!--End Featured section-->


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <br /> <br /> 


<table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#6600FF" Text="Update Your Profile"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Red" Text="UserName:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_UserName" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Red" Text="FirstName:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_Fname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_Fname" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Red" Text="LastName:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_LName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_LName" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Image ID="img_image" runat="server" Height="141px" Width="131px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Red" Text="E-mail:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_Email" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid E-mail</asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Red" Text="Address:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_Address" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Red" Text="Phone:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_Phone" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Red" Text="Image:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_status" runat="server" Font-Size="Medium" ForeColor="#0033CC"></asp:Label>
                </td>
                <td>
            <asp:FileUpload ID="fu_image" runat="server" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_Submit" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#3366FF" OnClick="btn_Submit_Click" Text="Submit" />
                </td>
                <td>&nbsp;</td>
                <td>
            <asp:Label ID="lbl_success" runat="server" Font-Size="Medium" ForeColor="#0033CC"></asp:Label>
                </td>
            </tr>
        </table>



     <br /> &nbsp; <br /> <br /> <br /> 


</asp:Content>
