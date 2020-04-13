<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="titan.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
	<meta name="description" content="python music player  program by tkinter and pygame .">
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
 
    <meta name="author" content="purushottam gupta">
	<meta name = "viewport" content = "width-device-width ,initial-scale = 1">
	<link rel="stylesheet" type="text/css" href="index.css">
    
    
	<link rel="shortcut icon" href="top3.png" type="top3">

    
    
	<script src="jquery-3.4.1.js"></script>
	<style type="text/css">
		.color{
		color:tomato;
		}
	</style>
    </head>
	<body data-spy="scroll" id = "bo" onload="puru()">
	<div  id = "prload" class = "prel" >
	<div class = "lal"><h1><br/>Escape </h1></div>
       </div>
       <div class = "banner" id = "home" >
			<div  class="bcont"><img class = "pht" src = "photo6.jpg">
				<div class = "bl">
				<div class = "banner-content">
                    <div class = "pho">
                     <img class="mySlides" src="gmail1.png" >
                     <!-- <img class="mySlides" src="jok.jpg">-->
                       <img class="mySlides" src="gmail2.jpg">
                        <!--<img class="mySlides" src="329544.jpg" >-->
					</div>
                    <div id ="overview">
                    <h1 id ="escape"><span>Escape</span></h1>
					<h1><span>Tour    and    Travels</span></h1>
					<br/>
					<br/>
                    <h2>Welcome</h2>
					<br/>

					<p>Escape Tour and Travells provide you  the  best package for your trip and Holiday <br/>
					 We understand You we provide you best exprience plan  according to Your Budget We Belive 
				</br>In customer Satification So  keep travelling and remember us .  
				</p>
                    </div>
				</div>
		
				</div>
		</div>
		</div>
    <header id = "nav">
			<div class = "top"></div>
			<div class = "hdr">
			<h1>Escape</h1>
		</div>
			<nav>
				<div class = "bar">
					<div class = "button" id = "bt1" onclick ="popup()">
						<li></li>
						<li></li>
						<li></li>
					</div>
					<div class="can">cancel</div>
				</div>
			<div class = "bar-content" >
				<li class="part1"><a href="#home">home</a></li>
				<li class="part2"><a href="#vehical">services</a></li>
				<li class="part3"><a href="#places">Places</a></li>
				<li class="part4"><a href="#contact">contact</a></li>
                <li class="part4"><a href="start.aspx">sign In</a></li>
			</div>

			</nav>
			<div class = "bar-content2" id = "bc">
				<li class="part1"><a href="#home">home</a></li>
				<li class="part2"><a href="#vehical">services</a></li>
				<li class="part3"><a href="#places">places</a></li>
				<li class="part4"><a href="#contact">contact</a></li>
                <li class="part4"><a href="start.aspx">sign In </a></li>
				
		</div>
	</header>
        <h1 id ="place">Beautifull places</h1>
        <br />
        <br />
        <div id ="services">

        </div>
        <div id ="places">
			<div class="row">
				<div class="column">
					<div class="single-team-member">
						<div class="family-img">
							<img class="img-fluid" onclick ="place()" src="mumbai.jpg" alt="" />
						</div>
						<div class="family-info">
							<h4>MUMBAI </h4>
							<p>{ The city of Dreams }</p>
						</div>
					</div>
				</div>
				<div class="column">
					<div class="single-team-member">
						<div class="family-img">
							<img class="img-fluid" onclick ="place()" src="delhi.jpg" alt="" />
						</div>
						<div class="family-info">
							<h4>DELHI</h4>
							<p>{ Masterpiece of Architecture }</p>
						</div>
					</div>
				</div>
				<div class="column">
					<div class="single-team-member">
						<div class="family-img">
							<img class="img-fluid"  onclick ="place()" src="varanasi.jpg" alt="" />
						</div>
						<div class="family-info">
							<h4>VARANASI</h4>
							<p>{  place for Hindunism  }</p>
						</div>
					</div>
				</div>
				<div class="column">
					<div class="single-team-member">
						<div class="family-img">
							<img class="img-fluid" onclick ="place()" src="rishikesh.jpg" alt="" />
						</div>
						<div class="family-info">
							<h4>RISHIKESH</h4>
							<p>{ The Holy place }</p>
						</div>
					</div>
				</div>
				<div class="column">
					<div class="single-team-member">
						<div class="family-img">
							<img class="img-fluid" onclick ="place()" src="karnataka.jpg" alt="" />
						</div>
						<div class="family-info">
							<h4>karnataka</h4>
							<p>{ Beautifull place by  nature }</p>
						</div>
					</div>
				</div>
				<div class="column">
					<div class="single-team-member">
						<div class="family-img">
							<img class="img-fluid" onclick ="place()" src="rajasthan.jpg" alt="" />
						</div>
						<div class="family-info">
							<h4>rajasthan</h4>
							<p>{ The Royal place}</p>
						</div>
					</div>
				</div>
			</div>
		</div>
        <!------------------- vahical----------------------------------->
        <div id ="vehical">
            <h1>Services</h1>
			<div class="row1">
				<div class="column1">
					<div class="vahical-body">
						<div class="vahical-img">
							<img class="img-fluid" ondblclick ="service()" src="train.jpg" alt="" />
						</div>
						<div class="vahical-info">
							<h4>TRAIN</h4>
						</div>
					</div>
				</div>
                <div class="column1">
					<div class="vahical-body">
						<div class="vahical-img">
							<img class="img-fluid" ondblclick ="service()" src="bus.jpg" alt="" />
						</div>
						<div class="vahical-info">
							<h4>BUS</h4>
						</div>
					</div>
				</div>
                <div class="column1">
					<div class="vahical-body">
						<div class="vahical-img">
							<img class="img-fluid" ondblclick ="service()" src="airplan.jpg" alt="" />
						</div>
						<div class="vahical-info">
							<h4>AIRPLAN</h4>
						</div>
					</div>
				</div>
                <div class="column1">
					<div class="vahical-body">
						<div class="vahical-img">
							<img class="img-fluid"  ondblclick ="service()" src="car.jpg" alt="" />
						</div>
						<div class="vahical-info">
							<h4>CAR</h4>
						</div>
					</div>
				</div>
				
				
			</div>
		</div>
        
		<footer id = "contact">
			<div class="dark">
				<div class = "right">
					<div class = "pr">
					<li>contact us </li>
					<li>gmail </li>
					<li>guptron1@gmail.com</li>
					<li>tel - 8291531908 </li>
					<li>location</li>
					<li>mahakali mandir</li>
					<li>bastiwala compaound</li>
					<li>shuprabhat society </li>
					<li>  tel - 8291531908 </li>
					<li>thank you </li>
					
					</div>
				</div>
					<div class="left">
						<div class = "pl">
					<li>Developed by:</li>
					<li>Purushottam, Amaan, Akash Main</li>
					<li>Ayush, Vaibhav, Akash Pawar</li>
					<li>Sakib, Swapnil Patel, Tanveer</li>
					<li>Shashank, Swapnil Kurane</li>
					<li>Rameshwar,Dipesh,Rohit Prasad</li>
					</div>
					</div>
                </body>

