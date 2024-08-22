<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="java.util.Stack" %>
<%@page import="javaprojat.getset" %>

<body align='center'>
<jsp:useBean id="ob" class="javaprojat.dbcode"></jsp:useBean>

<%
        String nal=request.getParameter("su"); 
        if(nal!=null && nal.equals("submi")){
           String nl=request.getParameter("n");
           Stack<getset> st=ob.viwe(nl);
 %>
 <table border='3' align='center' rules='all' cellpading='20' width='60%'>
 <tr><th>Rr</th><th>Semester</th><th>SubjetCode</th><th>Grade</th><th>Result</th><th colspan='2'>operation</th></tr>
 <%
      for(getset i: st){
 %>
<tr><td><%=i.getRe() %></td><td><%=i.getSemester()%></td>
    <td><%=i.getSubjetCode() %></td><td><%=i.getGrade()%></td><td><%=i.getResult() %></td>
    <td><a href='edit.jsp?name=nul&ne=<%=nl %>&id=<%=i.getRe()%>'>View</a></td>
    <td><a href='admin.jsp?name=del&ne=<%=nl %>&id=<%=i.getRe()%>'>Removes</a></td>
</tr>
<%
    }
        }
 %> 
</table>
<%
   String nlw=request.getParameter("name"); 
  if(nlw!=null && nlw.equals("del")){
   String n=request.getParameter("ne");
   int id=Integer.parseInt(request.getParameter("id"));
        int rel=ob.delest(n, id);
 	   if(rel>0){
 	   	  response.sendRedirect("admin.jsp");	
 	   	  }else{
 	   	  out.print("not Register");
	   	    }
   }
  try{
    String tb=request.getParameter("sui");
    if(tb!=null && tb.equals("subm")){
    	String ct=request.getParameter("ct");
    	int r=ob.creattable(ct);
    	if(r==0){
    		out.print("The Create Table");
    	}else{
    		out.print("Not Create Table");
    		out.print("  "+r);
    	}
    }   

}catch(Exception e){
	  out.print(e);
}
 %>
</body>
</html>


