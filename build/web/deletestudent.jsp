<%-- 
    Document   : deletestudent
    Created on : Nov 17, 2018, 9:58:18 PM
    Author     : JAMES
--%>
<jsp:useBean id="deleteBean" scope="page" class="Bean.Operations" />
<jsp:setProperty name="deleteBean" property="id"/>
<%
    if (deleteBean.delete() == 1) {
        out.print("Deleted Successfully!");
    } else if (deleteBean.delete() == 2) {
        out.print("The Id doesn't exist");
    } else {
        out.print("There was an error");
    }

%>
