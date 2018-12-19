<%@ page import="cn.uoiah.td.bean.Resume"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang=zh-cmn-Hans>
<head>
	<title>KNIT - Creative Personal Portfolio Template</title>
	<meta charset="UTF-8">
	<meta name="description" content="Knit creative personal portfolio template">
	<meta name="keywords" content="knit, creative, personal, portfolio, template">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="img/favicon.png" rel="shortcut icon"/>

	<!-- Google Fonts 
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
	-->
	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/themify-icons.css"/>
	<link rel="stylesheet" href="css/style.css"/>

	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>

	<!-- Header section start -->
	<header class="header-section">
		<div class="container">
			<div class="header-warp">
				<!-- Site Logo -->
				<a href="#" class="site-logo">
					<img src="img/logo.png" alt="">
				</a>
				<!-- Site Menu -->
				<div class="responsive-switch"><i class="fa fa-bars"></i></div>
				<nav class="site-menu">
					<div class="sm-close"><i class="ti-close"></i></div>
					<ul class="menu-list">
						<li><a href="index.html">首页</a></li>
						<li><a href="#about">关于</a></li>
						<li><a href="#resume">简历</a></li>
						<li><a href="#works">项目</a></li>
						<li><a href="toContact">采集</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<!-- Header section end -->



	<!-- Resume section start -->
	<%
		Resume r = (Resume)request.getAttribute("resume"); 
		String favs = r.getFavs();
		String fav = "";
		String[] favarr = favs.split(",");
		for(String f : favarr){
			if(f.equals("art")){
				fav += "," + "文艺";
			}
			else if(f.equals("athl")){
				fav += "," + "运动";
			}
			else if(f.equals("food")){
				fav += "," + "美食";		
			}
			else{
				fav += "," + "其它";
			}
		}
		fav = fav.substring(1);
		String gender = r.getGender();
		if(gender.equals("M")){
			gender = "男";
		}
		else{
			gender = "女";
		}
		String subject = r.getSubject();
		if(subject.equals("0")){
			subject = "文学";
		}
		else if(subject.equals("1")){
			subject = "理学";
		}
		else if(subject.equals("2")){
			subject = "工学";
		}
		else if(subject.equals("3")){
			subject = "农学";
		}
		else if(subject.equals("4")){
			subject = "医学";
		}
		else{
			subject = "未填写";
		}
	
	%>
	<section class="resume-section spad" id="resume">
		<div class="container">
			<div class="section-title">
				<p>Resume</p>
				<h2>个人简历</h2>
			</div>
			<div class="row">
				<div class="col-lg-10 col-xl-9 offset-lg-2 offset-xl-2">
					<!-- Review item -->
					<div class="resume-item wow fadeInUp" data-wow-delay="0.2s">
						<div class="resume-year">
							<h2>姓名：</h2>
						</div>
						<div class="resume-text">
							<h3><%=r.getName() %></h3>
							<p>性别：<%=gender %></p>
						</div>
					</div>
					<!-- Review item -->
					<div class="resume-item wow fadeInUp" data-wow-delay="0.4s">
						<div class="resume-year">
							<h2>邮箱：</h2>
						</div>
						<div class="resume-text">
							<h3><%=r.getEmail() %></h3>
							<p>兴趣爱好：<%=fav %></p>
						</div>
					</div>
					<!-- Review item -->
					<div class="resume-item wow fadeInUp" data-wow-delay="0.6s">
						<div class="resume-year">
							<h2>学科：</h2>
						</div>
						<div class="resume-text">
							<h3><%=subject %></h3>
							<p><%=r.getMemo() %></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Resume section end -->

	<!-- Footer section start -->
	<footer class="footer-section spad set-bg" data-setbg="img/footer-bg.svg">
		<div class="container">
			<div class="social-links">
				<a href="#" class="facebook wow fadeInDown" data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a>
				<a href="#" class="twitter wow fadeInDown" data-wow-delay="0.4s"><i class="fa fa-twitter"></i></a>
				<a href="#" class="dribbble wow fadeInDown" data-wow-delay="0.6s"><i class="fa fa-dribbble"></i></a>
				<a href="#" class="behance wow fadeInDown" data-wow-delay="0.8s"><i class="fa fa-behance"></i></a>
			</div>
			<!-- copyright -->
			<p class="copyright">Copyright &copy; 2018 KNIT, More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
		</div>
	</footer>
	<!-- Footer section end -->

</body>


</html>
