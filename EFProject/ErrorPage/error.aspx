<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="error.aspx.cs" Inherits="EFProject.ErrorPage.error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Turtle</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="css/style.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="favicon.ico">
</head>
<body>
    <form id="form1" runat="server">
        <div>


            	<div class="background">
		<div class="wrapper">
			
			<div class="description">
				<h1>Oops!</h1>
				<h2>looks like something went completely wrong.</h2>
				<p>Please try another section of our awesome page!</p>
				</div>
			
			<img src="images/turtle.png" class="turtle" alt="">
			<div class="shadow"></div>
			
			<img src="images/wall-power-connection.png" class="wall-p-c" alt="">
			
			<div class="sidebar">
				</div>
					&nbsp;
								
				<div class="links">
					<div class="title">
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" ForeColor="#FFCC00" OnClick="LinkButton1_Click1">Back To Home</asp:LinkButton>
                        <br />
                        <br />
                    </div>
					
				</div>
			</form>
			</div>
			
		</div>
	</div>
        </div>
    </form>
</body>
</html>
