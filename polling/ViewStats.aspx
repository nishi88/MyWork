<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewStats.aspx.cs" Inherits="ViewStats" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
   

    <title>All Template Needs</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/component.css">
    <link rel="stylesheet" href="css/custom-styles.css">
    <link rel="stylesheet" href="css/font-awesome.css">
	
     
	 <link rel="stylesheet" href="css/demo.css">
    <link rel="stylesheet" href="css/font-awesome-ie7.css">

      <script src="js/jquery.mobilemenu.js"></script>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script>
          $(document).ready(function () {
              $('.menu').mobileMenu();
          });
  </script>
 
  </head>

  <body>
      <form id="form1" runat="server">
    <div class="header-wrapper">
      <div class="site-name">
        <h1>MANN Enterprises Ltd</h1>
        <h2>Hello User</h2>
      </div>
    </div>
    <div class="menu">
      <div class="navbar">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <i class="fw-icon-th-list"></i>
            </button>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li><a href="Client.aspx">Home</a></li>
            </ul>
          </div><!--/.navbar-collapse -->
        </div>
      </div>
      <div class="mini-menu">
            <label>
          <select class="selectnav">
            <option value="#" selected="">Create New Poll</option>
            <option value="#">View All Polls</option>
            <option value="#">Terminate Polling</option>
            <option value="#">Upload Result</option>
            <option value="#">Post a poll</option>
            <option value="#">Logout</option>
            <option value="#">Services</option>
          </select>
          </label>
          </div>
    </div>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="banner">
      <div id="carousel-example-generic" class="carousel slide">
  
  <!-- Wrapper for slides -->
        <div class="carousel-inner">
          <div class="item active">
            <img src="img/banner-image.jpg" alt="">
            <div class="carousel-caption">
              <h1>View Statistics</h1>
              <h2></h2>
              
            </div>
          </div>
         

  <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
        <i class="fw-icon-chevron-left"></i>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
        <i class="fw-icon-chevron-right"></i>
      </a>
    </div>
    </div>
          &nbsp;
          <br/>
        <center><h2><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></h2></center>
  <center><asp:Table runat="server" CellPadding="8"  >
      
          
      
      <asp:TableRow>
          <asp:TableCell VerticalAlign="Bottom" HorizontalAlign="Center">
              <asp:Image ID="Image1" runat="server" BackColor="ForestGreen" Height="10" width="20"/>
          </asp:TableCell>
          <asp:TableCell VerticalAlign="Bottom" HorizontalAlign="Center">
              <asp:Image ID="Image2" runat="server" BackColor="Orchid" Height="10" width="20"/>
          </asp:TableCell>
          <asp:TableCell VerticalAlign="Bottom" HorizontalAlign="Center">
              <asp:Image ID="Image3" runat="server" BackColor="SteelBlue" Height="10" width="20"/>
          </asp:TableCell>
          <asp:TableCell VerticalAlign="Bottom" HorizontalAlign="Center">
              <asp:Image ID="Image4" runat="server" BackColor="Yellow" Height="10" width="20"/>
          </asp:TableCell>
      </asp:TableRow>
       <asp:TableRow>
          <asp:TableCell HorizontalAlign="Center"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></asp:TableCell>
          <asp:TableCell HorizontalAlign="Center"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></asp:TableCell>
          <asp:TableCell HorizontalAlign="Center"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></asp:TableCell>
          <asp:TableCell HorizontalAlign="Center"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></asp:TableCell>
      </asp:TableRow>
            <asp:TableRow>
          <asp:TableCell HorizontalAlign="Center"><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></asp:TableCell>
          <asp:TableCell HorizontalAlign="Center"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></asp:TableCell>
          <asp:TableCell HorizontalAlign="Center"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></asp:TableCell>
          <asp:TableCell HorizontalAlign="Center"><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></asp:TableCell>
      </asp:TableRow>
  </asp:Table></center>

      <div class="footer-wrapper">
     
      <div class="copy-rights">
      <div class="container">
        <div class="row">
          
            <div class="col-md-6">
             Copyright(c) website name. Designed by: Mayank Jain </div>
            
          </div>
        </div>
      </div>
      </div>

      


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-1.9.1.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    
    
   
      </form>
           
    
  </body>
</html>

