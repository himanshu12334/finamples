<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="NewFile1.jsp"></jsp:include>
<h2>Stock Tracker!
</h2>
<div class="row">
  <div class="col-sm-4"></div>
  <div class="col-sm-8"></div>
</div>

<a href="https://www.tickertape.in/screener/equity"><img alt="no error" src="screener.png" height="800" width="1000"style="display: block;
  margin-left: auto;
  margin-right: auto;" ></a>
  
  </form>
  <%! String bg=""; %>
  <%! String city=""; %>
  <%
  if(request.getParameter("b1")!=null)
  {
	  bg=request.getParameter("bg");
	   city=request.getParameter("city");
  %>
	 <div>
  <h2>Search Result!
  </h2>
  <hr>
  <h3>Your Selection:</h3>
  Blood Group:<span style="color:red"><%=bg %></span><p>
    City:<span style="color:red"><%=city %></span><p>
  </div>  
  
  <h2>Result</h2>
              
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Email</th>
       <th>Name</th>
       <th>Mobile</th>
        <th>Bg</th>
         <th>City</th>
      </tr>
     
    </thead>
    <tbody>
   
      
    
  
  
  
  
  
  
  
  <%}
  try{
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection cn =DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
	  String sql="select email,name,mobile,bg,city from donarreg where bg='"+bg+"' and city='"+city+"'";
	  Statement st=cn.createStatement();
	  ResultSet rs= st.executeQuery(sql);
	  while(rs.next()){
		  out.println("<tr>");
		  out.println("<td>"+rs.getString(1)+"<td>");
		  out.println("<td>"+rs.getString(2)+"<td>");
		  out.println("<td>"+rs.getString(3)+"<td>");
		  out.println("<td>"+rs.getString(4)+"<td>");
		  out.println("<td>"+rs.getString(5)+"<td>");
		  out.println("</tr>");
	  }
  }
  catch(Exception ex){
	  out.println(ex);
	  
  }
  %>
  </tbody>
</body>
</html>