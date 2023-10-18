<html>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>About Us</title>
    <meta charset="UTF-8" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="Pragma" content="no-cache" />
	<meta http-equiv="Expires" content="-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <link rel="stylesheet" href="style.css" />

	<link rel="stylesheet" href="style.css" />
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
 
}

.about-section{
    background: url('../img/about.jpg') no-repeat left;
    background-size: 55%;
    background-color: #101010;
    overflow: hidden;
    padding: 100px 0;
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
.gym-name{
		 text-align: center;
    		margin: 0;  
    		font-size: 4em;
    		font-family: "Bebas Neue";
    		font-weight: normal;
 	   	color: #d24803;
        text-decoration: none;
	}
	.gym-name-large{
    	font-size: 4em;
	}
	
	*{
    margin:0;
    padding: 0;
  
    box-sizing: border-box;
}


	</style>
	
	<script type="text/javascript">  
		if(performance.navigation.type == 2){
   		location.reload(true);
	}
  	</script>
	
</head>
<body>
	<header class="main-header">
        <div class="menu-bar">
            <h1 class="logo">The Rock<span>Fitness.</span></h1>
            <ul>
              <li><a href="admin.jsp">Home</a></li>
              <li><a href="about.jsp">About</a></li>
              <li><a href="#">Membership <i class="fas fa-caret-down"></i></a>
      
                  <div class="dropdown-menu">
                      <ul>
                        <li><a href="addmember.jsp">Add Members</a></li>
                        <li><a href="view_member.jsp">View Members</a></li>
                        
                        <li><a href="update_member.jsp">Update Members</a></li>
                      </ul>
                    </div>
              </li>
              <li><a href="\gym_management_system\index.jsp">Log Out</li>
              </li>
            </ul>
          </div>
       
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
