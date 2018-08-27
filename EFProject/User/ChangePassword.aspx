<%@ Page Title="" Language="C#" MasterPageFile="~/User/USer.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="EFProject.User.ChangePassword" %>
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

          <%--  <!--Start Search Filter-->
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


      <style type="text/css">
          .auto-style1 {
              height: 13px;
          }
      </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <br /> <br /> 
     <br /> <br /> 
     <br />  
     
      

        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red" Text="Old password:"></asp:Label>
                    <br />
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_Oldpass" runat="server" TextMode="Password" ValidationGroup="change"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="change" runat="server" ControlToValidate="txt_Oldpass" ForeColor="#6600FF">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red" Text="New password:"></asp:Label>
                    <br />
                </td>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_NewPass" runat="server" TextMode="Password" ValidationGroup="change"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="change" ControlToValidate="txt_NewPass" ForeColor="#6600FF">*</asp:RequiredFieldValidator>
&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ValidationGroup="change" ControlToCompare="txt_NewPass" ControlToValidate="txt_Confirmpass" ErrorMessage="Not Matched" ForeColor="#6600FF"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red" Text="Confirm New Password:"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_Confirmpass" runat="server" TextMode="Password" ValidationGroup="change"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="change" ControlToValidate="txt_Confirmpass" ErrorMessage="Not Valid" ForeColor="#6600FF"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_Message" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_Submit" runat="server" ValidationGroup="change"  BackColor="#009900" OnClick="btn_login_Click1" Text="Submit"  ForeColor="White" Width="117px" Font-Size="X-Large" />
        </div>

     <br /> <br /> <br /> <br /> 

</asp:Content>
