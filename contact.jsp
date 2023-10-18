<%@ page import="java.sql.*" %>
<html>
<head>

<title> Contact Page </title>
<!-- bootstrap link starts-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>    
<!-- bootstrap link ends-->

<link rel="stylesheet" href="style.css" />
<style>
	@import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap');
	 *{ font-size:18px }
	

	html, body{
 	   margin: 0;
 	   padding: 0;
	}
	
	body { background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ),url('hed.jpg');
  		background-repeat: no-repeat;
 		background-attachment: fixed;
		background-size: cover;
		--bg-image-opacity: 0.25;
		
	}
	/* .nav{
		padding: 10px;
	} */
	.btn:hover{ color: #FFA500; }
.nav{
		text-align: center;
		padding-left: 500px;
		background: linear-gradient(rgba(0,0,0,20), transparent),url('');
        	background-blend-mode: multiply;
        	/* background-size: cover; */
	}
	.nav a{ color:white; text-decoration:none; margin:40px;}
	.nav a:hover{ background-color: orange;
		color:black;
	}
	.nav a{
		font-family: "Raleway";
	}
	
	
	.btn-div{
		display:inline-block;
		
		background-color:white;
		color: blue;
 		border: 2px solid #967bab;	
		cursor: pointer;
		text-align: center;

	}
	.btn-div:hover{
		background-color: orange;
	}
	.gym-name{
		
		text-align: center;
    		margin: 0;  
    		font-size: 6em;
    		font-family: "Bebas Neue";
    		font-weight: normal;
 	   	color: white;
	}
	.gym-name-large{
    	font-size: 8em;
	}
	.gym-name{
		color: #d24803;
	}
	.container-form{
		text-align: center;
		padding: 10px;	
	}
	.contact-name{
		font-size: 2em;
		color: white;
		text-align: center;
	}
	.probtn{
		border: none;
  		border-radius: 10px;
  		padding: 10px 20px;
  		background-color: #EC5D0A;
  		color: white;
  		font-size: 16px;
  		cursor: pointer;
  		box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);
	}
	.probtn:hover{
		background-color: #BB4907;
	}
	input[type="text"],
	input[type="password"], input[type="number"] {
  		border: none;
  		border-radius: 10px;
  		padding: 10px;
  		background-color: #f2f2f2;
		color: black;
  		font-size: 16px;
		font-weight: bold;
  		width: 300px;
  		margin-bottom: 10px;
  		box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
  		outline: none;
	}
	
 </style>
</head>
<body>
	
	
	<body>	
		<header class="main-header">
		
		

			<div class="nav">
				<a href="home.jsp"> HOME </a>
				<a href="programs.jsp"> MEMBERSHIP </a>
				<a href="contact.jsp"> CONTACT US </a>
				<a href="about.jsp"> ABOUT</a>
				
				<div class="dropdown mt-3 btn">
					<button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
					 Profile
					</button>
					<ul class="dropdown-menu">
					  
					  <li><button class="dropdown-item" type="button"><a class="p-1" href="" style="text-decoration: none ; background-color: #fffffe; color: black ; font-weight: bold ;">
						
					
				</a></button></li>
				<li><a href="index.jsp" class="button">	
					<button  type="submit" class="btn-div" name="btn" >Log Out</button>
				
				</a>
				</li>
					</ul>
				  </div>
				
	
	
			</div>
			<h1 class="gym-name store-gym-large" font-size: 70px > The Rock Fitness and More </h1>
			<h2 class="contact-name"> Contact Info </h2>

		</header>
	<form method="post">
		<div class="container-form">
	<input type="text" name="fn" placeholder="Enter First Name" required />
		<br/>	<br/>
	<input type="text" name="sn" placeholder="Enter Surname" required />
		<br/>	<br/>
	<input type="text" name="ed" placeholder="Enter Email" />
		<br/>	<br/>
	<input type="text" name="lo" placeholder="Enter Location" required />
		<br/>	<br/>
	<input type="number" name="wght" placeholder="Enter Weight" />
		<br/>	<br/>
	<input type="number" name="ht" placeholder="Enter Height" />
		<br/>	<br/>
	<input type="submit" value="Proceed" name="btn" class="probtn"  />
		</form>
	</div>

	</center>

<% 
		if(request.getParameter("btn")!=null) 
		{ 
			
			String firstname=request.getParameter("fn");
			String lastname=request.getParameter("sn"); 
			String email=request.getParameter("ed");
			String location=request.getParameter("lo");
			int weight=Integer.parseInt(request.getParameter("wght"));
			int height=Integer.parseInt(request.getParameter("ht")); 
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver()); 
			String url="jdbc:mysql://localhost:3306/vc24sep22" ; 
			String un="root" ;
			String pw="abc123" ; 
			Connection con=DriverManager.getConnection(url, un, pw); 
			String sql="insert into details (firstname, lastname, email, location, weight, height) values( ?, ?, ?, ?, ?, ?)" ;
			PreparedStatement pst=con.prepareStatement(sql); 
			
			pst.setString(1, firstname);
			pst.setString(2, lastname);
		 	pst.setString(3, email); 
			pst.setString(4, location);
			pst.setInt(5, weight);
			pst.setInt(6, height); 
			
			pst.executeUpdate();
			out.println("<script type=\"text/javascript\">");
				out.println("alert('record added');");
				out.println("</script>");
			
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