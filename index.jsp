<%@ page import="java.sql.*" %>


<html>
<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Cormorant+SC:wght@700&family=Wallpoet&display=swap" rel="stylesheet">
	
<title> Login Module by Vedant </title>

<style> *{ font-size:30px } 
	body { background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ),url('123.jpg');
  		background-repeat: no-repeat;
 		background-attachment: fixed;
		background-size: cover;
		
	}
	input[type="text"],
	input[type="password"] {
  		border: none;
  		border-radius: 10px;
  		padding: 10px;
  		background-color: #f2f2f2;
  		font-size: 16px;
  		width: 300px;
  		margin-bottom: 10px;
  		box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
  		outline: none;
	}
	input[type="submit"] {
  		border: none;
  		border-radius: 10px;
  		padding: 10px 20px;
  		background-color: #4CAF50;
  		color: white;
  		font-size: 16px;
  		cursor: pointer;
  		box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
	}
	input[type="submit"]:hover {
  		background-color: #3e8e41;
	}


	.btn{ background-color:orange; color:white; border-radius:20px; min-height:30px; 
    min-width: 120px; }
	.btn:hover{ color:green; }
	h1{ font-family: Ok-Esport;
		color: #e19e3b; }
	h2{
		color: #e19e3b;
	}
	.nav a:hover{ background-color: red;}
	
	<!--
	.adm{
		padding: 1em;
		color: blue;
	}
	.adm:hover{
		color: #f6e980;
	}
	.nu{
		color: blue;
	}
	.nu:hover{
		color: #f6e980;
	}
	.fp{
		padding: 1em;
	}
	.fp:hover{
		color: #f6e980;
	}
	-->
	.fp, .nu, .adm {
  	text-decoration: none;
  	margin-right: 10px;
  	font-size: 20px;
	font-weight: bold;
  	color: #e19e3b;
	}

	input:focus {
  	background-color: #e6e6e6;
	}
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
		<h1 style="font-family: 'Wallpoet', cursive; font-size: 70px; "> The Rock Fitness & More </h1>
		<h2> Login Page </h2>
		<form method="POST">
	
	<input type="text" name="un" placeholder="Enter Username" title="Enter any name" required/>
		<br/>	<br/>
	<input type="password" name="pw" placeholder="Enter Password" title="password must contain a special character, number and Capital letter" required />
		<br/> 	<br/>
	<button type="button" id="show-password" required>Show Password</button>
	<br/> <br/>
	
	<input type="submit" value="Login" name="btn" />
		<br/> <br/>
		<a class="fp" href="fgpwd.jsp"> Forgot Password?</a>
		<a class="nu" href="signup.jsp"> New User </a>
		<a class="adm" href="admLogin.jsp"> Admin Login </a>
		<br/>
	
	<%	
		
		
		if(request.getParameter("btn")!=null)
		{
			String username = request.getParameter("un");
			String password = request.getParameter("pw");
		try
		{	
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			String url="jdbc:mysql://localhost:3306/vc24sep22";
			String un="root";
			String pw="abc123";
			Connection con = DriverManager.getConnection(url, un, pw);
			String sql="select * from users where username=? and password=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, username);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				String membership = rs.getString("membership");
    				if(membership == null || membership.equals("")) {
					request.getSession().setAttribute("user", username);
   			 		response.sendRedirect("home.jsp");
				} else if(membership.equals("elite")) {
					request.getSession().setAttribute("elite", username);
    					response.sendRedirect("homepage1.jsp");
				} else if(membership.equals("premium")) {
					request.getSession().setAttribute("premium", username);
    					response.sendRedirect("homepage2.jsp");
				}
			}
			else
			{
				out.println("<script>alert('Invalid Login');</script>");
			}
			con.close();
		}
			catch(SQLException e)
			{
				out.println("issue " + e);
			}
			}
	
	
	    response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
	    response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
	    response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
	    response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
		
	
		
	
	%>	
	<script>
  		var showPasswordButton = document.getElementById("show-password");
  		var passwordField = document.querySelector("input[type='password']");

  		showPasswordButton.addEventListener("click", function() {
    		if (passwordField.type === "password") {
      		passwordField.type = "text";
    		} else {
      			passwordField.type = "password";
    		}
  		});
	</script>


</body>
</html>

