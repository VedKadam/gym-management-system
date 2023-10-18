<%@ page import="java.sql.*" %>
<%@ page import="java.util.regex.Pattern" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.InternetAddress.*" %>


<html>
<head>
<title> Sign-Up Module by Vedant </title>
<style> *{ font-size:30px } 
	body { background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ),url('123.jpg');
  		background-repeat: no-repeat;
 		background-attachment: fixed;
		background-size: cover;
	}
	.btn{ background-color:orange; color:white; border-radius:20px; min-height:30px; 
    min-width: 120px; }
	.btn:hover{ color:yellow; }
	h1{ font-family: Ok-Esport; 
		color: #e19e3b; }
	h2{
		color: #e19e3b;
	}
	.nav a:hover{ background-color: red;}

	input[type="text"],
	input[type="password"] {
  		border: none;
  		border-radius: 10px;
  		padding: 10px;
  		background-color: #f2f2f2;
  		font-size: 16px;
  		width: 300px;
  		margin-bottom: 10px;
  		box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
  		outline: none;
	}
	input[type="submit"] {
  		border: none;
  		border-radius: 10px;
  		padding: 10px 20px;
  		background-color: #4CAF50;
  		color: white;
  		font-size: 16px;
  		cursor: pointer;
  		box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
	}
	input[type="submit"]:hover {
  		background-color: #3e8e41;
	}
	.btnlogin{
		color: #e19e3b;
	}
	input:focus {
  	background-color: #e6e6e6;
	}
</style>
</head>
<body>
	<center> 
		<h1 style="font-family: 'Wallpoet', cursive; font-size: 50px; "> The Rock Fitness & More </h1>
		<h2> Sign Up Page </h2>
		<form method="POST">
	<input type="text" name="un" placeholder="Enter Username" />
		<br/>	<br/>
	<input type="text" name="em" placeholder="Enter Email" />
		<br/>	<br/>
	<input type="password" name="pw1" placeholder="Enter Password" title="password must contain a special character, number and Capital letter"/>
		<br/> 	<br/>
	<input type="password" name="pw2" placeholder="Enter Confirm Password" title="password must contain a special character, number and Capital letter" />
		<br/> 	<br/>

		<input type="submit" value="Register" name="btn" class="btn" />
		</form>
		<a class="btnlogin" href="index.jsp"> Login </a>
		<br/>
	<%
		
	if(request.getParameter("btn")!=null)
	{
		String username=request.getParameter("un");
		String email=request.getParameter("em");
		String password1=request.getParameter("pw1");
		String password2=request.getParameter("pw2");
		if(!password1.equals(password2))
		{
			out.println("<script>alert('Password does not match');</script>");
			return;
		}

		String PASSWORD_PATTERN = "^(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$";
   	 	if (!Pattern.compile(PASSWORD_PATTERN).matcher(password1).matches()) {
			out.println("<script type='text/javascript'>");
        		out.println("alert('password must be at least 8 characters long and contain at least 1 number and 1 special character');");
        		out.println("</script>");
        		return;
        		
    		}
	
		try
		{
			 InternetAddress emailAddr = new InternetAddress(email);
    			emailAddr.validate();
			
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			String url="jdbc:mysql://localhost:3306/vc24sep22";
			String un="root";
			String pw="abc123";
			Connection con = DriverManager.getConnection(url, un, pw);
			String sql="insert into users (username, password, email) values(?, ?, ?)";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, username);
			pst.setString(2, password1);
			pst.setString(3, email);
			pst.executeUpdate();

			// mail kaha se aayega
			Properties p = System.getProperties();
			p.put("mail.smtp.host", "smtp.gmail.com");
			p.put("mail.smtp.port", 587);
			p.put("mail.smtp.auth", true);
			p.put("mail.smtp.starttls.enable", true);

			//aapka un and pw authentication
			Session ms=Session.getInstance(p, new Authenticator(){
				public PasswordAuthentication getPasswordAuthentication() {
					String un="vedantentidigital@gmail.com";
					String pw="ydrfjxmctluprihs";
					return new PasswordAuthentication(un, pw);
				}
			});
			try
			{
				// mail ko draft karke bhejo
				MimeMessage msg= new MimeMessage(ms);
				String subject="Welcome to our Service " + username;
				msg.setSubject(subject);
				String txt="Welcome to the rock fitness " + username;
				msg.setText(txt);
				msg.setFrom(new InternetAddress("vedantentidigital@gmail.com"));
				msg.addRecipient(Message.RecipientType.TO,new InternetAddress(email));
				Transport.send(msg);
			}
			

			catch(Exception e)
			{
				out.println("issue-->"+e);
				throw new RuntimeException(e);
			}
			    
			response.sendRedirect("index.jsp");
			con.close();
		}
		catch(SQLException e)
		{
			out.println("issue " + e);
			out.println("<script type='text/javascript'>");
        		out.println("alert('issue " + e + "');");
        		out.println("</script>");
		}
		catch (AddressException ex) {
    			out.println("<script type='text/javascript'>");
    			out.println("alert('Please enter a valid email address');");
    			out.println("</script>");
    			return;
		}
		catch(Throwable e)
		{
			out.println("issue " + e);
			out.println("<script type='text/javascript'>");
        		out.println("alert('issue " + e + "');");
        		out.println("</script>");
		}
	}			


	%>
</center>
</body>
</html>
