<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="assets/css/style.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="assets/css/responsive.css"
	media="screen" />
</head>

<script type="text/javascript">
	setTimeout(function() {
		if (location.hash) {
			window.scrollTo(0, 0);
		}
	}, 1);
</script>
<body>
	<div class="w3-center">
		
			<div style="float: left; width: auto;">
				<span style="font: bold; font-size: 16px;font-family:serif; ">Page Number</span>
				<button class="w3-btn demo" onclick="currentDiv(1)">1</button>
				<button class="w3-btn demo" onclick="currentDiv(2)">2</button>
				<button class="w3-btn demo" onclick="currentDiv(3)">3</button>
				<button class="w3-btn demo" onclick="currentDiv(4)">4</button>
			
			</div>
			<div style="float: right;">
				<a href="www.pdf.com/paperpdf/11.pdf " target="_blank"><button
						class="w3-btn demo">Pdf</button> </a>

			</div>
		
	</div>


	<div class="w3-content">

		<img class="mySlides" src="images/page/home/1.jpg" style="width: 100%">
		<img class="mySlides" src="images/page/home/2.jpg" style="width: 100%">
		<img class="mySlides" src="images/page/home/3.jpg" style="width: 100%">
		<img class="mySlides" src="images/page/home/4.jpg"
			style="width: 100%;">
	</div>
	<script>
		var slideIndex = 1;
		showDivs(slideIndex);

		function plusDivs(n) {
			showDivs(slideIndex += n);
		}

		function currentDiv(n) {
			showDivs(slideIndex = n);
		}
		function showDivs(n) {
			var i;
			var x = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("demo");
			if (n > x.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = x.length
			}
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" w3-red", "");
			}
			x[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " w3-red";
		}
	</script>

	<script>
		//Note: this script should be placed at the bottom of the page, or after the slider markup. It cannot be placed in the head section of the page.
		var thumbs1 = document.getElementById("w3-center");
		var thumbs2 = document.getElementById("w3-content");
		var closeBtn = document.getElementById("closeBtn");
		var slides = thumbs1.getElementsByTagName("li");
		for (var i = 0; i < slides.length; i++) {
			slides[i].index = i;
			slides[i].onclick = function(e) {
				var li = this;
				var clickedEnlargeBtn = false;
				if (e.offsetX > 220 && e.offsetY < 25)
					clickedEnlargeBtn = true;
				if (li.className.indexOf("active") != -1 || clickedEnlargeBtn) {
					thumbs2.style.display = "block";
					mcThumbs2.init(li.index);
				}
			};
		}

		thumbs2.onclick = closeBtn.onclick = function(e) {
			//This event will be triggered only when clicking the area outside the thumbs or clicking the CLOSE button
			thumbs2.style.display = "none";
		};
	</script>
</body>
</html>