<html>
<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Cormorant+SC:wght@700&family=Wallpoet&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> <!-- for footer --> 
	<!-- bootstrap link starts-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>    
<!-- bootstrap link ends-->


<title> Programs provided by Vedant </title>
<link rel="stylesheet" href="style.css" />
<style> @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Raleway&display=swap');

	html, body{
 	   margin: 0;
 	   padding: 0;
	
	}	

	*{ font-size:18px } 
	body { background-image: url('bg1.1.jpg');
  		background-repeat: no-repeat;
 		background-attachment: fixed;
		background-size: cover;
		--bg-image-opacity: 0.25;
		
	}
	/* .nav{
		padding: 10px;
		font-family: "Raleway";
	} */

	* {box-sizing: border-box;}
	.mySlides {display: none;}
	img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
padding: 4em;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
  padding: 15px, 10px;
right: 50;
left: 50;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px ;
  position: absolute;
  top: 50;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 2.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 12px}
}
	
	/* .btn{ background-color:red; color:white; border-radius:20px; min-height:30px; min-width: 120px;  } */
	.btn:hover{ color: #FFA500; }
.nav{
		text-align: center;
		padding-left: 500px;
		background: linear-gradient(rgba(0,0,0,20), transparent),url('');
        	background-blend-mode: multiply;
        	background-size: cover;
	}
	.nav a{ color:white; text-decoration:none; margin:40px;}
	.nav a:hover{ background-color: orange;
		color:black;
	}
	.nav a{
		font-family: "Raleway";
	}
	
	.main-header{
    	background-color: rgba(0, 0, 0, .6);
    	background-image: linear-gradient(rgba(0,0,0,0.5), transparent),url("hed.jpg");
    	background-blend-mode: multiply;
    	background-size: cover;
    	padding-bottom: 30px;
	}
	
	
	.gym-name{
		 text-align: center;
    		margin: 0;  
    		font-size: 4em;
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

	.btn-div{
		display:inline-block;
		background-color: white;
		color: blue;
 		border: 2px solid #967bab;	
		cursor: pointer;
		text-align: center;
	}
	.btn-div:hover{
		background-color: orange;
	}
	.wrapper{
		display:flex;
		justify-content: space-between;
		width: 1200px;
		margin: 2rem 2rem;
		flex-wrap: wrap;
	}
	.box{
		float: left;
		margin-left: 10rem;
		padding: 1rem 1rem;
		width: 400px;
		height: 500px;
		text-align: center;
		background-color: wheat;
		cursor:pointer;
		
	}
	.box:hover{
		transition: 0.5s ease-in-out;
		background-color: lightcoral;
	}
	.box img {
		width: 150px;
		background-color: white;
		border-radius:50%;
	}
	
	.em{
		font-size: 30px;
		color: black;
		font-family: Nosifer;
		
	}
	.emc-color{
		font-family: 'Raleway', sans-serif; 
		color: black
	}
	.pm-color{	
		font-family: 'Raleway', sans-serif;
		color: black
	}
	/* <!-- Styling for Css Section of Footer	--> */
	/* footer{
    	position: absolute;
    	bottom: 0;
    	left: 0;
    	right: 0;
    	background: #111;
    	height: auto;
    	width: 100vw;
    	font-family: "Open Sans";
    	padding-top: 40px;
    	color: #fff;
	} */
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
	
	.marq{
		margin: 30px;
	}	
</style>
</head>
<body>
	<header class="main-header">
		
		

		<div class="nav">
			<a href="home.jsp"> HOME </a>
			<a href="programs.jsp"> MEMBERSHIP </a>
			<a href="contact.jsp"> CONTACT US </a>
			<a href="about.jsp"> ABOUT</a>
			
			<div class="dropdown  btn mt-3">
				<button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
				 Profile
				</button>
				<ul class="dropdown-menu ">
				  
				  <li><button class="dropdown-item" type="button"><a class="p-1" href="" style="text-decoration: none ; background-color: #fffffe; color: black ; font-weight: bold ;">
					<%
					if(session.getAttribute("user")!=null)
					{
						String user=(String)session.getAttribute("user");
						out.println("Welcome " + user);
					}
					else
					{
						response.sendRedirect("index.jsp");
					}
					if(request.getParameter("btn")!=null)
					{
						request.getSession().invalidate();
						response.sendRedirect("index.jsp");

					}
				%>
				
			</a></button></li>
			<li><a href="index.jsp" class="button">	
				<button  type="submit" class="btn-div" name="btn" >Log Out</button>
			
			</a>
			</li>
				</ul>
			  </div>
			


		</div>
		<h1 class="gym-name store-gym-large" font-size: 70px > The Rock Fitness and More </h1>
		
	</header>

		<marquee direction="right" class="marq" scrollamount="15" vspace="40px">
			You can get you Yearly Membership NOW at Just Rs 12000 only !!!
		</marquee>

		<div class="slideshow-container">

		<div class="mySlides fade">
		  <div class="numbertext">1 / 3</div>
		  <img src="slide1.jpg" style="width:100%">
		  <div class="text">A year from now you may wish you had started today.</div>
		</div>

		<div class="mySlides fade">
		  <div class="numbertext">2 / 3</div>
		  <img src="slide2.jpg" style="width:100%">
		  <div class="text">Move your joints every day.</div>
		</div>

		<div class="mySlides fade">
		  <div class="numbertext">3 / 3</div>
		  <img src="slide3.jpg" style="width:100%">
		  <div class="text">The best way to predict the future is to create it.</div>
		</div>

		</div>

		
		<br>

		<div style="text-align:center">
		  <span class="dot"></span> 
		  <span class="dot"></span> 
		  <span class="dot"></span> 
		</div>

		<script>
		let slideIndex = 0;
		showSlides();

		function showSlides() {
  		let i;
  		let slides = document.getElementsByClassName("mySlides");
  		let dots = document.getElementsByClassName("dot");
  		for (i = 0; i < slides.length; i++) {
  		  slides[i].style.display = "none";  
  		}
		  slideIndex++;
		  if (slideIndex > slides.length) {slideIndex = 1}    
		  for (i = 0; i < dots.length; i++) {
		    dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";  
		  dots[slideIndex-1].className += " active";
		  setTimeout(showSlides, 5000); // Change image every 2 seconds
		}
		</script>
		

		<div class="Wrapper">
			<div class="box" >
				<img src="elite.jpeg" alt="">
				<h1 class="em"> Premium Membership </h1>
				<p class="emc-color ">
				-> Fitness Calculator
				<br>
				-> Member Management
				<br>
				-> Starting at Rs 10000 per year
				</p>
			<form method="POST" action="payment.jsp">
			<input type="submit" value="Buy Now" name="btn" class="btn"  />
			</form>

			</div>
			<div class="box">
				<img src="elite.jpeg" alt="">
				<h1 class="em"> Elite Membership </h1>
				<p class="pm-color">
				-> Diet Plan 				<br>
				-> Book Trainer  
				<br>
				-> Fitness Calculator
				<br>
				-> Member Management 

				<br>
				-> Programs Weekly/Monthly
				<br>
				-> Workout Videos
				<br>
				-> Starting at Rs 14000 per year	
				</p>
			<form method="POST" action="payment.jsp">
			<input type="submit" value="Buy Now" name="btn" class="btn" />
			</form>
			</div>
		</div>	
		
		<h1 style="color:Aqua; font-size:50px; text-align: center; " > Available Programs !!! </h1>


	</center>
	<footer>
		<div class="footer-content">
			<h3> Developed By</h3>
			<p> Vedant Kadam & Srinivas Muthukrishnan</p>
			<ul class="socials">
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-github"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin-square  "></i></a></li>
			</ul>
		</div>
		<div class="footer-bottom">
            	<p>copyright &copy;2023 TheRockFitness. designed by <span>Developers</span></p>
        	</div>
	</footer>
	

</body>
<html>




