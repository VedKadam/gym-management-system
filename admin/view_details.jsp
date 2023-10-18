<%@ page import="java.sql.*" %>

<%
	if(request.getParameter("firstname")!=null)
	{
		try
		{
		DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
		String url="jdbc:mysql://localhost:3306/vc24sep22";
		String un="root";
		String pw="abc123";
		Connection con = DriverManager.getConnection(url, un, pw);
		String sql="delete from details where firstname=?";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, (request.getParameter("firstname")));
		pst.executeUpdate();
		con.close();
		}
		catch(SQLException e)
		{
			out.println("issue" + e);
		}		
	}
%>


<html lang="en">
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
	
	<h1> View Members </h1>
		<table border=4 style="width:60%;">
			<tr>
        <th>id</th>
				<th> firstname </th>
				<th> lastname </th>
				<th> email </th>
				<th> location </th>
				<th> height </th>
				<th> weight </th>
				<th> d_id </th>
			</tr>
		<%	
			try
			{
				DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
				String url="jdbc:mysql://localhost:3306/vc24sep22";
				String un="root";
				String pw="abc123";
				Connection con = DriverManager.getConnection(url, un, pw);
				String sql="select * from details";
				PreparedStatement pst = con.prepareStatement(sql);
				ResultSet rs = pst.executeQuery();
				while(rs.next())
				{
         				String firstname = rs.getString(1);
					String lastname = rs.getString(2);
					String email = rs.getString(3);
					String location = rs.getString(4);
					int weight = rs.getInt(5);
					int height = rs.getInt(6);
					int d_id= rs.getInt(7);

		%>

				<tr style="text-align:center;">
					<td><%= d_id%></td>
         
					<td><%= firstname%></td>
					<td><%= lastname%></td>
					<td><%= email%></td>
					<td><%= location%></td>
					<td><%= weight%></td>
					<td><%= height%></td>
					<td> <a href="?firstname=<%=firstname%>"
				onclick="return confirm('Are you sure ???')"> <button> Delete </button> </a></td>
				</tr>
		<%
				}
				con.close();
			}
			catch(SQLException e)
			{
				out.println("issue" + e);
			}
		
		%>
		</table>
	</center>

  </body>
</html>