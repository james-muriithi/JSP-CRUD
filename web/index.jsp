<%-- 
    Document   : index
    Created on : Nov 17, 2018, 4:59:10 PM
    Author     : JAMES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP CRUD</title>
        <link href="assets/style.css" rel="stylesheet" type="text/css"/>
        <link href="assets/semantic.min.css" rel="stylesheet">
        <link href="assets/w3.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet">
    </head>
    <body>
        <h1 class="ui header w3-margin w3-text-khaki">JSP CRUD</h1>
        <form class="ui form w3-margin w3-quarter">
            <div class="field required">
                <label>First Name</label>
                <input type="text" class="fname" name="first-name" placeholder="First Name" required>
            </div>
            <div class="field required">
                <label>Last Name</label>
                <input type="text" class="lname" name="last-name" placeholder="Last Name" required>
            </div>
            <div class="field required">
                <label>Id</label>
                <input type="text" name="id" class="id" placeholder="ID" required>
            </div>
            <div class="ui error message"></div>
            <button class="ui button w3-green submit" type="submit">Save</button>
            <button class="ui button primary update">Update</button>
        </form>
        <div class="w3-half tbl">
            <jsp:include page="showusers.jsp"></jsp:include>        
        </div>

        <div class="ui mini modal">
            <div class="content">
                <p>Are you sure you want to delete?</p>
            </div>
            <div class="actions">
                <div class="ui approve red button">YES</div>
                <div class="ui cancel green button">NO</div>
            </div>
        </div>
        <!-- Start footer -->
        <div class="footer">
           <div class="footer-social">
            <a href="https://github.com/james-muriithi/" target="blank"><i class="ui icon github w3-text-blue"></i></a>
            <a class="phone" href="#" data-content="+254746792699" data-variation="inverted">
                <i class="ui icon phone w3-text-green"></i>
            </a>
            <a href="https://www.facebook.com/mureiithi.james" target="blank"><i class="ui icon facebook f w3-text-blue"></i></a>
            <a href="https://wa.me/+254789152672" target="blank"><i class="ui icon whatsapp w3-text-green"></i></a>
          </div>
          <div class="footer-text">
            <p><a href="index.jsp">James Muriithi </a> &copy; 2018</p>
          </div>
        </div>
        <!-- End footer-->
    </body>
</html>
<script type="text/javascript" src="assets/jquery.min.js"></script>
<script type="text/javascript" src="assets/semantic.min.js"></script>
<script type="text/javascript" src="form.js"></script>
<!--<script--> 
