<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Cormorant+SC:wght@700&family=Wallpoet&display=swap" rel="stylesheet">
	<!-- logo -->
	<link rel="icon" type="image/x-icon" href="logo.png">
    <!-- logo -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> <!-- for footer --> 

<title> Home-Page Module </title>
<link rel="stylesheet" href="style.css" />
<!-- bootstrap link starts-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>    
<!-- bootstrap link ends-->

<style> 
	@import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap');
.maincontainer
{
	width: 350px;
    height: 300px;
    margin:10px;
    float: left; /*stack each div horizontally */
}

.img
{
    padding: 10px;
	border-radius: 10px;
}
.t1{
    font-size:15px;
    padding: 20px;
    color:black;
    
}
.back  p
{
    position: absolute;
    top: 50px;
    font-size: 10px;
}

/* style the maincontainer class with all child div's of class .front */
.maincontainer > .front
{
   
    transform: perspective(600px) rotateY(0deg);
    background-color:#FFA500;
     width: 350px;
    height: 300px;
    border: 1px black solid;
   border-radius: 10px;
    backface-visibility: hidden; /* cant see the backside elements as theyre turning around */
    transition: transform .5s linear 0s;
}

/* style the maincontainer class with all child div's of class .back */
.maincontainer > .back
{
    position: absolute;
    transform: perspective(600px) rotateY(180deg);
    background: black;
    color: #fff;
	width: 350px;
    height: 300px;
    border-radius: 10px;
    padding: 5px;
    backface-visibility: hidden; /* cant see the backside elements as theyre turning around */
    transition: transform .5s linear 0s;
}

.maincontainer:hover > .front
{
    transform: perspective(600px) rotateY(-180deg);
}

