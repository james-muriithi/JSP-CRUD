<%-- 
    Document   : updatestudent
    Created on : Nov 17, 2018, 10:52:32 PM
    Author     : JAMES
--%>

<%
    if (!request.getParameter("fname").isEmpty()) {
%>
<jsp:useBean id="updateBean" scope="page" class="Bean.Operations" />
<jsp:setProperty name="updateBean" property="fname"/>
<jsp:setProperty name="updateBean" property="lname"/>
<jsp:setProperty name="updateBean" property="id"/>
<%
        if (updateBean.update()== 1) {
            out.print("Updated Successfully!");
        }else if(updateBean.update()== 2){
            out.print("The Id does not exists");
        }else{
            out.print("There was an error");
        }
    }
%>