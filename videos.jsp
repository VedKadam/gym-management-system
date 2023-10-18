<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> <!-- for footer --> 

    <title>Video Dashboard</title>
	<!-- bootstrap link starts-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>    
<!-- bootstrap link ends-->

    <style>
        header {
            background-color: black;
		text-align: center;
            color: #ff5733;
            padding: 20px;
        }
	body{
		background-color: black;
		color: #ff5733;
	}
        
        /* nav styles */
        nav {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: black;
            padding: 10px;
        }
	
	nav.category {
  	display: flex;
	background-color: black;
  	margin-bottom: 20px;
	}
	.category-button {
  	position: relative;
  	padding-bottom: 10px;
  	margin-right: 20px;
  	border: none;
  	background-color: transparent;
  	color: #555;
  	font-size: 16px;
  	font-weight: bold;
  	cursor: pointer;
	}

	.category-button::before {
  	content: '';
  	position: absolute;
  	left: 0;
  	right: 0;
  	bottom: 0;
  	height: var(--border-size);
  	background-color: var(--accent-color);
  	transition: transform 300ms ease-in-out;
  	transform: scaleX(0);
	}

	.category-button:hover::before,
	.category-button:focus::before {
  	transform: scaleX(1);
	}

	.active {
  	color: var(--accent-color);
	}	
	nav.category .category-button {
	border-radius: 5px; /* change the border radius to make the button rounder */
	padding: 10px;
  	margin-right: 20px;
	}
	
        ul {
		list-style-type: none;
            	display: flex;
        }
        
        li {
            margin-right: 10px;
        }
        
        a {
            text-decoration: none;
            color: #333;
            padding: 5px 10px;
        }
        .active {
            font-weight: bold;
        }
        
        /* main styles */
        main {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            grid-gap: 20px;
            margin: 20px;
        }
        
        article {
            border: 1px solid black;
		
  	 box-shadow: 0 0 10px orange;
            padding: 10px;
            text-align: center;
        }        
        h2 {
            margin-top: 0;
        }
        a {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            display: inline-block;
            margin-top: 10px;
            text-decoration: none;
        }  
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
    
    </style>
</head>
<body>
    <header>
        <h1>Workout Videos</h1>
    </header>
    <nav>
        <ul>
            <li><a href="homepage1.jsp">Home</a></li>
            <li><a href="videos.jsp">Videos</a></li>
			<%
			if(session.getAttribute("elite")!=null)
			{
				String user=(String)session.getAttribute("elite");
				
			}
			else
			{
				response.sendRedirect("index.jsp");
			}
			if(request.getParameter("btn")!=null)
			{
				session.invalidate();
				response.sendRedirect("index.jsp");

			}
		%>
        </ul>
    </nav>
    <nav class="category">
        <button class="category-button active" data-category="all">All</button>
        <button class="category-button" data-category="yoga">Yoga</button>
        <button class="category-button" data-category="strength">Strength Training</button>
        <button class="category-button" data-category="weight">Weight Loss</button>
    </nav>
    <main>
        <article data-category="yoga all">
            <h2>Yoga for Beginners</h2>
            <p>This video teaches basic yoga poses and breathing techniques.</p>
            <a href="img/workout-1.mp4">Watch Video</a>
        </article>
        <article data-category="strength all">
            <h2>Full Body Strength Training</h2>
            <p>This video focuses on building strength and muscle tone throughout the body.</p>
            <a href="img/workout-3.mp4">Watch Video</a>
        </article>
        <article data-category="all weight">
            <h2>Weight Loss Tips</h2>
            <p>This video provides helpful tips for losing weight through diet and exercise.</p>
            <a href="img/workout-2.mp4">Watch Video</a>
        </article>
        <!-- additional articles here -->
    </main>

    <script>
        const buttons = document.querySelectorAll('.category-button');
        const articles = document.querySelectorAll('article');

        // filter articles by category and show/hide them accordingly
        function filterArticles(category) {
            articles.forEach(article => {
                const categories = article.getAttribute('data-category').split(' ');
                if (categories.includes(category) || category === 'all') {
                    article.style.display = 'block';
                } else {
                    article.style.display = 'none';
                }
            });
        }

        // add click event listeners to category buttons
        buttons.forEach(button => {
            button.addEventListener('click', () => {
                // remove active class from all buttons
                buttons.forEach(btn => btn.classList.remove('active'));
                // add active class to clicked button
                button.classList.add('active');
                // filter articles by category
                filterArticles(button.getAttribute('data-category'));
            });
        });
    </script>

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
