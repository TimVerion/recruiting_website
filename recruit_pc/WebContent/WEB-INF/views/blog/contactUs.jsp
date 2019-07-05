<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../base.jsp"%>
<!doctype html>
<!--[if IE 9 ]><html class="ie9" lang="en"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->

	<head>
		<title>招聘网站</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<!--meta info-->
		<meta name="author" content="">
		<meta name="keywords" content="">
		<meta name="description" content="">
		<link type="text/css" rel="stylesheet" href="<%=path%>/css/validator.css"></link>
			<link type="text/css" rel="stylesheet" href="<%=path%>/css/famouse.css"></link>
<script src="<%=path%>/js/formValidator-4.0.1.js" type="text/javascript" charset="UTF-8"></script>
<script src="<%=path%>/js/formValidatorRegex.js" type="text/javascript" charset="UTF-8"></script>
		<script type="text/javascript">
	
		</script>

	</head>
	<body>
		<div class="wide_layout relative">
		<div class="boxed_layout relative w_xs_auto">
			<header>
            <%@ include file="../head.jsp"%>
			</header>
				<!--breadcrumbs-->
			<section class="breadcrumbs">
				<div class="container">
					<ul class="horizontal_list clearfix bc_list f_size_medium">
						<li class="m_right_10 current"><a href="#" class="default_t_color">首页<i class="fa fa-angle-right d_inline_middle m_left_10"></i></a></li>
						<li><a href="#" class="default_t_color">关于我们</a></li>
					</ul>
				</div>
			</section>
			<!--content-->
			<div class="page_content_offset">
				<div class="container">
					<div class="row clearfix">
								<div class="widget_content">
									   这是最好的招聘网站
								</div>
							<!--banner-->
							<a href="#" class="d_block r_corners m_bottom_30">
								<img src="images/banner_img1_6.jpg" alt="">
							</a>
					</div>
				</div>
			</div>
		
				<!--markup footer-->
			<footer id="footer">
           <%@ include file="../foot.jsp"%>
			</footer>
					<!--social widgets-->
	    <%@ include file="../right.jsp"%>
	</body>
</html>