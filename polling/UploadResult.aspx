<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadResult.aspx.cs" Inherits="UploadResult" %>




<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
   

    <title>Upload Result</title>

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
    <div class="header-wrapper">
      <div class="site-name">
        <h1>XYZ Enterprises Ltd</h1>
        <h2>Admin Panel</h2>
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
              <li><a href="AddQusetion.aspx">Create New Poll</a></li>
              <li><a href="Admin.aspx">Home</a></li>
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
              <h1>MANN Enterprises Ltd.</h1>
              <h2>Keep Transperancy in uploading results</h2>
              
            </div>
          </div>
          

    </div>
    </div>
    <div class="container">
      <div class="featured-block">
        <h1>Our Admins</h1>
          &nbsp;
        <div class="row">
          <div class="col-md-3">
            <div class="block">
            <div class="thumbnail">
              <img src="images/Mayank.jpg" alt="" class="img-responsive">
              <div class="caption">
                <h1>Mayank Jain</h1>
                
                
              </div>
              </div>
            </div>
            </div>
            <div class="col-md-3">
              <div class="block">
                <div class="thumbnail">
                    <img src="images/ankita.jpg" alt="" class="img-responsive">
                    <div class="caption">
                      <h1>Ankita Jain</h1>
                    
                      <a class="btn" href="#">more</a>
                    </div>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="block">
                <div class="thumbnail">
                  <img src="images/nishi.jpg" alt="" class="img-responsive">
                  <div class="caption">
                    <h1>Nishi Malviya</h1>
                    
                    <a class="btn" href="#">more</a>
                  </div>
                  </div>
              </div>
            </div>
            <div class="col-md-3">
            <div class="block">
            <div class="thumbnail">
              <img src="img/img4.jpg" alt="" class="img-responsive">
              <div class="caption">
                <h1>Nitish Kumar Diwedi</h1>
                
                <a class="btn" href="#">more</a>
              </div>
              </div>
            </div>
            </div>
            
          </div>
          
        </div> 
        <div class="ruler"></div>  
        </div>
        <div class="container">
          <div class="featured-item">
            <div class="col-md-6">
              <div class="block">
                <div class="block-title">
                    <h1>upload Result section</h1>
                    <h2>Select poll whose result is to be declared...</h2>
                </div>
                  <div class="panel-group" id="accordion">
                   


                    

                      <div id="magicSection" runat="server">

                  
                </div>






                </div>
              </div>
            </div>
          </div>
          <div class="ruler"></div>
        </div>
       
        
      


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-1.9.1.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    
    
  </body>
</html>

