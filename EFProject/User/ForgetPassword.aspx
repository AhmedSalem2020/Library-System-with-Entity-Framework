<%@ Page Title="" Language="C#" MasterPageFile="~/User/USer.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="EFProject.User.ForgetPassword" %>
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

            <!--Start Search Filter-->
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
            <!--End Search Filter-->
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

     <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />

    &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#6600FF" Text="Forget Your Password ?"></asp:Label>
    </p>
               <p>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#6600FF" Text=" If you have forgotten your password,"></asp:Label>
    </p>
               <p>
        &nbsp;&nbsp;&nbsp;
    </p>
     <p>
        &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#6600FF" Text="please enter your account's email address below "></asp:Label>
    </p>
               <p>
                   <span style="color: rgb(37, 37, 37); font-family: &quot;Open sans&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">&nbsp;</span></p>
    <p style="margin-left: 40px">
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Enter your email " Font-Size="X-Large"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_email" runat="server" Width="238px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="Not Valid" ForeColor="#9900CC" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*Not Valid</asp:RegularExpressionValidator>
    </p>
    <p style="margin-left: 40px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
     <p style="margin-left: 40px">
        <asp:Button ID="btn_login" runat="server" BackColor="Red" OnClick="btn_login_Click" Text="Back to Login Page" ForeColor="White" Width="135px" Font-Size="Small" Height="37px" />



     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_send" runat="server" BackColor="Red" OnClick="btn_send_Click" Text="Reset My Password" ForeColor="White" Width="176px" Font-Size="Medium" Height="35px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_confirmation" runat="server"></asp:Label>
    </p>
    <p style="margin-left: 40px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p style="margin-left: 40px">
        &nbsp;<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
     <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />

</asp:Content>
