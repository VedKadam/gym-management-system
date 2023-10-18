<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

	<html>

	<head>
		<title> Add Member Module</title>

		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
		<link rel="stylesheet" href="style.css" />
		<title>dropdown Menu</title>
		
		<script type="text/javascript">  
			if(performance.navigation.type == 2){
			   location.reload(true);
		}
		  </script>

		<style>
			:root {
				--color-primary: #ff6400;
				--color-white: #e9e9e9;
				--color-black: #141d28;
				--color-black-1: #212b38;
			}

			* {
				margin: 0;
				padding: 0;
				box-sizing: border-box;
			}

			body {
				font-family: sans-serif;
				background-image: url("img/adm.jpg");

			}

			.logo {
				color: var(--color-white);
				font-size: 30px;
			}

			.logo span {
				color: var(--color-primary);
			}

			.menu-bar {
				background-color: var(--color-black);
				height: 80px;
				width: 100%;
				display: flex;
				justify-content: space-between;
				align-items: center;
				padding: 0 5%;
				position: relative;
			}

			.menu-bar ul {
				list-style: none;
				display: flex;
			}

			.menu-bar ul li {
				/* width: 120px; */
				padding: 10px 30px;
				/* text-align: center; */

				position: relative;
			}

			.menu-bar ul li a {
				font-size: 20px;
				color: var(--color-white);
				text-decoration: none;

				transition: all 0.3s;
			}

			.menu-bar ul li a:hover {
				color: var(--color-primary);
			}

			.fas {
				float: right;
				margin-left: 10px;
				padding-top: 3px;
			}

			/* dropdown menu style */
			.dropdown-menu {
				display: none;
			}

			.menu-bar ul li:hover .dropdown-menu {
				display: block;
				position: absolute;
				left: 0;
				top: 100%;
				background-color: var(--color-black);
			}

			.menu-bar ul li:hover .dropdown-menu ul {
				display: block;
				margin: 10px;
			}

			.menu-bar ul li:hover .dropdown-menu ul li {
				width: 150px;
				padding: 10px;
			}

			.dropdown-menu-1 {
				display: none;
			}

			.dropdown-menu ul li:hover .dropdown-menu-1 {
				display: block;
				position: absolute;
				left: 150px;
				top: 0;
				background-color: var(--color-black);
			}




			h1 {
				color: blue;
				text-align: center;
				font-size: 36px;
			}

			form {
				width: 60%;
				margin: auto;
				padding: 20px;
				background-color: #fff;
				border-radius: 8px;
				box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			}

			label {
				display: block;
				margin-bottom: 8px;
				font-weight: bold;
			}

			input[type="text"],
			input[type="password"],
			input[type="email"],
			select,
			textarea {
				width: 100%;
				padding: 12px;
				border: 1px solid #ccc;
				border-radius: 4px;
				box-sizing: border-box;
				margin-bottom: 16px;
				resize: vertical;
			}

			input[type="submit"] {
				background-color: #ff6400;
				color: #fff;
				padding: 12px 20px;
				border: none;
				border-radius: 4px;
				cursor: pointer;
				font-size: 16px;
				font-weight: bold;
			}

			input[type="submit"]:hover {
				background-color: #e95b00;
			}
		</style>


	</head>

	<body>

		<div class="menu-bar">
			<h1 class="logo">The Rock<span>Fitness.</span></h1>
			<ul>
				<li><a href="admin.jsp">Home</a></li>
				<li><a href="about.jsp">About</a></li>
				<li><a href="#">Membership <i class="fas fa-caret-down"></i></a>

					<div class="dropdown-menu">
						<ul>
							<li><a href="addmember.jsp">Add Members</a></li>
							<li><a href="view_member.jsp">View/Delete Members</a></li>
							<li><a href="update_member.jsp">Update Members</a></li>
						</ul>
					</div>
				</li>

				



				<li><a href="\gym_management_system\index.jsp">Log Out</li></a>
				</li>
			</ul>
		</div>



		</div>
		<h1> Add Member </h1>

		<form method="post">
			
			<input type="text" name="un" placeholder="enter username" />
			</br> </br>

			<input type="password" name="pw" placeholder="enter password" />
			</br> </br>

			<input type="text" name="em" placeholder="enter email">
			</br> </br>

			<input type="text" name="mb" placeholder="enter membership" />
			</br> </br>


			<input type="submit" value="Add" name="btn" />

		</form>
		<% 
		if(request.getParameter("btn")!=null) 
		{ 
			
			String username=request.getParameter("un");
			String password=request.getParameter("pw"); 
			String email=request.getParameter("em");
			String membership=request.getParameter("mb"); 
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver()); 
			String url="jdbc:mysql://localhost:3306/vc24sep22" ; 
			String un="root" ;
			String pw="abc123" ; 
			Connection con=DriverManager.getConnection(url, un, pw); 
			String sql="insert into users (username, password, email, membership) values( ?, ?, ?, ?)" ;
			PreparedStatement pst=con.prepareStatement(sql); 
			
			pst.setString(1, username);
			pst.setString(2, password);
		 	pst.setString(3, email); 
			pst.setString(4, membership); 
			// Validation for username 
			if(username==null || username.trim().isEmpty()) 
			{ out.println("Username must be filled out");
				return; 
			}
			 // Validation for email 
			if(email==null || email.trim().isEmpty()) 
			{ out.println("Email must be filled out");
				 return;
 			}
			 // Validation for password 
			if(password==null || password.trim().isEmpty()) 
			{
				out.println("Password must be filled out"); 
				return;
			 }
			if(password.length() < 8 || !password.matches(".*[a-z].*") || !password.matches(".*[A-Z].*") || !password.matches(".*\\d.*") || !password.matches(".*[!@#$%^&*].*")) 
			{ 
				out.println("Password must be at least 8 characters long and contain at least one lowercase letter, one uppercase letter, one digit, and one special character (!@#$%^&*)");
 			}
			else
			{ 
				pst.executeUpdate();
				out.println(username + " Member Added" );
			}
			 con.close();
			}
			catch(SQLException e) 
			{ 
				if(e instanceof SQLIntegrityConstraintViolationException) 
				{ 
					out.println("Record exists ");
            			} 
				else {
                			out.println(" Issue: " + e.getMessage());
            			}
				}
				
		}
		%>
		
	

</body>
</html>