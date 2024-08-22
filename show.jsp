<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Insert title here</title>
  
   <link rel="stylesheet" href="styl.css" >
  
</head>

<%@page import="java.util.Stack" %>
<%@page import="javaprojat.arrgetset" %>
<body>
<jsp:useBean id="ob" class="javaprojat.dbcode"></jsp:useBean>

<a href='show.jsp?name=cre&id=1'>Create</a>
<a href='show.jsp?name=ins&id=1'>Insert</a>
<a href='show.jsp?name=del&id=1'>Remove</a>
<a href='show.jsp?name=upr&id=1'>Update && Remove</a><br>

<h1>hello</h1>

<%
String s=request.getParameter("name");
if(s!=null && s.equals("upr")){
	int n=Integer.parseInt(request.getParameter("id"));
%>
<form action="admin.jsp">
	<label>Enter Table Name</label>
	<input type="text" name="n" value='<%=request.getParameter("n") %>'/>
	<input type="submit" name="su" value="submi"/>
</form>
<% 	
}
if(s!=null && s.equals("cre")){
	int n=Integer.parseInt(request.getParameter("id"));
	%>
	<form  style="margin-left:1000px; margin-top:2%;action="">
	<label>Enter Table Name</label>
	<input type="text" name="sn"/>
	<input type="submit" name="dbc" value="creat"/>
	</form>
	<%	
}
	

 else if(s!=null && s.equals("ins")){
	int n=Integer.parseInt(request.getParameter("id"));
	%>
	<form  style="margin-left:1000px; margin-top:2%;action="">
	<label>Enter Table Name</label>
	<input type="text" name="sn"/>
	<input type="submit" name="dbc" value="OK"/>
	</form>
<% 
}
 else if(s!=null && s.equals("del")){
	 int n=Integer.parseInt(request.getParameter("id"));
%>
<form  style="margin-left:990px; margin-top:2%;action="">
<label>Enter Table Name</label>
<input type="text" name="sn"/>
<input type="submit" name="dbc" value="submit"/>
</form>
<%
}
try{
        String sl=request.getParameter("dbc");
        if(sl!=null && sl.equals("creat")){
        String nam=request.getParameter("sn");
        int r=ob.creattable(nam);
        if(r>=0){
        	response.sendRedirect("show.jsp");
        }else{
        	out.print("not Create table");
        }
        }else if(sl!=null && sl.equals("OK")){
        	%>
        	<form  style="margin-left:990px; margin-top:2%;action="">
        	<table>
        	<tr><td><label>Table Name</label>
        	<input type="text" name="tb" value='<%=request.getParameter("sn")%>'/></td></tr>
        	
        	<tr><td><label>Semester</label>
        	<input type="number" name="se"/></td></tr>
        	
        	<tr><td><label>SubjetCode</label>
        	<input type="text" name="sc"/></td></tr>
        	
        	<tr><td><label>Grade</label>
        	<input type="text" name="g"/></td></tr>
        	
        	<tr><td><label>Result</label>
        	<input type="text" name="r"/></td></tr>
        
        	<tr><td><input type="submit" name="db" value="inset"/></td></tr>
            </table>
        	</form>
        	<%	
        }
        
        else if(sl!=null && sl.equals("submit")){
	       String ni=request.getParameter("sn");
	       int r=ob.deleattable(ni);
	     if(r>=0){
	       response.sendRedirect("show.jsp");     
	    }else{
	    	out.print("not delet table");	
	    }
   }  
    	String ina=request.getParameter("db");
    	if(ina!=null && ina.equals("inset")){
    	     String tb=request.getParameter("tb");
             int sem=Integer.parseInt(request.getParameter("se"));
    	     String suco=request.getParameter("sc");
    	     String gr=request.getParameter("g");
    	     String re=request.getParameter("r");
    	     int r=ob.insatinto(tb, sem, suco, gr, re);
    	  if(r>=0){
    		response.sendRedirect("show.jsp");
    	  }
     }
}catch(Exception e){
	out.print(e);
}
     Stack<arrgetset> st=new Stack<arrgetset>();
          st=ob.showtabl();
         int c=0;
%>
<table style="border:3px solid black; margin-top:50px;">
<tr><th colspan='2'>Student Table</th></tr>
<%
  for(arrgetset l: st){
	  c++;
%>
  <tr><td><% out.print(c+".");%></td><td><%=l.getTab() %></td></tr>
<%
  }
%>
</table>

</body>
</html>
<%--	 response.sendRedirect("show.jsp"); --%>
