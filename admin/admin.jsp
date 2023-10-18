<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <link rel="stylesheet" href="style.css" />
    <title>dropdown Menu</title>
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
	background-image: url("adm.jpg");
 
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


</style>
	
		
</head>
<body>

    <div class="menu-bar">
      <h1 class="logo">The Rock<span>Fitness.</span></h1>
      <ul>
        <li><a href="admin.jsp">Home</a></li>
        <li><a href="../about.jsp">About</a></li>
        <li><a href="#">Membership <i class="fas fa-caret-down"></i></a>

            <div class="dropdown-menu">
                <ul>
                  <li><a href="addmember.jsp">Add Members</a></li>
                  <li><a href="view_member.jsp">View/Delete Members</a></li>
                  <li><a href="update_member.jsp">Update Members</a></li>
		<li><a href="view_details.jsp">View Details</a></li>
                </ul>
              </div>
        </li>
        <li><a href="\gym_management_system\index.jsp">Log Out</li></a>
        </li>
      </ul>
    </div>
    

    
  </body>
</html>