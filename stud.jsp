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

<body align='center' >
 <jsp:useBean id="b" class="javaprojat.dbcode"></jsp:useBean>
 <form action="" align='left'>
 <label>Enter name</label>
 <input type="text" name="n" value='<%=request.getParameter("n")%>'/>
 <input type="submit" name="s" value="submi"/>
 </form>	
<%
     try{
     String s=request.getParameter("s");
         if(s!=null && s.equals("submi")){
        	 String n=request.getParameter("n");
        	 Stack<getset> st=b.viwe(n);
   %>
<table align='center' rules='all' border='3' cellpadding='15' width='60%'>
<tr><th>Rr</th><th>Semester</th><th>SubjetCode</th><th>Grade</th><th>Result</th></tr>     	 
 <%       	 
 for(getset i: st){	 
  %>		
   <tr><td><%=i.getRe() %></td><td><%=i.getSemester() %></td><td><%=i.getSubjetCode() %></td><td><%=i.getGrade() %></td><td><%=i.getResult() %></td></tr>
<%
  }
%>
</table>        		 
<%
  	 }   
 }catch(Exception e){
	 out.print(e);
 }
%>
<a href="labe.html">baclie</a>
</body>
</html>