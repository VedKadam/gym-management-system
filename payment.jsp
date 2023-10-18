<!DOCTYPE html>
<html>
<head>
	<title>Payment Page</title>
	<style>
		body {
			background-color: #f2f2f2;
			font-family: Arial, sans-serif;
		}

		.container {
			max-width: 800px;
			margin: 0 auto;
			padding: 50px 20px;
			background-color: #fff;
			border-radius: 5px;
			box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
		}

		.form-group {
			margin-bottom: 20px;
		}

		label {
			display: block;
			font-size: 14px;
			font-weight: bold;
			margin-bottom: 5px;
		}

		input[type="text"], input[type="email"], input[type="number"], select {
			display: block;
			width: 100%;
			padding: 10px;
			border: 1px solid #ccc;
			border-radius: 3px;
			font-size: 16px;
			box-sizing: border-box;
		}

		select {
			height: 40px;
		}

		input[type="submit"] {
			background-color: #ff6b6b;
			color: #fff;
			border: none;
			padding: 10px 20px;
			font-size: 18px;
			border-radius: 3px;
			cursor: pointer;
		}

		input[type="submit"]:hover {
			background-color: #ff4c4c;
		}

		.payment-methods {
			margin-top: 30px;
			display: flex;
			justify-content: center;
			align-items: center;
		}

		.payment-methods img {
			height: 60px;
			margin-right: 20px;
			cursor: pointer;
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>Payment Details</h1>
		<form method="POST">
			<div class="form-group">
				<label for="name">Full Name</label>
				<input type="text" id="name" name="name" required>
			</div>
			<div class="form-group">
				<label for="email">Email Address</label>
				<input type="email" id="email" name="email" required>
			</div>
			<div class="form-group">
				<label for="phone">Phone Number</label>
				<input type="number" id="phone" name="phone" required>
			</div>
			<div class="form-group">
				<label for="payment-method">Payment Method</label>
				<select id="payment-method" name="payment-method" required>
					<option value="gpay">Gpay</option>
				</select>
			</div>
			<div class="payment-methods">
				<img src="gpay-logo1.png" alt="Google-Pay" >
			</div>
			
			<div class="payment-methods">
    				<img src="gpay-logo1.png" alt="Google-Pay" >
    				<img src="qr.jpeg" alt="QR Code" style="width: 400px; height: 400px;">
			</div>
			
		<input type="submit" value="Submit Payment">
	</form>
</div>
</body>
</html>
