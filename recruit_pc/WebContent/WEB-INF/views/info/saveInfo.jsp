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
	function saveInfo(){

var username=$('#title').val();
var pwd=$('#content').val();
if(username==null||username==""){
swal("标题不能为空!");
return;
}
if(pwd==null||pwd==""){
swal("内容不能为空!");
return;
}
		$.ajax({
	          url:"<%=path%>/info/saveInfo",
	          type:"POST",
	          dataType:"text",
	          data:$("#infoform").serialize(),
	          success:function(data, textStatus, jqXHR){
	          		if(data == 1){
	          			swal("发布成功!");

	          		}else{
	          			swal(data);
	          		}
	          },
	          error:function(){
	           	 	swal("异常信息!");
	          }
	   });	
	}
		</script>

	</head>
	<body>
		<!--wide layout-->
		<div class="wide_layout relative">
		<div class="boxed_layout relative w_xs_auto">
			<header>
            <%@ include file="../head.jsp"%>
			</header>
			<div class="page_content_offset">
				<div class="container">
								<div class="col-lg-8 col-md-8 col-sm-8 m_xs_bottom_30">
									<h2 class="tt_uppercase color_dark m_bottom_25">发布信息</h2>
									<p class="m_bottom_10 color_dark">发布一条信息 <span class="scheme_color"></span></p>
									<form id="infoform">
										<ul>
											<li class="clearfix m_bottom_15">
												<div class="f_left half_column">
													<label for="cf_name" class="required d_inline_b m_bottom_5 color_dark">标题</label>
													<input type="text" id="title" name="title" class="full_width r_corners">
												</div>
											<li class="m_bottom_15">
												<label for="cf_message" class="d_inline_b m_bottom_5 required color_dark">内容</label>
												<textarea id="content" name="content" class="full_width r_corners"></textarea>
											</li>
											<li>
												<button type="button" class="button_type_4 bg_light_color_2 r_corners mw_0 tr_all_hover color_dark" onclick="saveInfo();">发布</button>
											</li>
										</ul>
									</form>
								</div>
							</div>
						</section>
						<!--right column-->
						<aside class="col-lg-3 col-md-3 col-sm-3">
							<!--widgets-->

							<!--compare products-->
							<figure class="widget shadow r_corners wrapper m_bottom_30">
								<figcaption>
									<h3 class="color_light">公告栏</h3>
								</figcaption>
								<div class="widget_content">
									  你来到 最好得招聘网站
								</div>
							</figure>
						</aside>
					</div>
				</div>
			</div>
		<p style="margin-top:300px;"></p>
				<!--markup footer-->
			<footer id="footer">
           <%@ include file="../foot.jsp"%>
			</footer>
	</body>
</html>