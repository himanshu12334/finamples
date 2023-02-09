<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="NewFile1.jsp"></jsp:include>
<h2>Registration!
</h2>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3>Column 1</h3>
      <p>Lorem ipsum dolor..</p>
    </div>
    <div class="col-sm-4">
      <h3>New Registration</h3>
      <form action="DataSave.jsp">
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email" name="email"  required="required" autofocus="autofocus">
  </div>
  <div class="form-group">
    <label for="pwd">Name:</label>
    <input type="text" class="form-control" id="name" name="uname" required="required">
  </div>
 <div class="form-group">
    <label for="Mobile">Mobile:</label>
    <input type="text" class="form-control" id="mobile" name="mobile" required="required">
  </div>
  
<div class="form-group">
    <label for="bg">Blood Group:</label>
    <select class="form-control" id="bg" name="bg">
    <option>A+</option>
    <option>AB+</option>
    <option>B+</option>
    <option>O+</option>
    <option>A-</option>
    <option>AB-</option>
    <option>O-</option>
    <option>B-</option>
    </select>
  </div>
  <div class="form-group">
    <label for="city">City:</label>
    <select class="form-control" id="city" name="city">
    <option>Jabalpur</option>
    <option>Bhopal</option>
    <option>Indore</option>
    <option>Katni</option>
    <option>Gwalior</option>
    <option>Rewa</option>
    <option>UP</option>
    <option>HM</option>
    </select>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
      
    </div>
    <div class="col-sm-4">
      <h3>Column 3</h3>
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
</div>
Bootst
</body>
</html>