<script type="text/javascript">
		function puru(){
			var x = document.getElementById("prload");
			x.style.display = "none" ;
		}
		function place() {
		    window.location.href = "places.aspx";
		}
		function service() {
		    window.location.href = "service.aspx";
		}



		function popup(){
			var g = document.getElementById("bc");
			if(g.style.display == "block")
			{
			
			g.style.display = "none";
		}
		else{
			g.style.display = "block" ;
		}

		}
	
	

	$(document).ready(function(){

	$(window).scroll(function(){
		var s  = $(window).scrollTop(),
		d = $(document).height(),
		c = $(window).height();

		scrollperent = (s/(d-c))*100;
		var p = (scrollperent);
		$(".top").css("width",(p)+"%");
		/*$("#pro").attr('value',p);*/

	});
	$(window).scroll(function(){
		if($(window).scrollTop() >= $("header").outerHeight()){
			$("header").css("position","fixed");


		}
		else if($(window).scrollTop() <= $("header").outerHeight()){
			$("header").css("position","absolute");
		};
		if($(window).scrollTop() >= $("#").outerHeight()){
			$(".part2").css("color","white")
		}

		
		
		

		});
	$(document).ready(function(){
		$(window).hide();

	});
	/*$(".bar").click(function(){
		if ($(".bar-content2").hide()){
			$(".bar-content2").show();
			
		}
		else{
			$(".bar-content2").hide();

		}
		/*$(".bar").click(function(){
		if ($(".bar-content2").show()){
			$(".bar-content2").hide();
			
		}
	});
		
		});*/



	});
	var slideIndex = 0;
	showDivs();

	function plusDivs(n) {
	    showDivs(slideIndex += n);
	}

	function showDivs() {
	    var i;
	    var x = document.getElementsByClassName("mySlides");
	    for (i = 0; i < x.length; i++) {
	        x[i].style.display = "none";
	    }
	    slideIndex++;
	    if (slideIndex > x.length) { slideIndex = 1 }
	    x[slideIndex - 1].style.display = "block";
	    setTimeout(showDivs, 2000);

	}

    </script>
	
</html>

