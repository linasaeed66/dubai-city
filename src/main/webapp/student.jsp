<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dubai City - Student</title>
<link rel="stylesheet" href="index.css">
<link rel="stylesheet" href="css/tourism.css">
<script src="js/tourism.js" defer></script>
</head>
<body>
	<nav>
		<div class="nav-links">
			<a href="tourism.jsp">Tourism</a> <a href="student.jsp">Student</a> <a
				href="jobs.jsp">Job applicant</a> <a href="business.jsp">Business</a>
			<a href="jobs.jsp"></a>
		</div>
		<div class="logo">
			<img src="images/mylogo.png" alt="Amazing Thailand Logo">
		</div>
		<a href="#book" class="cta-button">Let's Traveling</a>
		<button class="menu-button">â°</button>
	</nav>

	<main>
		<div class="tabs">

			<input type="radio" id="tab1" name="tab-control" checked> <input
				type="radio" id="tab2" name="tab-control"> <input
				type="radio" id="tab3" name="tab-control"> <input
				type="radio" id="tab4" name="tab-control">
			<ul>
				<li title="Libraries"><label for="tab1" role="button"> <span>Libraries</span></label>
				</li>
				<li title="Coaching Centers"><label for="tab2" role="button">
						<span>Coaching Centers</span>
				</label></li>
				<li title="Universities"><label for="tab3" role="button">
						<span>Universities</span>
				</label></li>
				<li title="colleges"><label for="tab4" role="button"> <span>Colleges</span></label>
				</li>
			</ul>

			<div class="slider">
				<div class="indicator"></div>
			</div>
			<div class="content">
				<section>
					<iframe width="800" height="470" style="border: 0" loading="lazy"
						allowfullscreen
						src="https://www.google.com/maps/embed/v1/search?q=libraries%20in%20dubai&key=AIzaSyD4tAT-uS9hpgHRP_WooiQ9rzBGy4nY1vs"></iframe>

				</section>
				<section>
					<iframe width="800" height="470" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/search?q=coaching%20centers%20near%20Dubai%20-%20United%20Arab%20Emirates&key=AIzaSyD4tAT-uS9hpgHRP_WooiQ9rzBGy4nY1vs"></iframe>

				</section>
				<section>
					<iframe width="800" height="470" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/search?q=universities%20in%20dubai&key=AIzaSyD4tAT-uS9hpgHRP_WooiQ9rzBGy4nY1vs"></iframe>

				</section>
				<section>
					<iframe width="800" height="470" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/search?q=colleges%20in%20dubai&key=AIzaSyD4tAT-uS9hpgHRP_WooiQ9rzBGy4nY1vs"></iframe>

				</section>
			</div>
		</div>
	</main>
</body>
</html>