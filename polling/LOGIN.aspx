<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LOGIN.aspx.cs" Inherits="LOGIN" %>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>login form</title>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      body {
  font-family: "Open Sans", sans-serif;
  height: 100vh;
  background-image:url("images/keyboard.jpg");
  background-size:cover;
 
  
}

@keyframes spinner {
  0% {
    transform: rotateZ(0deg);
  }
  100% {
    transform: rotateZ(359deg);
  }
}
* {
  box-sizing: border-box;
}

.wrapper {
  display: flex;
  align-items: right;
  flex-direction: column;
  justify-content: center;
  width: 100%;
  min-height: 70%;
  padding-top: 20px;
  padding-left:  750px;
  
}

.login {
  border-radius: 2px 2px 5px 5px;
  padding: 10px 20px 20px 20px;
  width: 90%;
  max-width: 320px;
  background: #ffffff;
  position: relative;
  padding-bottom: 80px;
  box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.3);
}
.login.loading button {
  max-height: 100%;
  padding-top: 50px;
}
.login.loading button .spinner {
  opacity: 1;
  top: 40%;
}
.login.ok button {
  background-color: #8bc34a;
}
.login.ok button .spinner {
  border-radius: 0;
  border-top-color: transparent;
  border-right-color: transparent;
  height: 20px;
  animation: none;
  transform: rotateZ(-45deg);
}
.login input {
  display: block;
  padding: 15px 10px;
  margin-bottom: 10px;
  width: 100%;
  border: 1px solid #ddd;
  transition: border-width 0.2s ease;
  border-radius: 2px;
  color: #ccc;
}
.login input + i.fa {
  color: #fff;
  font-size: 1em;
  position: absolute;
  margin-top: -47px;
  opacity: 0;
  left: 0;
  transition: all 0.1s ease-in;
}
.login input:focus {
  outline: none;
  color: #444;
  border-color: #2196F3;
  border-left-width: 35px;
}
.login input:focus + i.fa {
  opacity: 1;
  left: 30px;
  transition: all 0.25s ease-out;
}
.login a {
  font-size: 0.8em;
  color: #2196F3;
  text-decoration: none;
}
.login .title {
  color: #444;
  font-size: 1.2em;
  font-weight: bold;
  margin: 10px 0 30px 0;
  border-bottom: 1px solid #eee;
  padding-bottom: 20px;
}
.login button {
  width: 100%;
  height: 100%;
  padding: 10px 10px;
  background: #2196F3;
  color: #fff;
  display: block;
  border: none;
  margin-top: 20px;
  position: absolute;
  left: 0;
  bottom: 0;
  max-height: 60px;
  border: 0px solid rgba(0, 0, 0, 0.1);
  border-radius: 0 0 2px 2px;
  transform: rotateZ(0deg);
  transition: all 0.1s ease-out;
  border-bottom-width: 7px;
}
.login button .spinner {
  display: block;
  width: 40px;
  height: 40px;
  position: absolute;
  border: 4px solid #ffffff;
  border-top-color: rgba(255, 255, 255, 0.3);
  border-radius: 100%;
  left: 50%;
  top: 0;
  opacity: 0;
  margin-left: -20px;
  margin-top: -20px;
  animation: spinner 0.6s infinite linear;
  transition: top 0.3s 0.3s ease, opacity 0.3s 0.3s ease, border-radius 0.3s ease;
  box-shadow: 0px 1px 0px rgba(0, 0, 0, 0.2);
}
.login:not(.loading) button:hover {
  box-shadow: 0px 1px 3px #2196F3;
}
.login:not(.loading) button:focus {
  border-bottom-width: 4px;
}

footer {
  display: block;
  padding-top: 50px;
  text-align: center;
  color: #ddd;
  font-weight: normal;
  text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.2);
  font-size: 0.8em;
}
footer a, footer a:link {
  color: #fff;
  text-decoration: none;
}

html {
  min-height: 100%;
}

body {
  height: 100%;
}

