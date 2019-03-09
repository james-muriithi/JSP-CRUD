<%-- 
    Document   : save
    Created on : Nov 17, 2018, 6:30:04 PM
    Author     : JAMES
--%>
<%
    if (!request.getParameter("fname").isEmpty()) {
%>
<jsp:useBean id="saveBean" scope="page" class="Bean.Operations" />
<jsp:setProperty name="saveBean" property="fname"/>
<jsp:setProperty name="saveBean" property="lname"/>
<jsp:setProperty name="saveBean" property="id"/>
<%
        if (saveBean.save() == 1) {
            out.print("Saved Successfully!");
        }else if(saveBean.save() == 2){
            out.print("The Id already exists");
        }else{
            out.print("There was an error");
        }
    }
%>