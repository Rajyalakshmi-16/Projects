<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Adding Bank Details Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
    <script type="text/javascript" src="js/cufon-yui.js"></script>
    <script type="text/javascript" src="js/cufon-quicksand.js"></script>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
    <script type="text/javascript" src="js/coin-slider.min.js"></script>
    <style type="text/css">
        .style1 { font-size: 24px; color: #FF0000; }
        .style3 { color: #333333; }
        .style4 { color: #CC6600; }
        .style7 { color: #006666; }
    </style>
</head>
<body>
<div class="main">
    <div class="header">
        <div class="header_resize">
            <div class="logo">
                <h1 align="center">
                    <a href="index.html" class="style1">
                        Credit card fraud detection using AdaBoost and majority voting
                    </a>
                </h1>
            </div>
            <div class="menu_nav">
                <ul>
                    <li class="active"><a href="index.html"><span>Home Page</span></a></li>
                    <li><a href="AdminLogin.jsp"><span>Bank Admin</span></a></li>
                    <li><a href="EcommerceLogin.jsp"><span>Ecommerce</span></a></li>
                    <li><a href="UserLogin.jsp"><span>User</span></a></li>
                    <li><a href="#"><span>Contact Us</span></a></li>
                </ul>
            </div>
            <div class="clr"></div>
            <div class="slider">
                <div id="coin-slider">
                    <a href="#"><img src="images/slide1.jpg" width="935" height="285" alt="Slide 1" /></a>
                    <a href="#"><img src="images/slide2.jpg" width="935" height="285" alt="Slide 2" /></a>
                    <a href="#"><img src="images/slide3.jpg" width="935" height="285" alt="Slide 3" /></a>
                </div>
                <div class="clr"></div>
            </div>
            <div class="clr"></div>
        </div>
    </div>

    <div class="content">
        <div class="content_resize">
            <div class="mainbar">
                <div class="article">
                    <h2 class="style4">Adding Bank Details..</h2>
                    <div class="clr"></div>
                    <div class="post_content">
                        <form action="Admin_AddBank1.jsp" method="post" enctype="multipart/form-data" id="bankForm">
                            <%
                                try {
                                    String bank = (String) application.getAttribute("adbank");
                            %>
                            <table width="500" border="0" align="center">
                                <tr>
                                    <td><span class="style3">Bank Name</span></td>
                                    <td><input type="text" id="bankName" name="bname" value="<%=bank%>" required /></td>
                                </tr>
                                <tr>
                                    <td><span class="style3">Bank Address</span></td>
                                    <td><textarea name="address" cols="25" rows="2" id="address" required></textarea></td>
                                </tr>
                                <tr>
                                    <td><span class="style3">Bank Location</span></td>
                                    <td><input type="text" id="location" name="loc" required /></td>
                                </tr>
                                <tr>
                                    <td><span class="style3">Bank Pincode</span></td>
                                    <td><input type="text" id="pincode" name="pin" pattern="[0-9]{6}" title="6-digit pincode" required /></td>
                                </tr>
                                <tr>
                                    <td><span class="style3">Bank Contact No</span></td>
                                    <td><input type="text" id="contact" name="cno" pattern="[0-9]{10}" title="10-digit mobile number" required /></td>
                                </tr>
                                <tr>
                                    <td><span class="style3">Bank Email ID</span></td>
                                    <td><input type="email" id="email" name="mail" required /></td>
                                </tr>
                                <tr>
                                    <td><span class="style3">Select Building Image</span></td>
                                    <td><input type="file" id="bankImage" name="image" accept="image/*" required /></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><input type="submit" name="Submit" value="Add Bank" /></td>
                                </tr>
                            </table>
                            <%
                                } catch (Exception e) {
                                    out.print("Error: " + e.getMessage());
                                }
                            %>
                        </form>
                        <p><a href="AdminMain.jsp"><strong>Back</strong></a></p>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>

            <div class="sidebar">
                <div class="searchform">
                    <form id="formsearch" name="formsearch" method="post" action="#">
                        <span>
                            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our site:" type="text" />
                        </span>
                        <input name="button_search" src="images/search.gif" class="button_search" type="image" />
                    </form>
                </div>
                <div class="clr"></div>
                <div class="gadget">
                    <h2 class="star"><span>Sidebar</span> Menu</h2>
                    <div class="clr"></div>
                    <ul class="sb_menu">
                        <li><a href="AdminMain.jsp">Home</a></li>
                        <li><a href="AdminLogin.jsp">Logout</a></li>
                    </ul>
                </div>
            </div>
            <div class="clr"></div>
        </div>
    </div>

    <div class="footer"></div>
</div>
<div align="center"></div>
</body>
</html>