.slideshow {
  list-style: none;
  z-index: 1;
}
.slideshow li span {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 10px;
  left: 10px;
  right: 10px;
  color: transparent;
  background-size: cover;
  background-position: 50% 50%;
  background-repeat: none;
  opacity: 0;
  z-index: 0;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  -webkit-animation: imageAnimation 24s linear infinite 0s;
  -moz-animation: imageAnimation 24s linear infinite 0s;
  animation: imageAnimation 24s linear infinite 0s;
}
.slideshow li h3 {
  position: absolute;
  text-align: center;
  z-index: 2;
  bottom: 150px;
  left: 0;
  right: 0;
  opacity: 0;
  font-size: 4.0625em;
  font-family: 'Josefin Sans', sans-serif;
  text-transform: uppercase;
  color: #fff;
  -webkit-animation: titleAnimation 24s linear 1 0s;
  -moz-animation: titleAnimation 24s linear 1 0s;
  animation: titleAnimation 24s linear 1 0s;
}
@media only screen and (min-width: 768px) {
  .slideshow li h3 {
    bottom: 30px;
    font-size: 8.125em;
  }
}
@media only screen and (min-width: 1024px) {
  .slideshow li h3 {
    font-size: 10.9375em;
  }
}

.slideshow li:nth-child(1) span {
  background-image: url(p2.jpg);
}

.slideshow li:nth-child(2) span {
  background-image: url(c3.jpg);
  -webkit-animation-delay: 6s;
  -moz-animation-delay: 6s;
  animation-delay: 6s;
}

.slideshow li:nth-child(3) span {
  background-image: url(p3.jpg);
  -webkit-animation-delay: 12s;
  -moz-animation-delay: 12s;
  animation-delay: 12s;
}

.slideshow li:nth-child(4) span {
  background-image: url(p4.jpg);
  -webkit-animation-delay: 18s;
  -moz-animation-delay: 18s;
  animation-delay: 18s;
}

@-webkit-keyframes imageAnimation {
  0% {
    opacity: 0;
    -webkit-animation-timing-function: ease-in;
  }
  12.5% {
    opacity: 1;
    -webkit-animation-timing-function: ease-out;
  }
  25% {
    opacity: 1;
  }
  37.5% {
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@-moz-keyframes imageAnimation {
  0% {
    opacity: 0;
    -moz-animation-timing-function: ease-in;
  }
  12.5% {
    opacity: 1;
    -moz-animation-timing-function: ease-out;
  }
  25% {
    opacity: 1;
  }
  37.5% {
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@keyframes imageAnimation {
  0% {
    opacity: 0;
    -webkit-animation-timing-function: ease-in;
    -moz-animation-timing-function: ease-in;
    animation-timing-function: ease-in;
  }
  12.5% {
    opacity: 1;
    -webkit-animation-timing-function: ease-out;
    -moz-animation-timing-function: ease-out;
    animation-timing-function: ease-out;
  }
  25% {
    opacity: 1;
  }
  37.5% {
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@-webkit-keyframes titleAnimation {
  0% {
    opacity: 0;
  }
  12.5% {
    opacity: 1;
  }
  25% {
    opacity: 1;
  }
  37.5% {
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@-moz-keyframes titleAnimation {
  0% {
    opacity: 0;
  }
  12.5% {
    opacity: 1;
  }
  25% {
    opacity: 1;
  }
  37.5% {
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@keyframes titleAnimation {
  0% {
    opacity: 0;
  }
  12.5% {
    opacity: 1;
  }
  25% {
    opacity: 1;
  }
  37.5% {
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
.no-cssanimations .slideshow li span {
  opacity: 1;
}
  

    </style>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

<body>
     <ul class='slideshow'>
  <li>
   
    <span>Summer</span>
  </li>
  <li>
   
    <span>Fall</span>
  </li>
  <li>
   
    <span>Winter</span>
  </li>
  <li>
   
    <span>Spring</span>
  </li>
</ul>
  
  </li>
</ul>
   
    
       
  <div class="wrapper">
      <form id="form1" runat="server">
          <table class="login">
              <tr><td>Login</td></tr>
              <tr>
                  <td>
                          <asp:TextBox ID="TextBox1" placeholder="Username" runat="server"></asp:TextBox>
                  </td>
            </tr>
            <tr>
              <td>
                           <asp:TextBox ID="TextBox2" placeholder="Password" runat="server"></asp:TextBox>
              </td>
          </tr>
   
    <tr>
          <td>
              &nbsp;<asp:Button ID="Button3" runat="server" Text="Login" OnClick="Button3_Click" />
          </td>
      </tr>
      <tr>
          
          <td>
              &nbsp;<asp:Button ID="Button2" runat="server" Text="Signup" OnClick="Button2_Click" />
          </td>
      </tr>
  
          </table>
      </form>
  
 
</div>
    
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

    
</body>
</html>
