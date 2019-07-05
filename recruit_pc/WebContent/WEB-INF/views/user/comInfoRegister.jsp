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
<script src="<%=path%>/js/formValidator-4.0.1.js" type="text/javascript" charset="UTF-8"></script>
<script src="<%=path%>/js/formValidatorRegex.js" type="text/javascript" charset="UTF-8"></script>
		<script type="text/javascript">
		$(document).ready(function(){
$.formValidator.initConfig({formID:"comform",debug:false,submitOnce:true,
		onError:function(msg,obj,errorlist){
			$("#errorlist").empty();
			$.map(errorlist,function(msg){
				$("#errorlist").append("<li>" + msg + "</li>")
			});
			alert(msg);
		},
		submitAfterAjaxPrompt : '有数据正在异步验证，请稍等...'
	});

	$("#email").formValidator({onShow:"请输入邮箱",onFocus:"邮箱6-100个字符,输入正确了才能离开焦点",onCorrect:"恭喜你,你输对了",defaultValue:"@"}).inputValidator({min:6,max:100,onError:"你输入的邮箱长度非法,请确认"}).regexValidator({regExp:"^([\\w-.]+)@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.)|(([\\w-]+.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(]?)$",onError:"你输入的邮箱格式不正确"});
    $("#tel").formValidator({empty:true,onShow:"请输入你的联系电话，可以为空哦",onFocus:"格式例如：0577-88888888",onCorrect:"谢谢你的合作",onEmpty:"你真的不想留联系电话了吗？"}).regexValidator({regExp:"^(([0\\+]\\d{2,3}-)?(0\\d{2,3})-)?(\\d{7,8})(-(\\d{3,}))?$",onError:"你输入的联系电话格式不正确"});
	$("#m_tel").formValidator({empty:true,onShow:"请输入你的手机或电话，可以为空哦",onFocus:"格式例如：0577-88888888或11位手机号码",onCorrect:"谢谢你的合作",onEmpty:"你真的不想留手机或电话了吗？"}).regexValidator({regExp:["tel","mobile"],dataType:"enum",onError:"你输入的手机或电话格式不正确"});
	$("#description").formValidator({onShow:"请输入你的描述",onFocus:"描述至少要输入10个汉字或20个字符",onCorrect:"恭喜你,你输对了",defaultValue:"这家伙很懒，什么都没有留下。"}).inputValidator({min:20,onError:"你输入的描述长度不正确,请确认"});
});
	function save(){
		var determineResult = $("#determineResult").val();
		if(determineResult.length<1){
            swal("请选择研判人员!");
			return ;
		}
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
		
			<!--content-->
		<!--content-->
			<div class="page_content_offset">
				<div class="container">
					<div class="row clearfix">
						<!--left content column-->
						<section class="col-lg-9 col-md-9 col-sm-9">
							<div class="row clearfix">
							 <%@ include file="../contact.jsp"%>
								<div class="col-lg-8 col-md-8 col-sm-8 m_xs_bottom_30">
									<h2 class="tt_uppercase color_dark m_bottom_25">	${user.username }账号密码设置成功，请填写详细信息完成注册</h2>
									<p class="m_bottom_10"> <span class="scheme_color"></span> </p>
									<ul id="errorlist"></ul>
									<form id="comform" action="<%=path%>/com/saveCompany">
										<ul>
											<li class="clearfix m_bottom_15">
												<div class="f_left half_column">
													<label for="fullname" class="required d_inline_b m_bottom_5">公司名称:</label>
													<input type="text"  id="fullname" name="fullname" class="full_width r_corners">
													   <div id="fullnameTip" style="width:250px">
												</div>
											</li>
											<li class="m_bottom_15">
												<label for="cf_message" class="d_inline_b m_bottom_5 required">公司类型</label>
											<select name="comtype" id="">
                                           <option value="国企" selected="selected">国企</option>
                                           <option value="上市公司">上市公司</option>
                                            <option value="私人公司">私人公司</option></select>
											</li>
									     <li class="m_bottom_15">
												<label for="empcount" class="d_inline_b m_bottom_5">公司规模(人数):</label>
												<input type="text" id="empcount" name="empcount" class="full_width r_corners" value="1">
											    <div id="empcountTip" style="width:250px">
											</li>
	                                     <li class="m_bottom_15">
												<label for="description" class="d_inline_b m_bottom_5 required">公司介绍</label>
												<textarea id="description" name="description" class="full_width r_corners"></textarea>
												<div id="descriptionTip" style="width:250px">
											</li>
										<li class="m_bottom_15">
												<label for="address" class="d_inline_b m_bottom_5">地址:</label>
												<input type="text" id="address" name="address" class="full_width r_corners">
											    <div id="addressTip" style="width:250px">
											</li>
											<li class="m_bottom_15">
												<label for="email" class="d_inline_b m_bottom_5">邮箱:</label>
												<input type="text" id="email" name="email" class="full_width r_corners">
											    <div id="emailTip" style="width:250px">
											</li>
											<li class="m_bottom_15">
												<label for="tel" class="d_inline_b m_bottom_5">公司电话:</label>
												<input type="text" id="tel" name="tel" class="full_width r_corners">
											    <div id="telTip" style="width:250px">
											</li>
								         <li class="m_bottom_15">
												<label for="manager" class="d_inline_b m_bottom_5">联系人:</label>
												<input type="text" id="manager" name="manager" class="full_width r_corners">
											    <div id="managerTip" style="width:250px">
											</li>
											<li class="m_bottom_15">
												<label for="m_tel" class="d_inline_b m_bottom_5">联系人电话:</label>
												<input type="text" id="mTel" name="mTel" class="full_width r_corners">
											    <div id="mTelTip" style="width:250px">
											</li>

											<li class="m_bottom_15">
												<button class="button_type_4 bg_light_color_2 r_corners mw_0 tr_all_hover color_dark" type="submit">保存</button>
											</li>
										</ul>
									</form>
								</div>
							</div>
						</section>
					

					</div>
				</div>
			</div>

	</body>
</html>