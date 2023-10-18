<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>


<html>
<head>
	<title>Forgot Password</title>
	<style>
	* {
		box-sizing: border-box;
	}

	body {
		background-color: #404049;
	}

	.container {
		margin-top: 50px;
		padding: 20px;
		border: 1px solid #ccc;
		width: 50%;
		background-color: #fff;
		border-radius: 10px;
		box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
	}

	h1 {
		background-color: #000;
		color: #ffd700;
		width: 100%;
		padding: 20px;
		margin: 0;
		border-radius: 10px 10px 0 0;
	}

	h2 {
		color: #ffd700;
		margin-top: 0;
		margin-bottom: 20px;
	}

	input[type="text"],
	input[type="password"] {
		width: 100%;
		padding: 10px;
		margin-bottom: 10px;
		border-radius: 5px;
		border: none;
		background-color: #f8f8f8;
	}

	.btn {
		background-color: #ff4a4a;
		color: #fff;
		border-radius: 20px;
		padding: 10px 20px;
		border: none;
		cursor: pointer;
		transition: background-color 0.3s ease-in-out;
	}

	.btn:hover {
		background-color: #6dff6d;
	}

	</style>
</head>
<body>
	<center>
	<div class="container">
		<form method="post">
			<h1>The Rock Fitness & More</h1>
			<h2>Forgot Password</h2>
			<input type="text" name="un" placeholder="Enter Username" />
			<input type="text" name="ee" placeholder="Enter Email" />
			<input type="password" name="np" placeholder="Enter New Password" />
			<input type="Submit" name="btn" value="Save" class="btn" />
			<a href="index.jsp" class="btn">Back</a>
		</form>
	</div>
<%
	if(request.getParameter("btn")!= null)
	{
		String username = request.getParameter("un");
		String password = request.getParameter("np");
		String email = request.getParameter("ee");
		
	try{
		DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
		String url = "jdbc:mysql://localhost:3306/vc24sep22";
		String un = "root";
		String pw = "abc123";
		Connection con = DriverManager.getConnection(url, un, pw);
         	String sql = "update users set username = ?, password = ? where email = ?";
       		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, username);
		pst.setString(2, password);
		pst.setString(3, email);
		int numRowsUpdated = pst.executeUpdate();
		if (numRowsUpdated == 0) {
			out.println("Record not found");
		} else {
			out.println("Record updated");
		}
		con.close();
	
	}
	catch(SQLException e){
		out.println("issue " + e);
	}
	}
%>

</center>
</body>
</html>
