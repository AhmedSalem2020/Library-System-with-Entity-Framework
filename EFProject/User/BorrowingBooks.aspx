<%@ Page Title="" Language="C#" MasterPageFile="~/User/USer.Master" AutoEventWireup="true" CodeBehind="BorrowingBooks.aspx.cs" Inherits="EFProject.User.BorrowingBooks" %>

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
                        <h3 class="animated rollIn">You Will Be satisfied </h3>
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

    <!--Start Featured section-->
    <section class="business-feat">
        <!--Start Featured container-->
        <div class="container">
            <!--Start Section Title-->
            <div class="section-title">
                <h2 class="text-center text-bold"><span>Librery</span> Books Listing</h2>
            </div>
            <!--End Section Title-->

            <!--Start Featured Row-->
            <div class="row">


                <%-- <!--Start Featured Item Col-->
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

                
                </div>--%>
                <!--End Featured Row-->
            </div>
            <!--End Featured container-->
    </section>
    <!--End Featured section-->


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <br />
    <br />
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
            </td>
            <td colspan="10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="5">&nbsp;</td>
            <td colspan="10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="5">&nbsp;</td>
            <td colspan="10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="5">&nbsp;</td>
            <td colspan="10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Font-Underline="True" Text="Search By Month" ForeColor="Red" BorderStyle="None" Width="188px"></asp:Label>
                <br />
                <br />

            </td>
            <td colspan="10">
                <asp:DropDownList ID="ddl_month" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="ddl_month_SelectedIndexChanged" Width="76px" CssClass="auto-style1" Font-Bold="True" Font-Size="Medium" ForeColor="#6600FF">
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Font-Strikeout="False" Font-Underline="True" Text="Search By Year&nbsp;" BorderStyle="None" ForeColor="Red" Width="187px"></asp:Label>
                <br />
                <br />
            </td>
            <td colspan="10">
                <asp:DropDownList ID="ddl_year" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="ddl_year_SelectedIndexChanged" Width="80px" CssClass="auto-style2" Font-Bold="True" Font-Size="Medium" ForeColor="#6600FF">
                </asp:DropDownList>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Font-Strikeout="False" Font-Underline="True" Text="Search By Month&amp;Year&nbsp;" BorderStyle="None" ForeColor="Red" Width="280px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td colspan="10">&nbsp;
                        <asp:TextBox ID="txt_both" runat="server" Font-Bold="False" ValidationGroup="see" Font-Size="Medium" TextMode="Month"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="see" ControlToValidate="txt_both" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" CssClass="auto-style3" ValidationGroup="see" Font-Bold="True" Font-Size="Large" OnClick="Button1_Click" Text="Search" />
                <br />
                &nbsp;<br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><%--<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="616px" Font-Bold="True" Font-Size="Large">
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>--%>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                &nbsp;</td>
        </tr>
    </table>

    <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>

            <!--Start Featured Item Col-->
            <div class="col-md-4 col-sm-6">
                <!--Start Featured Item-->
                <div class="feat-item">
                    <div class="feat-item-img">
                        <img class="img-responsive" src="nopic.png" alt="">
                    </div>
                    <div class="feat-item-cont">
                        <%--<h3 class="text-bold"><%# Eval("Fname") %></h3>--%>
                        <h4 class="text-bold"><strong>bookTite  </strong><%# Eval("booktit") %></h4>
                        <p><i class="fa fa-arrow-circle-right color-main"></i><strong>startDate  </strong><%# Eval("statdat") %></p>
                        <p><i class="fa fa-arrow-circle-right color-main"></i><strong>returnDate:</strong> <%# Eval("returnDate") %></p>

                    </div>
                </div>
                <!--End Featured Item-->
            </div>
            <!--End Featured Item Col-->
        </ItemTemplate>
    </asp:ListView>

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />




</asp:Content>
