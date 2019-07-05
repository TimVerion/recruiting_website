<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
	<head>
		<title>招聘网站</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<!--meta info-->
		<meta name="author" content="">
		<meta name="keywords" content="">
		<meta name="description" content="">
	</head>
	<body>
				<!--header top part-->
				<section class="h_top_part">
					<div class="container">
						<div class="row clearfix">
							<div class="col-lg-4 col-md-4 col-sm-5 t_xs_align_c">
								
		<c:if test="${user==null}">					
		<p class="f_size_small" style="margin-left:60px;">欢迎你<a href="<%=request.getContextPath()%>/goLogin" >登入</a> or <a href="<%=request.getContextPath()%>/user/goCompany">注册</a> </p>
		</c:if>

		<c:if test="${user!=null}">
		 <p class="f_size_small"><b>您好${user.username }
						，欢迎来到招聘网站</b> ||&nbsp;<a href="<%=request.getContextPath()%>/logout" >退出</a></p>
		
		</c:if>
							</div>
								<c:if test="${user!=null}">
							<nav class="col-lg-4 col-md-4 col-sm-5 t_align_r t_xs_align_c">
								<ul class="d_inline_b horizontal_list clearfix f_size_small users_nav">
									<li><a href="<%=request.getContextPath()%>/user/goUserInfo" class="default_t_color">我的信息</a></li>
									<li><a href="#" class="default_t_color">浏览历史</a></li>
								</ul>
							</nav>
									</c:if>
						</div>
					</div>
				</section>
						
							</ul>
						</div>
					</div>
				</section>
				<!--main menu container-->
				<section class="menu_wrap relative">
					<div class="container clearfix">
						<!--button for responsive menu-->
						<button id="menu_button" class="r_corners centered_db d_none tr_all_hover d_xs_block m_bottom_10">
							<span class="centered_db r_corners"></span>
							<span class="centered_db r_corners"></span>
							<span class="centered_db r_corners"></span>
						</button>
						<!--main menu-->
						<nav role="navigation" class="f_left f_xs_none d_xs_none">	
							<ul class="horizontal_list main_menu clearfix">
								<li class="current relative f_xs_none m_xs_bottom_5"><a href="<%=request.getContextPath()%>/goMain" class="tr_delay_hover color_light tt_uppercase"><b>首页</b></a>

								</li>
								<li class="relative f_xs_none m_xs_bottom_5"><a href="#" class="tr_delay_hover color_light tt_uppercase"><b>职位列表</b></a>
																	<div class="sub_menu_wrap top_arrow d_xs_none type_2 tr_all_hover clearfix r_corners">
										<ul class="sub_menu">
											<li><a class="color_dark tr_delay_hover" href="<%=request.getContextPath()%>/user/goJobList">企业职位列表</a></li>
						
										</ul>
									</div>
								</li>
								<li class="relative f_xs_none m_xs_bottom_5"><a href="#" class="tr_delay_hover color_light tt_uppercase"><b>求职者点我</b></a>
									<!--sub menu-->
									<div class="sub_menu_wrap top_arrow d_xs_none type_2 tr_all_hover clearfix r_corners">
										<ul class="sub_menu">
											<li><a class="color_dark tr_delay_hover" href="<%=request.getContextPath()%>/info/goAddInfo">发布求职信息</a></li>
											<li><a class="color_dark tr_delay_hover" href="<%=request.getContextPath()%>/info/goMyInfo">我的求职信息</a></li>
											<li><a class="color_dark tr_delay_hover" href="<%=request.getContextPath()%>/emp/goEmpInfo">我的信息</a></li>
											<li><a class="color_dark tr_delay_hover" href="<%=request.getContextPath()%>/emp/goHistoryJobList">浏览职位历史</a></li>
										</ul>
									</div>
								</li>
								<li class="relative f_xs_none m_xs_bottom_5"><a href="#" class="tr_delay_hover color_light tt_uppercase"><b>企业用户点我</b></a>
									<!--sub menu-->
									<div class="sub_menu_wrap top_arrow d_xs_none type_2 tr_all_hover clearfix r_corners">
										<ul class="sub_menu">
											<li><a class="color_dark tr_delay_hover" href="<%=request.getContextPath()%>/job/goSaveJob">发布招聘信息</a></li>
											<li><a class="color_dark tr_delay_hover" href="<%=request.getContextPath()%>/job/goComJobList">招聘信息管理</a></li>
											<li><a class="color_dark tr_delay_hover" href="<%=request.getContextPath()%>/com/goCompanyInfo">企业信息管理</a></li>
											<li><a class="color_dark tr_delay_hover" href="<%=request.getContextPath()%>/info/goAddInfo">发布信息</a></li>
										</ul>
									</div>
								</li>
								<li class="relative f_xs_none m_xs_bottom_5"><a href="#" class="tr_delay_hover color_light tt_uppercase"><b>知名企业</b></a>
									<!--sub menu-->
									<div class="sub_menu_wrap top_arrow d_xs_none type_2 tr_all_hover clearfix r_corners">
										<ul class="sub_menu">
											<li><a class="color_dark tr_delay_hover" href="<%=request.getContextPath()%>/com/goAllCompany">查看知名企业</a></li>
										</ul>
									</div>
								</li>
								<li class="relative f_xs_none m_xs_bottom_5"><a href="<%=request.getContextPath()%>/blog/goContactUs" class="tr_delay_hover color_light tt_uppercase"><b>联系我们</b></a></li>
							</ul>
						</nav>
						<button class="f_right search_button tr_all_hover f_xs_none d_xs_none">
							<i class="fa fa-search"></i>
						</button>
					</div>
					<!--search form-->
					<div class="searchform_wrap tf_xs_none tr_all_hover">
						<div class="container vc_child h_inherit relative">
							<form role="search" class="d_inline_middle full_width">
								<input type="text" name="search" id="search1" placeholder="Type text and hit enter" class="f_size_large" onblur="doSearch();">
							</form>
							<button class="close_search_form tr_all_hover d_xs_none color_dark">
								<i class="fa fa-times"></i>
							</button>
						</div>
					</div>
				</section>
	</body>
</html>