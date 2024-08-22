<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="java.util.Stack"%>
<%@page import="javaprojat.getset" %>
<body>
<form action="">
<jsp:useBean id="ob" class="javaprojat.dbcode"></jsp:useBean>
<%
 try{
   String na=request.getParameter("name");
   if(na!=null && na.equals("nul")){
	   String nal=request.getParameter("ne");
	   int id=Integer.parseInt(request.getParameter("id"));
         Stack<getset> st=ob.updateviwe(nal,id);
	    for(getset i: st){
%>
<table><tr>
<td><label>ID</label></td><td>
<input type="number" name="n" value="<%=id %>"/>
</td></tr>
<tr>
<td><label>Update Semester</label></td><td>
<input type="number" name="sc" value="<%=i.getSemester()%>"/>
</td></tr>
<tr><td><label>Update SubjetCode</label></td><td>
<input type="text" name="sc" value="<%=i.getSubjetCode()%>"/>
</td></tr>
<tr>
<td><label>Update Grade</label></td><td>
<input type="text" name="n" value="<%=i.getGrade() %>"/>
</td></tr>
<tr>
<td><label>Update Result</label></td><td>
<input type="text" name="n" value="<%=i.getResult() %>"/>
</td></tr>
<tr><td>
<input type="submit" name="s" value="sub"/>
</td></tr>
</table>

<% 
     }
   }
 }catch(Exception e){
	 out.print(e);
 }
%>
</form>
</body>
</html>