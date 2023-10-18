<html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> <!-- for footer --> 

    <title>About Us</title>
    <!-- bootstrap link starts-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>    
<!-- bootstrap link ends-->

	<link rel="stylesheet" href="style.css" />
<style>
	@import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap');
	.main-header{
    	background-color: rgba(0, 0, 0, .6);
    	background-image: linear-gradient(rgba(0,0,0,0.5), transparent),url("hed.jpg");
    	background-blend-mode: multiply;
    	background-size: cover;
    	position: fixed;
  	top: 0;
  	left: 0;
  	width: 100%;
	}
	*{ font-size:18px } 
	
	.btn:hover{ color:yellow; }
	/* .nav {
  		margin-top: 10px;	
		margin-botton: 10px;
	}
	
	.nav a{ color:white; text-decoration:none; margin:40px;}
	.nav a:hover{ background-color: yellow; color: black;} */
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
	
	*{
    margin:0;
    padding: 0;
  
    box-sizing: border-box;
}
body{
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #f1f1f1;
}
.about-section{
    background: url('img/about.jpg') no-repeat left;
    background-size: 55%;
    background-color: #101010;
    overflow: hidden;
    padding: 100px 0;
}
.inner-container{
    width: 55%;
    float: right;
    background-color: #101010;
    padding: 150px;
}
.inner-container h1{
    margin-bottom: 30px;
    color: #f29a80;
    font-size: 30px;
    font-weight: 900;
}
.text{
    font-size: 18px;
    color: #ec5d0a;
    line-height: 30px;
    text-align: justify;
    margin-bottom: 40px;
}
.skills{
    display: flex;
    justify-content: space-between;
    color: #fafa11;
    font-weight: 700;
    font-size: 13px;
}
@media  screen and (max-width:1200px) {
    .inner-container{
        padding: 80px;
    }
}
@media  screen and (max-width:1000px) {
    .about-section{
        background-size: 100%;
        padding: 100px 40px;
    }
    .inner-container{
        width: 100%;
    }
}
@media  screen and (max-width:600px) {
    .about-section{
        padding: 0;
    }
    .inner-container{
        padding: 60px;
    }
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
            
           
            


        </div>
        <h1 class="gym-name store-gym-large" font-size: 70px > The Rock Fitness and More </h1>
       

    </header>
    <div class="about-section">
        <div class="inner-container">
            <h1>About Us</h1>
            <p class="text">
                A Complete Solution for managing Gym Online.
                This is a project Created by Vedant Kadam & Srinivas Konar. 
                The technologies we used for creating this project are Html, Css, Javascript, JSP for the front-end and Mysql and Java for the backend.
                It was a great experiance while creating this Gym Management Project. The best thing was we got implement what we learned in this three years.
                As a Gym's Owner point of View he can generate the report and check on memberships through this Application from any place and time.
                It saves lot of time and work.
            </p>
            <div class="skills">
                <span>KNOWLEDGE</span>
                <span>STRENGTH</span>
                <span>INTEGRITY</span>
            </div>
        </div>
	
    </div>
	
</body>
</html>
