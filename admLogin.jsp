<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>


<html>
<head>
<title> Admin-Log Module by Vedant </title>
<style> *{ font-size:30px } 
	body { background-image: url('bg1.jpg');
  		background-repeat: no-repeat;
 		background-attachment: fixed;
		background-size: cover;
	}
	.btn{ background-color:orange; color:white; border-radius:20px; min-height:30px; 
    min-width: 120px; }
	.btn:hover{ color:yellow; }
	h1{ font-family: Ok-Esport; }
	.nav a:hover{ background-color: red;}

	#show-password {
  	background-color: transparent;
  	border: none;
  	color: #007bff;
  	cursor: pointer;
  	font-size: 14px;
  	margin-left: 10px;
  	outline: none;
  	padding: 0;
  	text-decoration: underline;
	}

	#show-password:hover {
  	color: #0056b3;
	}
</style>
</head>
<body>
	<center> 
		<h1 style="font-family: 'Wallpoet', cursive; font-size: 50px; "> The Rock Fitness & More </h1>
		<h2> Admin Login </h2>
		<form method="POST">
	<input type="text" name="un" placeholder="Enter Username" />
		<br/>	<br/>
	<input type="password" name="pw1" id="password" placeholder="Enter Password" />
		<br/> 	<br/>
	<button type="button" id="show-password">Show Password</button>
		<br/> <br/>
		<input type="submit" value="Next" name="btn" class="btn" />
		</form>
		<br/>

	</center>

	<script>
		const passwordField = document.getElementById("password");
		const showPasswordButton = document.getElementById("show-password");

		showPasswordButton.addEventListener("click", function () {
  		if (passwordField.type === "password") {
    			passwordField.type = "text";
    			showPasswordButton.textContent = "Hide Password";
  		} else {
    			passwordField.type = "password";
    			showPasswordButton.textContent = "Show Password";
  		}
		});
	</script>
	</form>
<%
	if(request.getParameter("btn")!=null)
	{
		String username = request.getParameter("un");
		String password = request.getParameter("pw1");
		try  
		{
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			String url="jdbc:mysql://localhost:3306/vc24sep22";
			String un="root";
			String pw="abc123";
			Connection con = DriverManager.getConnection(url, un, pw);
			String sql="select * from admins where username=? and password=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, username);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				// Create a session for the admin
				HttpSession admsession = request.getSession();
				admsession.setAttribute("username", username);
				
				// Set the session timeout to 1 minute
				admsession.setMaxInactiveInterval(60);

				// Redirect to admin.jsp
				response.sendRedirect("admin/admin.jsp");
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Invalid login');");
				out.println("location='admLogin.jsp';");
				out.println("</script>");
			}
			
				// Create a session for the admin
				HttpSession admsession = request.getSession(true);
				admsession.setAttribute("admin", username);
				
				// Set the session timeout to 1 minute
				admsession.setMaxInactiveInterval(60);
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}
%>

</body>
</html>