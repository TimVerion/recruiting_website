<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%String path = request.getContextPath();%>
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
		<!--stylesheet include-->
		<link rel="stylesheet" type="text/css" media="all" href="<%=path%>/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" media="all" href="<%=path%>/css/camera.css">
		<link rel="stylesheet" type="text/css" media="all" href="<%=path%>/css/owl.carousel.css">
		<link rel="stylesheet" type="text/css" media="all" href="<%=path%>/css/owl.transitions.css">
		<link rel="stylesheet" type="text/css" media="all" href="<%=path%>/css/jquery.custom-scrollbar.css">
		<link rel="stylesheet" type="text/css" media="all" href="<%=path%>/css/style.css">
		<link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet">
	</head>
	<body>
		<!--boxed layout-->
		<div class="boxed_layout relative w_xs_auto">
			<header role="banner">
		
            <%@ include file="head.jsp"%>

			</header>
			<!--slider-->
			<div class="camera_wrap m_bottom_0">
				<div data-src="<%=path%>/images/slide_013.jpg" data-custom-thumb="<%=path%>/images/slide_013.jpg">
					<div class="camera_caption_1 fadeFromTop t_align_c d_xs_none">
						<div class="f_size_large color_light tt_uppercase slider_title_3 m_bottom_5">被“996”困住的年轻人们：好老板到底喜欢什么样的员工？你的机会来了</div>
						<div class="color_light slider_title_2 m_bottom_45"><b>三天后BAT专家前来面试</b></div>
						<a href="#" role="button" class="tr_all_hover button_type_4 bg_scheme_color color_light r_corners tt_uppercase">凑凑热闹</a>
					</div>
				</div>
    			<div data-src="<%=path%>/images/slide_012.jpg" data-custom-thumb="<%=path%>/images/slide_012.jpg">
    				<div class="camera_caption_2 fadeIn t_align_c d_xs_none">
						<div class="color_light slider_title tt_uppercase t_align_c m_bottom_65 m_sm_bottom_20"><b><span class="scheme_color"> 2019-05-22</span><br><span class="color_light">一份光阴一份金</span></b></div>
						<a href="#" role="button" class="d_sm_inline_b button_type_4 bg_scheme_color color_light r_corners tt_uppercase tr_all_hover">开始找工作</a>
					</div>
    			</div>
    			<div data-src="<%=path%>/images/slide_011.jpg" data-custom-thumb="<%=path%>/images/slide_011.jpg">
    				<div class="camera_caption_3 fadeFromTop t_align_c d_xs_none">
						<div class="color_light slider_title tt_uppercase t_align_c m_bottom_60 m_sm_bottom_20"><b class="color_light"> 人生的舞台上，没有彩排的戏;在人生的道路上，没有重走的路。</b></div>
						<a href="#" role="button" class="d_sm_inline_b button_type_4 bg_scheme_color color_light r_corners tt_uppercase tr_all_hover">休息休息</a>
					</div>
    			</div>
			</div>
			<!--content-->
			<div class="page_content_offset">
				<div class="container">
					<h2 class="tt_uppercase m_bottom_20 color_dark heading1 animate_ftr">最热职位</h2>
					<!--filter navigation of products-->
					<ul class="horizontal_list clearfix tt_uppercase isotope_menu f_size_ex_large">
						<li class="active m_right_5 m_bottom_10 m_xs_bottom_5 animate_ftr"><button class="button_type_2 bg_light_color_1 r_corners tr_delay_hover tt_uppercase box_s_none" data-filter="*">All</button></li>
					</ul>
					<!--products-->
					<section class="products_container clearfix m_bottom_25 m_sm_bottom_15" >
					<div id="product_list"></div>
					</section>
					<!--product brands-->
					<div class="clearfix m_bottom_25 m_sm_bottom_20">
						<h2 class="tt_uppercase color_dark f_left heading2 animate_fade f_mxs_none m_mxs_bottom_15">企业LOGO</h2>
						<div class="f_right clearfix nav_buttons_wrap animate_fade f_mxs_none">
							<button class="button_type_7 bg_cs_hover box_s_none f_size_ex_large t_align_c bg_light_color_1 f_left tr_delay_hover r_corners pb_prev"><i class="fa fa-angle-left"></i></button>
							<button class="button_type_7 bg_cs_hover box_s_none f_size_ex_large t_align_c bg_light_color_1 f_left m_left_5 tr_delay_hover r_corners pb_next"><i class="fa fa-angle-right"></i></button>
						</div>
					</div>
					<!--product brands carousel-->
					<div class="product_brands m_bottom_45 m_sm_bottom_35">
						<a href="#" class="d_block t_align_c animate_fade"><img src="<%=path%>/images/brand_logo.gif" alt=""></a>
						<a href="#" class="d_block t_align_c animate_fade"><img src="<%=path%>/images/brand_logo1.gif" alt=""></a>
						<a href="#" class="d_block t_align_c animate_fade"><img src="<%=path%>/images/brand_logo2.gif" alt=""></a>
						<a href="#" class="d_block t_align_c animate_fade"><img src="<%=path%>/images/brand_logo3.gif" alt=""></a>
						<a href="#" class="d_block t_align_c animate_fade"><img src="<%=path%>/images/brand_logo4.gif" alt=""></a>
						<a href="#" class="d_block t_align_c animate_fade"><img src="<%=path%>/images/brand_logo5.gif" alt=""></a>
						<a href="#" class="d_block t_align_c animate_fade"><img src="<%=path%>/images/brand_logo6.gif" alt=""></a>
						<a href="#" class="d_block t_align_c animate_fade"><img src="<%=path%>/images/brand_logo7.gif" alt=""></a>
						<a href="#" class="d_block t_align_c animate_fade"><img src="<%=path%>/images/brand_logo8.gif" alt=""></a>
					</div>
					<!--blog-->
					<div class="row clearfix m_bottom_45 m_sm_bottom_35">
						<div class="col-lg-6 col-md-6 col-sm-12 m_sm_bottom_35 blog_animate animate_ftr">
							<div class="clearfix m_bottom_25 m_sm_bottom_20">
								<h2 class="tt_uppercase color_dark f_left">来自博客</h2>
								<div class="f_right clearfix nav_buttons_wrap">
									<button class="button_type_7 bg_cs_hover box_s_none f_size_ex_large bg_light_color_1 f_left tr_delay_hover r_corners blog_prev"><i class="fa fa-angle-left"></i></button>
									<button class="button_type_7 bg_cs_hover box_s_none f_size_ex_large bg_light_color_1 f_left m_left_5 tr_delay_hover r_corners blog_next"><i class="fa fa-angle-right"></i></button>
								</div>
							</div>
							<!--blog carousel-->
							<div class="blog_carousel">
								<div class="clearfix">
									<!--image-->
									<a href="#" class="d_block photoframe relative shadow wrapper r_corners f_left m_right_20 animate_ftt f_mxs_none m_mxs_bottom_10">
										<img class="tr_all_long_hover" src="<%=path%>/images/blog_img1_1.jpg" alt="">
									</a>
									<!--post content-->
									<div class="mini_post_content">
										<h4 class="m_bottom_5 animate_ftr"><a href="#" class="color_dark"><b>实际工作很好找</b></a></h4>
										<p class="f_size_medium m_bottom_10 animate_ftr">2016-3-25</p>
										<p class="m_bottom_10 animate_ftr">最近有个朋友说，他们去面试都是一轮的，派去面试的人也很随意，HR是兼任的，基本管不了这事，都是部门里找个人就去面了，觉得可以就发OFFER了，连复试也没有。 . </p>
									</div>
								</div>
								<div class="clearfix">
									<!--image-->
									<a href="#" class="d_block photoframe relative shadow wrapper r_corners f_left m_right_20 animate_ftt f_mxs_none m_mxs_bottom_10">
										<img class="tr_all_long_hover" src="<%=path%>/images/blog_img1_2.jpg" alt="">
									</a>
									<!--post content-->
									<div class="mini_post_content">
										<h4 class="m_bottom_5 animate_ftr"><a href="#" class="color_dark"><b>发现企业违反劳动法,应该如何应对？</b></a></h4>
										<p class="f_size_medium m_bottom_10 animate_ftr">2016-2-27</p>
										<p class="m_bottom_10 animate_ftr">入职是个新开始，可有时会变成心酸的开始……上班后才发现合同没签或是签了没给自己；工资比说好的少了，绩效奖金根本是拿不到的天方夜谭；不给缴金，或是按本事最低工资来缴……这种种心酸的事情你遇到过吗？ </p>
									</div>
								</div>
								<div class="clearfix">
									<!--image-->
									<a href="#" class="d_block photoframe relative shadow wrapper r_corners f_left m_right_20 animate_ftt f_mxs_none m_mxs_bottom_10">
										<img class="tr_all_long_hover" src="<%=path%>/images/blog_img1_3.jpg" alt="">
									</a>
									<!--post content-->
									<div class="mini_post_content">
										<h4 class="m_bottom_5 animate_ftr"><a href="#" class="color_dark"><b>面试如何回答离职原因？</b></a></h4>
										<p class="f_size_medium m_bottom_10 animate_ftr">2019-05-25</p>
										<p class="m_bottom_10 animate_ftr">　对于个人来说，面试中最心塞也是最难回答的问题非“离别原因”莫属了。实际上个人想要跳槽的原因无非就是钱少了或者受委屈了，面试官们应该也心知肚明，老这么追问不是逼个人编故事吗？离职原因坦白说，一定不录取，隐瞒着不说实再是难以圆谎，到底怎么办才好？怎么说才能真正打消面试官的疑虑呢？世界上到底有没有关于离职原因的最安全最完美的答案呢？本期前程无忧论在线沙龙邀请职场专家来为大家答疑解惑。</p>
									</div>
								</div>
							</div>
						</div>
						<!--testimonials-->
						<div class="col-lg-6 col-md-6 col-sm-12 ti_animate animate_ftr">
							<div class="clearfix m_bottom_25 m_sm_bottom_20">
								<h2 class="tt_uppercase color_dark f_left f_mxs_none m_mxs_bottom_15">深度看面试:</h2>
								<div class="f_right clearfix nav_buttons_wrap f_mxs_none">
									<button class="button_type_7 bg_cs_hover box_s_none f_size_ex_large bg_light_color_1 f_left tr_delay_hover r_corners ti_prev"><i class="fa fa-angle-left"></i></button>
									<button class="button_type_7 bg_cs_hover box_s_none f_size_ex_large bg_light_color_1 f_left m_left_5 tr_delay_hover r_corners ti_next"><i class="fa fa-angle-right"></i></button>
								</div>
							</div>
							<!--testimonials carousel-->
							<div class="testiomials_carousel">
								<div>
									<blockquote class="r_corners shadow f_size_large relative m_bottom_15 animate_ftr">请不要总是臆想“企业想对你怎么样”  其实大多数比较正常的企业，在面试时，都只不过想多方面综合考虑你是否合适，问一些比较生活化的问题，关注的本身真的不是你的私人生活，真正的重点在于你对待工作的态度。
									</blockquote>
									<img class="circle m_left_20 d_inline_middle animate_ftr" src="<%=path%>/images/testimonial_img1_1.jpg" alt="">
									<div class="d_inline_middle m_left_15 animate_ftr">
										<h5 class="color_dark"><b>张三丰</b></h5>
										<p>北京</p>
									</div>
								</div>
								<div>
									<blockquote class="r_corners shadow f_size_large relative m_bottom_15">担心因为某个问题回答错误而面试失败 这个不是高考，不是因为差一分就铁定被排除在外了。记得论坛一个网友说过，录用你不是因为你真的够格，或许是因为觉得虽然你目前能力有欠但是培养一下还是有潜力的。所以，关于隐私问题，绝对不会因为一个问题，而立即把你排除在外的，当然，你说了什么大逆不道的话，那就没办法了。.</blockquote>
									<img class="circle m_left_20 d_inline_middle" src="<%=path%>/images/testimonial_img1_2.jpg" alt="">
									<div class="d_inline_middle m_left_15">
										<h5 class="color_dark"><b>库里二代</b></h5>
										<p>上海</p>
									</div>
								</div>
								<div>
									<blockquote class="r_corners shadow f_size_large relative m_bottom_15">害怕企业会有某些歧视问题要分开看，如果面试官跑上来前三个问题中就涉及到了隐私比如有没有男女朋友有没有结婚有没有小孩子，那不排除有这样的倾向；如果已经到面试后半程甚至临近结束时突然问你这些问题，那么你就如实回答吧，不要太多顾虑，其实只要你能表达对工作的态度，自己有平衡好生活和工作的能力就好。.</blockquote>
									<img class="circle m_left_20 d_inline_middle" src="<%=path%>/images/testimonial_img1_3.jpg" alt="">
									<div class="d_inline_middle m_left_15">
										<h5 class="color_dark"><b>詹姆斯高斯林</b></h5>
										<p>广州</p>
									</div>
								</div>
							</div>
						</div>
					</div>
		</div>
		</div>
		<!--scripts include-->
		<script src="<%=path%>/js/jquery-2.1.0.min.js"></script>
		<script src="<%=path%>/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="<%=path%>/js/retina.js"></script>
		<script src="<%=path%>/js/camera.min.js"></script>
		<script src="<%=path%>/js/jquery.easing.1.3.js"></script>
		<script src="<%=path%>/js/waypoints.min.js"></script>
		<script src="<%=path%>/js/jquery.isotope.min.js"></script>
		<script src="<%=path%>/js/owl.carousel.min.js"></script>
		<script src="<%=path%>/js/jquery.tweet.min.js"></script>
		<script src="<%=path%>/js/jquery.custom-scrollbar.js"></script>
		<script src="<%=path%>/js/scripts.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
		$.ajax({
			url : "<%=path%>/job/findTen",
			type : "get",
			dataType : "json",
			success : function(data, textStatus, jqXHR) {
			  	var html = "";
              	$.each(data.content,function(index,value){
              	  html+= '<div class="product_item">';
              	   html+= '<figure class="r_corners photoframe shadow relative hit animate_ftb long">';
					html+='<a href="#" class="d_block relative pp_wrap">';			
					html+= '<span class="hot_stripe"><img src="<%=path%>/images/hot_product.png" alt=""></span>';
						html+='<img src="<%=path%>/images/product_img1_1.jpg" class="tr_all_hover" alt="">';			
						html+='<span  class="button_type_5 box_s_none color_light r_corners tr_all_hover d_xs_none" onclick="detail('+value.jobId+')">Quick View</span></a>';
						html+='<figcaption><h5 class="m_bottom_10"><a href="#" class="color_dark">'+value.jobName+'</a></h5>';
							html+='	<div class="clearfix"><p class="scheme_color f_left f_size_large m_bottom_15">点击量'+value.count +'</p>';
   html+='<ul class="horizontal_list f_right clearfix rating_list tr_all_hover">';
	html+='<li class="active">';
	html+='	<i class="fa fa-star-o empty tr_all_hover"></i>';
												html+='<i class="fa fa-star active tr_all_hover"></i></li>';
											html+='<li class="active">';
												html+='<i class="fa fa-star-o empty tr_all_hover"></i>';
												html+='<i class="fa fa-star active tr_all_hover"></i></li>';
											html+='<li class="active">';
												html+='<i class="fa fa-star-o empty tr_all_hover"></i>';
												html+='<i class="fa fa-star active tr_all_hover"></i></li>';
											html+='<li class="active">';
												html+='<i class="fa fa-star-o empty tr_all_hover"></i>';
												html+='<i class="fa fa-star active tr_all_hover"></i></li>';
											html+='<li><i class="fa fa-star-o empty tr_all_hover"></i>';
											html+='<i class="fa fa-star active tr_all_hover"></i></li>';
										html+='</ul></div>';
								html+='</figcaption></figure></div>';             	  
              	});
         
           $("#product_list").html(html);
			},
			error : function() {
				alert('系统异常');
			}
		});
		});
		
		function detail(id){	
 		$('#quick_view_product').show();
 			$.ajax({
 	          url:"<%=path%>/job/findByJobId?id="+id,
 	          type:"get",
 	          dataType:"json",
 	          success:function(data, textStatus, jqXHR){
 	          		$.each(data.content,function(i,v){
 	          			$("#detail_"+i).html(v);
	          		});
	          },
 	          error:function(){
 	           	 	swal("查询异常信息!");
	          }
 	   });	
			window.location.href="<%=path%>/user/goJobDetail?id="+id; 
		}
		
		</script>

	</body>
</html>