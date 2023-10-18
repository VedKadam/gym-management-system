<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat" %>

<html>
<head>

</head>
<body>
		
<%
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
			String dateString = "2022-03-03"; // your date string
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			java.util.Date utildate = dateFormat.parse(dateString);
			java.sql.Date sqlDate = new java.sql.Date(utildate.getTime());
			String sql = "insert into demo value(?, ?, ?, ?)";	
			
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, exercise);
			pst.setString(2, diet);
			pst.setString(3, trainer);
			pst.setDate(4, sqlDate);
			pst.executeUpdate();
			out.println("<script>alert('Your session has been booked, Thank you');</script>");
						
			con.close();
			}
			
			catch(Exception e)
			{
			
				out.println("issue " +e);	
			}
		


	%>
</body>
</html>