.maincontainer:hover > .back
{
    transform: perspective(600px) rotateY(0deg);
}


           html, body{
 	   margin: 0;
 	   padding: 0;
	}
	
	.main-header1{
    	background-color: rgba(0, 0, 0, .6);
    	background-image: url("bg3.jpg");
    	background-blend-mode: multiply;
    	background-size: 1535px 215px;
	background-repeat: no-repeat;
    	/* padding-bottom: 30px; */
		/* margin-left: 30px; */
	}
	
	*{ font-size:18px } 
	body { background-image: url('fadedblack.jpg');
  		background-repeat: no-repeat;
 		background-attachment: fixed;
		background-size: cover;
		
	}
	
	/* .btn{ background-color:red; color:white; border-radius:20px; min-height:30px; min-width: 120px;  } */
	.btn:hover{ color: #FFA500; }
	
	.nav a{ color:white;  
		margin:20px;
		text-decoration: none;
		font-family: Raleway;
		
	}
	.nav{
		text-align: center;
		padding-left: 500px;
		background: linear-gradient(rgba(0,0,0,20), transparent),url('');
        	background-blend-mode: multiply;
        	background-size: cover;
	}
	.nav a:hover{ background-color: #FFA500 ; color: black;}
		
	.btn-div{
		display:inline-block;
		
		background-color: white;
		color: blue;
 		border: 2px solid #967bab;	
		cursor: pointer;
		text-align: center;

	}
	.btn-div:hover{
		background-color: #FFA500;
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
	 margin: 0px;
        padding: 0px;
        background: linear-gradient(rgba(0,0,0,0.5), transparent),url('img/hed.jpg');
        background-blend-mode: multiply;
        background-size: cover;
        padding-bottom: 30px;
	}
	.gym-name {
		color:#FFA500;
	} 
	.ht1{
		font-size: 6em;
    		font-family: Arial, Helvetica, sans-serif;
    		font-weight: normal;
 	   	color: white;
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
	.text-color{
		color: #FFA500 ;
	}
	/* <!-- Styling for Css Section of Footer Ends Here  --> */

		
</style>
</head>
<body>	
	<center>  	
	<header class="main-header1">
		
		

		<div class="nav">
			<a href="home.jsp"> HOME </a>
			<a href="programs.jsp"> MEMBERSHIP </a>
			<a href="contact.jsp"> CONTACT US </a>
			<a href="about.jsp"> ABOUT</a>
			
			<div class="dropdown  btn">
				<button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
				 Profile
				</button>
				<ul class="dropdown-menu">
				  
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
	
	</center>
	<div class="container-fluid bg-dark">
		<br>
	<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
		<div class="carousel-inner">
		  <div class="carousel-item active">
			<img src="img/slider1.jpeg" class="d-block w-100" height="500px" width="1200px" alt="..." >
		  </div>
		  <div class="carousel-item">
			<img src="img/slider2.jpg" class="d-block w-100" height="500px" width="1200px" alt="...">
		  </div>
		  <div class="carousel-item">
			<img src="img/slider3.jpg" class="d-block w-100" height="500px" width="1200px" alt="...">
		  </div>
		</div>
		<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
		  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		  <span class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
		  <span class="carousel-control-next-icon" aria-hidden="true"></span>
		  <span class="visually-hidden">Next</span>
		</button>
	  </div>
	  <br>
	</div>
	<div class="container-fluid " style="background-color:#FFA500 ;">
        <div class="row text-center">
            <div class="col-sm-12 col-xl-6 p-5">
				<div class="py-5 m-5">
				<h1 class="">Why do we do fitness?</h1>
				<h6>Regular physical activity is one of the most important things you can do for your health. Being physically active can improve your brain health, help manage weight, reduce the risk of disease, strengthen bones and muscles, and improve your ability to do everyday activities.
				</h6>
				</div>
            </div>
            <div class="col-sm-12 col-xl-6 p-3">
                <img src="img/header.jpeg" alt="header" class="rounded"style="
				width: 600px;
			">
            </div>
        </div>
    </div>
 
	<div class="container-fluid bg-dark " >
		<div class="row ">
			<div class="col-lg-12 col-12 text-center">
				<h2 class="text-light mb-4 " style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: 50px;">Special Training</h2>
			</div>
		  <div class="row justify-content-between">
		  <div class="maincontainer col-lg-4 col-md-4 col-xs-12 col-sm-12">
			   <div class="back ">
					<div class="t1 text-color">Its time to roll out your yoga mat and discover the combination of physical and mental exercises that for thousands of years have hooked yoga practitioners around the globe. The beauty of yoga is that you dont have to be a yogi or yogini to reap the benefits. Whether you are young or old, overweight or fit, yoga has the power to calm the mind and strengthen the body. Dont be intimidated by yoga terminology, fancy yoga studios and complicated poses. Yoga is for everyone.</div>
			   </div>
			  <div class="front">
					<div class="img mx-auto d-block py-2" >
						<img src="img/yoga.jpg" class="img mx-auto d-block " style=" border-radius: 10px;" height="250px" width="300px" alt="">
						<p class="text-center ">Yoga</p>
					</div>                         
			  </div>  
		 </div>
		  <div class="maincontainer col-lg-4 col-md-4 col-xs-12 col-sm-12">
			   <div class="back">
					<div class="t1 text-color">Kickboxing is a form of martial art that involves punching, kicking, and footwork. The sport incorporates moves from other types of martial arts, such as karate, as well as boxing.</div>
			   </div>
			  <div class="front">
					<div class="img mx-auto d-block py-2" >
						<img src="img/kickboxing.jpg" class="img mx-auto d-block " height="250px" width="300px"alt="">
						<p class="text-center">Kickboxing</p>
					</div>                         
			  </div>
		 </div>
		 <div class="maincontainer col-lg-4 col-md-4 col-xs-12 col-sm-12">
			   <div class="back">
					<div class="t1 text-color">A form of high intensity interval training, CrossFit is a strength and conditioning workout that is made up of functional movement performed at a high intensity level. These movements are actions that you perform in your day-to-day life, like squatting, pulling, pushing etc</div>
			   </div>
			  <div class="front">
					<div class="img mx-auto d-block py-2" >
						<img src="img/crossfit.jpg" class=" img mx-auto d-block " height="250px" width="300px" alt="">
						<p class="text-center">Crossfit<p>
					</div>
			  </div>
		 </div>
		 </div>
		</div>
	</div>

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
</html>
