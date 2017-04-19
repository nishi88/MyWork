<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CastPoll.aspx.cs" Inherits="CastPoll" %>




<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
   

    <title>Post your poll</title>

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
              <li><a href="LOGIN.aspx">Logout</a></li>
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
              <h1>Cast your poll here</h1>
              <h2>Each poll is important to us</h2>
              
            </div>
          </div>
          <div class="item">
            <img src="img/banner-image.jpg" alt="">
            <div class="carousel-caption">
              
              <a href="#" class="btn"></a>
            </div>
          </div>
          <div class="item">
            <img src="img/banner-image.jpg" alt="">
            <div class="carousel-caption">
              
            </div>
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
            <h1><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              </h1>
                      
                     <asp:RadioButton ID="RadioButton1" GroupName="answerPolled" runat="server"></asp:RadioButton>
                     <br />
                     <asp:RadioButton ID="RadioButton2" GroupName="answerPolled" runat="server"></asp:RadioButton>
                     <br />
                     <asp:RadioButton ID="RadioButton3" GroupName="answerPolled" runat="server"></asp:RadioButton>
                     <br />
                     <asp:RadioButton ID="RadioButton4" GroupName="answerPolled" runat="server"></asp:RadioButton>
                     <br />
            <div class="input-group">
                &nbsp;&nbsp;<span class="input-group-btn">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:Button ID="Button1" runat="server" Text="Cast Poll" OnClick="Button1_Click" Width="103px" />
            </div> 
          </div>
   
        </div>
        </div>
        
      </div>
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

