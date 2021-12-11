<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ATMSLogin.aspx.cs" Inherits="ATMS.ATMSLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ATMS Login</title>
    <link href="CSS/LoginPage.css" rel="stylesheet"  type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />

    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="Script/ATMSLogin.js"></script>
    <script type="text/javascript" src="Script/Common.js"></script>

     <style  type="text/css">
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-image: url('Images/LoginImage.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

   </style>

   <script>
$(document).ready(function(){
	$('.launch-modal').click(function(){
		$('#myModal1').modal({
			backdrop: 'static'
		});
	}); 
});
</script>

</head>
<body>
    <form id="form1" runat="server">
        <div id="loginDiv">
            <div class="imgcontainer"> <img src="Images/SoftstarLogo.png" alt="Avatar" > </div>
            <div class="container" style="width:380px;">
                <div class="form-group">
                    <label for="inputdefault">User Name</label>
                    <input type="text" name="name" id="txtUserName" class="form-control"  style="width:360px;" placeholder="Please Enter User Name" />
                    <br />
                    <label for="inputdefault">Password</label>
                    <input type="text" name="Password" id="txtPassword" class="form-control"  style="width:360px;"  placeholder="Please Enter User Password"/>
                     <div class="lineheight"></div>
                    <button type="button" class="btn btn-primary" id="btnLogin"  style="width:360px;">Login</button>

                     <div class="lineheight"></div>
                     <div class="d-flex justify-content-center links" style="text-align:center;">
			            Don't have an account? <a href="#" class="ml-2" data-toggle="modal" data-target="#myModal" >Sign Up</a>
		              </div>
                </div>
             </div>
        </div>

        <%--Register Page--%>
        <%--<div class="container">
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">
                <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">ATMS Register</h4>
                        </div>
                        <div class="modal-body">
                          <div class="form-inline">
                            <div class="form-group">
                              <label for="inputdefault">Enter User Name:</label>
                              <input type="text" class="form-control" id="UserName" placeholder="Enter User Name" name="userName" style="margin-left:70px;"/>
                            </div>
                          </div>
                          <div class="lineheight"></div>
                            <div class="form-inline">
                            <div class="form-group">
                              <label for="inputdefault">Password:</label>
                              <input type="password" class="form-control" id="Password" placeholder="Enter Password" name="password" style="margin-left:115px;"/>
                            </div>
                          </div>
                          <div class="lineheight"></div>
                          <div class="form-inline">
                            <div class="form-group">
                              <label for="inputdefault">Confirm Password:</label>
                              <input type="password" class="form-control" id="ConfirmPassword" placeholder="Enter Confirm Password" name="password" style="margin-left:58px;"/>
                            </div>
                          </div>
                          <div class="lineheight"></div>
                          <div class="form-inline">
                            <div class="form-group">
                              <label for="inputdefault">Email:</label>
                              <input type="text" class="form-control" id="Email" placeholder="Enter Email" name="email" style="margin-left:144px;"/>
                            </div>
                          </div>
                          <div class="lineheight"></div>
                          <div class="form-inline">
                            <div class="form-group">
                              <label for="inputdefault">Mobile No:</label>
                              <input type="text" class="form-control" id="MobileNo" placeholder="Enter Mobile No" name="mobileNo" style="margin-left:115px;"/>
                            </div>
                          </div>
                          <div class="lineheight"></div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-success" id="btnSubmit">Submit</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                   </div>
                </div>
            </div>
        </div>--%>

        
    <input type="button" class="btn btn-lg btn-primary launch-modal" value="Launch Demo Modal"/>
    
    <!-- Modal HTML -->
    <div id="myModal1" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">ATMS Register</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-inline">
                            <div class="form-group">
                              <label for="inputdefault">Enter User Name:</label>
                              <input type="text" class="form-control" id="UserName" placeholder="Enter User Name" name="userName" style="margin-left:70px;"/>
                            </div>
                          </div>
                          <div class="lineheight"></div>
                            <div class="form-inline">
                            <div class="form-group">
                              <label for="inputdefault">Password:</label>
                              <input type="password" class="form-control" id="Password" placeholder="Enter Password" name="password" style="margin-left:115px;"/>
                            </div>
                          </div>
                          <div class="lineheight"></div>
                          <div class="form-inline">
                            <div class="form-group">
                              <label for="inputdefault">Confirm Password:</label>
                              <input type="password" class="form-control" id="ConfirmPassword" placeholder="Enter Confirm Password" name="password" style="margin-left:58px;"/>
                            </div>
                          </div>
                          <div class="lineheight"></div>
                          <div class="form-inline">
                            <div class="form-group">
                              <label for="inputdefault">Email:</label>
                              <input type="text" class="form-control" id="Email" placeholder="Enter Email" name="email" style="margin-left:144px;"/>
                            </div>
                          </div>
                          <div class="lineheight"></div>
                          <div class="form-inline">
                            <div class="form-group">
                              <label for="inputdefault">Mobile No:</label>
                              <input type="text" class="form-control" id="MobileNo" placeholder="Enter Mobile No" name="mobileNo" style="margin-left:115px;"/>
                            </div>
                          </div>
                          <div class="lineheight"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
 
    </form>
</body>
</html>


