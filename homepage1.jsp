<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat" %>

<html>
<head>

	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="Pragma" content="no-cache" />
	<meta http-equiv="Expires" content="-1" />
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Cormorant+SC:wght@700&family=Wallpoet&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> <!-- for footer --> 
	<!-- bootstrap link starts-->


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>    
<!-- bootstrap link ends-->


	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
	

	<script type="text/javascript">  
		if(performance.navigation.type == 2){
   		location.reload(true);
	}
  	</script>
	

<title> Elite Member Module </title>
<link rel="stylesheet" href="style.css" />
<style> 
	@import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap');
           html, body{
 	   margin: 0;
 	   padding: 0;
	}
	
	.main-header{
    	background-color: rgba(0, 0, 0, .6);
    	background-image: linear-gradient(rgba(0,0,0,0.5), transparent),url("27230.jpg");
    	background-blend-mode: multiply;
    	background-size: cover;
    	padding-bottom: 30px;
	}
	.sticky {
  	position: fixed;
  	top: 0;
  	width: 100%;
	}

	
	*{ font-size:18px } 
	body { background-image: url('bg1.1.jpg');
  		background-repeat: no-repeat;
 		background-attachment: fixed;
		background-size: cover;
		
	}
	
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
		
		background-color: white;
		color: blue;
 		border: 2px solid #967bab;	
		cursor: pointer;
		text-align: center;
		font-weight: bold;

	}
	.btn-div:hover{
		background-color: orange;
	}
	.gym-name{
		text-align: center;
    		margin: 0;  
    		font-size: 4em;
    		font-family: "Bebas Neue";
    		font-weight: normal;
 	   	color: #d24803;
	}
	.gym-name-large{
    	font-size: 4em;
	
	}
	
	.main-footer {
  		position: absolute;
  		bottom: 0;
  		width: 100%;
  		height: auto; /* adjust height as per your requirement */
  		background-color: black;
		padding: .5em 0;
	}
	.main-footer-container ul {
	    flex-grow: 1;
	    text-align: end;
	}
	.g-name{
		font-size: 2em;
		padding: auto;
	}
	label {
    		display: block;
    		font-weight: bold;
		margin-top: 10px;
		margin-left: 10px;
    		margin-bottom: 10px;
  }

  /* Style the select element  dropdown */
  	select {
    		display: flex;
		background-color: black;
		color: white;
	    	padding: 5px;
    		border: 1px solid #ccc;
    		border-radius: 4px;
    		font-size: 16px;
		margin-top: 10px;
		margin-left: 10px;
    		margin-bottom: 20px;
  }
	.feat{	
		padding: 2em;
		margin: 2em;
	}
	.h2E{
		position: relative;
		font-size: 3em;
		letter-spacing: 5px;
		color: #0e3742;
		text-transform: uppercase;
		width: 100%;
		text-align: center;
		-webkit-box-reflect: below 1px linear-gradient(transparent, #0004);
		/* linear-height: 0.70em; */
		outline: none;
		animation: animate 5s linear infinite;
	}
	@keyframes animate{
		0%, 18%, 20%, 50.1%, 60%, 65.1%, 80%, 90.1%, 92%{
			color: #0e3742;
			text-shadow: none;		
		}
		18.1%, 20.1%, 30%, 50%, 60.1%, 65%, 80.1%, 90%, 92.1%, 100%{
			color: #fff;
			text-shadow: 0 0 10px #03bcf4,
			0 0 20px #03bcf4,
			0 0 40px #03bcf4,
			0 0 80px #03bcf4,
			0 0 160px #03bcf4;
			
		}
	}
	
	.btn1{
		display:block;
		border-radius: 4px;
		background-color: black;
		border: none;
		color: white;
		text-align: center;
		font-size: 18px;
		padding: 20px;
		width: 100px;
		transition: all 0.5s;
		cursor: pointer;
		margin-top: 20px;
		
	}
	
	.btn1:hover{
		background-color: #E36720;
		color: white;
	}
	

	.dropdown1{
		min-width: 15em;
		position: relative;
		margin: 2em;
		margin-top: 10px;
		padding-top: 20px;
		
	}
	.dropdown1 * {
		box-sizing: border-box;	
		width: 400px;
	}
	.select{
		background: #000000;
		color: #E36720 ;
		display: flex;
		justify-content: space-between;
		align-items: center;
		text-transform: uppercase;
		letter-spacing: 0.1em;
		border-radius: 0.5em;
		padding: 1em;
		cursor: pointer;
		transition: background 0.3s;
	}
	.select-clicked{
		border: 2px #0f0e0e solid;
		box-shadow: 0 0 0 0.8em #26849a;
	}
	.select:hover{
		background: #454543;
	}
	.lbldate{
		display: inline-block;
		background-color: black;
		color: #E36720;
		padding: 10px;
		letter-spacing: 0.1em;
		font-size: 16px;
		font-weight: light;
		width: fit-content;	
		margin-top: 20px;
		margin-bottom: 10px;
	}
	.date{
		display: inline-block;
		margin: 20px;
		padding: 10px;
		margin-top: 20px;
		margin-bottom: 10px;
		background-color: black;
		color: #fff700;
	}
	/* Change datepicker background color */
    	.ui-datepicker-calendar {
        	background-color: black;
	}
	.ui-datepicker-title{
		background-color: black;
	}
	ui-state-default ui-state-highlight{
		background: #fff700;
	}
	
	/* <!-- Styling for Css Section of Footer	--> */
	
	.footer-content{
	display: flex;
    	align-items: center;
    	justify-content: center;
    	flex-direction: column;
    	text-align: center;
	}
	.footer-content h3{
    	font-size: 1.8rem;
    	font-weight: 400;
    	text-transform: capitalize;
    	line-height: 3rem;
	}
	.footer-content p{
    	max-width: 500px;
    	margin: 10px auto;
    	line-height: 28px;
    	font-size: 14px;
	}
	.socials{
    	list-style: none;
    	display: flex;
    	align-items: center;
    	justify-content: center;
    	margin: 1rem 0 3rem 0;
	}
	.socials li{
    	margin: 0 10px;
	}
	.socials a{
    	text-decoration: none;
    	color: #fff;
	}
	.socials a i{
    	font-size: 1.1rem;
    	transition: color .4s ease;

	}
	.socials a:hover i{
    	color: aqua;
	}

	.footer-bottom{
    	background: #000;
    	width: 100vw;
    	padding: 20px 0;
    	text-align: center;
	}
	.footer-bottom p{
    	font-size: 14px;
    	word-spacing: 2px;
    	text-transform: capitalize;
	}
	.footer-bottom span{
    	text-transform: uppercase;
    	opacity: .4;
    	font-weight: 200;
	}
	/* <!-- Styling for Css Section of Footer Ends Here  --> */

		
</style>
</head>
		


<body>	
	<header class="main-header">
		
		

		<div class="nav">
			<a href="homepage1.jsp"> HOME </a>
			
			<a href="videos.jsp"> VIDEOS </a>
			<a href="about.jsp"> ABOUT</a>
			
			<div class="dropdown mt-3   btn">
				<button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
				 Profile
				</button>
				<ul class="dropdown-menu">
				  
				  <li><button class="dropdown-item" type="button"><a class="p-1" href="" style="text-decoration: none ; background-color: #fffffe; color: black ; font-weight: bold ;">
					<%
					if(session.getAttribute("elite")!=null)
					{
						String user=(String)session.getAttribute("elite");
						out.println("Welcome " + user);
					}
					else
					{
						response.sendRedirect("index.jsp");
					}
					if(request.getParameter("btn")!=null)
					{
						session.setAttribute("elite","");
						
						response.sendRedirect("index.jsp");

					}
				%>
				
			</a></button></li>
			<li><a href="logout.jsp" class="button">	
				<button  type="submit" class="btn-div" name="btn" >Log Out</button>
			
			</a>
			</li>
				</ul>
			  </div>
			


		</div>
		<h1 class="gym-name store-gym-large" font-size: 70px > The Rock Fitness and More </h1>
		

	</header>
		<h2 class="h2E"> You are an Elite Member</h2>
		
	</center>
	</div>

		<form method="post" >
	<div class="dropdown1">

	<select class="select" name="exercise" required>
		<option value="0"> Select a Exercise</option>
  		<option >Upper Body (Chest, Bicep)</option>
  		<option >Lower Boy (Legs, Hamstrings, Back)</option>
  		<option >CrossFit Or Cardio</option>
  		<option >Kick-Boxing</option>
  		<option >Yoga</option>
	</select>
	
	<select class="select"  name="diet" required>
		<option value="0"> Select a Diet</option>
  		<option value="1">4 Eggs, 1 Scoup Whey Protien, Paneer</option>
  		<option value="2">Pancakes, Chicken salad, 6 Eggs </option>
  		<option value="3">Cheese, Almonds, Fruits, Veggies, Milk </option>
		<option value="4">2 Chapati + Peas & Paneer curry</option>
  		<option value="5">Green Tea, 2 Egg-Whites, Chicken 300gm or 1 Scoup of protein</option>
	</select>

	<select class="select"  name="trainer" required>
		<option value="0"> Select a Trainer</option>
  		<option >Saket</option>
  		<option >Jonathan </option>
  		<option >Simon </option>
		<option >Talia</option>
  		<option >Freya</option>
		<option >Mark</option>
	</select>
		
	<label for="date" class="lbldate">Select a date:</label>
	<input type="date" min="2023-04-27" name="date" class="date" required>

	<input type="submit" value="Submit" name="btn1" class="btn1" required></input>

	<a href="gb.jsp">Generate Bill</a> 
	
	</div>
	</form>
	
	<%
		if(request.getParameter("btn1")!=null)
		{
		try
		{			
			
		
			String trainer = request.getParameter("trainer");
			String exercise = request.getParameter("exercise");
			String diet = request.getParameter("diet");
			String date = request.getParameter("date");
			
			
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			String url = "jdbc:mysql://localhost:3306/vc24sep22";
			String un = "root";
			String pw = "abc123";
			Connection con = DriverManager.getConnection(url, un, pw);
			String sql = "insert into demo value(?, ?, ?, ?)";	
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, exercise);
			pst.setString(2, diet);
			pst.setString(3, trainer);
			pst.setString(4, date);
			pst.executeUpdate();
			out.println("<script>alert('Your session has been booked, Thank you');</script>");			
			con.close();
			}
			
			catch(Exception e)
			{
				out.println("<script>alert("+e+");</script>");			
			
				out.println("issue " +e);	
			}
		}


	%>

	<footer>
		<div class="footer-content">
			<h3> Developed By</h3>
			<p> Vedant Kadam & Srinivas Muthukrishnan</p>
			<ul class="socials">
				<li><a href="https://www.facebook.com/login/"><i class="fa fa-facebook"></i></a></li>
				<li><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
				<li><a href="https://github.com/"><i class="fa fa-github"></i></a></li>
				<li><a href="https://www.linkedin.com/in/vedant-kadam-785a1b262/"><i class="fa fa-linkedin-square  "></i></a></li>
			</ul>
		</div>
		<div class="footer-bottom">
            	<p>copyright &copy;2023 TheRockFitness. designed by <span>Vedant & Srinivas</span></p>
        	</div>
	</footer>
	
	
</body>
</html>

