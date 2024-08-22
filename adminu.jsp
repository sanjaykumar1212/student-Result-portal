<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="">
<label>Enter Name</label>
<input type="text" name="n"/>
<label>Enter Name</label>
<input type="password" name="p"/>
<input type="submit" name="su" value="submit"/>
</form> 
<%
String n=request.getParameter("su");
if(n!=null && n.equals("submit")){
	String name=request.getParameter("n");
	String pass=request.getParameter("p");
	
	out.print(name);
	out.print(pass);
	
	
}
%>

</body>
</html>
<%--  <a href='adminu.jsp?name=del&id=1'>Update && Remove</a><br>
<a href='adminu.jsp?name=hol&id=1'>Create New Table</a><br>
<a href='show.jsp?name=hii&id=1'>Show All Student Name</a>
<%
String ad=request.getParameter("name");
if(ad!=null && ad.equals("del")){
	   int id=Integer.parseInt(request.getParameter("id"));
	  if(id>0){
%>
<form align='right' action="admin.jsp">
<label>Enter Name</label>
<input type="text" name="n" value='<%=request.getParameter("n") %>'/>
<input type="submit" name="su" value="submi"/>
</form>

<%
	  }
}else if(ad!=null && ad.equals("hol")){
	   int id=Integer.parseInt(request.getParameter("id"));
	  if(id>0){
%>
<form align='right' action="admin.jsp">
<label>Table Name</label>
<input type="text" name="ct" value='<%=request.getParameter("ct") %>'/>
<input type="submit" name="sui" value="subm"/>
</form>
<%
	}	
}
%>
--%>