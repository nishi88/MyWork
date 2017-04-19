﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewPoll.aspx.cs" Inherits="ViewPoll" %>




<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
   

    <title>View Poll</title>

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
        <h1>XYZ Enterprises Ltd</h1>
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
              <h1>MANN Enterprises Ltd.</h1>
              <h2>Each Vote is important to us!!</h2>
              
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
    <div class="container">
      <div class="featured-block">
          </h1>
          &nbsp;
                  
        </div> 
        </div>
        <div class="container">
      <div class="footer-wrapper">
        <div class="site-content">
      <div class="container">
        <div class="row">
        
          <div class="block col-md-2 col-sm-6">
          </div>
          <div class="block col-md-3">
            <h1><asp:Label ID="Label1" runat="server" Text="ALL POLLS !!"></asp:Label>
              </h1>
         <asp:Table ID="Table1" ForeColor="Black" runat="server" Width="700"  HorizontalAlign="left" VerticalAlign="middle" BackColor="#c0c0c0" CellPadding="5" CellSpacing="7">
            <asp:TableRow ForeColor="GhostWhite" >
                <asp:TableCell >Question</asp:TableCell>
                <asp:TableCell>Answer</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            <div class="input-group">
                   <span class="input-group-btn">
                </span>
                
            </div> 
          </div>
   
        </div>
        </div>
        
      </div>
      <div class="copy-rights">
      <div class="container">
        
          
           
              
            
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
