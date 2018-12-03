<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>欢乐淘图书频道-综合网上购物商城，正品行货，全国联保，货到付款！</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/data-folder/front/css/index.css" />
        <link href="${pageContext.request.contextPath}/data-folder/front/css/main.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/data-folder/front/js/jquery.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/data-folder/front/js/index.js"></script>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/data-folder/front/img/title_logo.ico" />
	</head>

	<body>
		<!--导航条-->
		<div id="layout_nav">
			<div id="top_nav">
				<div class="top_nav_left scrollx">
					<a href="####">网站导航</a>
					<span class="xin"></span>
					<img class="arrow" src="${pageContext.request.contextPath}/data-folder/front/img/arrow2.png" />
					<div class="wangzhandaohang scrolly"></div>
				</div>
				<div class="top_nav_right">
					<div style="float: left;width:200px;overflow: hidden;">
						<div class="login" >
							<div id="login-userName" class="login-userName scrollx" style="cursor:pointer;">
								<span style="color:red" id="span-userName"></span>
								<img class="arrow" src="${pageContext.request.contextPath}/data-folder/front/img/arrow2.png"/>
								<div class="scrolly wodename" style="display: none">
									<p>账号管理</p>
									<p><div onclick="quit()">退出</div></p>
								</div>
							</div>

							<div id="login-register" style="display: none">
								<a href="${pageContext.request.contextPath}/jsp/front/user/login.jsp">登录</a>
								<a href="${pageContext.request.contextPath}/jsp/front/user/regist.jsp" style="margin-left: 8px;">注册</a>
							</div>
						</div>
					</div>
						<div style="float: right;width: 290px;">
						<div class="mydingdan scrollx">
							<a href="####">我的订单
								<img class="arrow" src="${pageContext.request.contextPath}/data-folder/front/img/arrow2.png"/>
								<div class="wodedingdan scrolly">
									<p>待支付</p>
									<p>待收货</p>
									<p>待评价</p>
									<p>修改订单</p>
								</div>
							</a>
						</div>
						<div class="myyigou scrollx">
							<a href="####">我的易购
								<img class="arrow" src="${pageContext.request.contextPath}/data-folder/front/img/arrow2.png"/>
								<div class="wodeyigou scrolly">
									<p>我的消息</p>
									<p>我的收藏</p>
									<p>我的优惠券</p>
								</div>
							</a>
						</div>
						<a class="hb" href="####">
							<em class="ng-iconfont cart">&#xe806;</em>
							<span>购物车</span>
							<span class="yuan">
								<b class="num">0</b>
							</span>
						</a>
					</div>
				</div>
			</div>
		</div>
		<!--导航结束-->
		
		<!--搜索-->
		<div id="search">
			<a href="####" class="logo"></a>
			<a href="####" class="logogif">
				<img src="${pageContext.request.contextPath}/data-folder/front/img/logo.gif" alt="" />
			</a>
			<div class="main_search">
				<div class="ng_search">
					<i class="ng-iconfont search-icon">&#xe619;</i>
					<form action="">
						<div class="search-keyword-box">
							<input value="iPhone6s最大的不同就是处处相同" id="searchKeywords" type="text" class="search-keyword" />
						</div>
						<input id="searchSubmit" type="submit" class="search-btn" value="搜索" />
						<div class="hotwords">
							<a>热搜：&nbsp;</a>
							<a href="####">springMVC</a>
							<a href="####">mysql</a>
							<a href="####">数据结构</a>
						</div>
					</form>
				</div>
			</div>
			<div class="erweima">
				<a href="####" title="移动端">
					<img src="${pageContext.request.contextPath}/data-folder/front/img/erweima.jpg" alt="移动端" />
				</a>
			</div>
		</div>
		<!--搜索结束-->
		<!--详细分类导航-->
		<div id="layout_sort">
			<div id="sort">
				<div class="sort_index">
					<a class="sort_index_top" href="####">
						<em class="ng-iconfont">&#xe621;</em><span>全部商品分类</span>
					</a>
					<div class="sort_index_down">
						<ul class="list" id="categoryList">
						<%--分类数据库获取--%>
						</ul>
						
					</div>
				</div>
				<div class="sort_center">
					<ul>
						<li><a href="####">java书籍</a></li>
						<li><a href="####">健康生活</a></li>
						<li><a href="####">考试教育</a></li>
						<li><a href="####">科技</a></li>
						<li><a href="####">文学艺术</a></li>
					</ul>
				</div>
				<div class="sort_right">
					<a href="####">
						<b>【新人福利】</b> 10元红包免费领
					</a>
				</div>
			</div>
		</div>
		<!--详细分类导航结束-->
		<!--大图轮播-->
		<div id="layout_main_pic">
			<div id="main_pic">
				<a class="banner-btn banner-prev" href="####">
					<span class="btn-bg"></span>
					<i class="arr"></i>
				</a>
				<a class="banner-btn banner-next" href="####">
					<span class="btn-bg"></span>
					<i class="arr"></i>
				</a>
				<div class="banner-pic">
					<ul>
						<li style="background:#7701A1;display:block;">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/1.jpg" alt="" />
							</a>
						</li>
						<li style="background:#99cce1">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/2.jpg" alt=" " />
							</a>
						</li>
					</ul>
					<ul>
						<li style="background:#9D5CFE">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/3.jpg" alt="" />
							</a>
						</li>
					</ul>
					<ul>
						<li style="background:#FFFFFF">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/4.jpg" alt="" />
							</a>
						</li>
					</ul>
					<ul>
						<li style="background:#EBEFFB">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/5.jpg" alt="" />
							</a>
						</li>
					</ul>
					<ul>
						<li style="background:#6539E6">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/6.jpg" alt="" />
							</a>
						</li>
					</ul>
					<ul>
						<li style="background:#FDAB01">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/7.jpg" alt="" />
							</a>
						</li>
						<li style="background:#DD073B">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/8.jpg" alt="" />
							</a>
						</li>
					</ul>
					<ul>
						<li style="background:#478FFE">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/9.jpg" alt="" />
							</a>
						</li>
						<li style="background:#CE46CE">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/10.jpg" alt="" />
							</a>
						</li>
					</ul>
					<ul>
						<li style="background:#5E21BD">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/11.jpg" alt="" />
							</a>
						</li>
					</ul>
					<ul>
						<li style="background:#EB1587">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/12.jpg" alt="" />
							</a>
						</li>
						<li style="background:#1A192B">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/13.jpg" alt="" />
							</a>
						</li>
					</ul>
					<ul>
						<li style="background:#FF0E3E">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/14.jpg" alt="" />
							</a>
						</li>
						<li style="background:#FFB500">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/15.jpg" alt="" />
							</a>
						</li>
					</ul>
					<ul>
						<li style="background:#F5091D">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/16.jpg" alt="" />
							</a>
						</li>
						<li style="background:#478FFE">
							<a href="####" title="">
								<img src="${pageContext.request.contextPath}/data-folder/front/img/17.jpg" alt="" />
							</a>
						</li>
					</ul>
				</div>
				<ul class="banner-ctrl">
					<li data-num="0">
						<span class="bg"></span>
						<div class="ctrl-dot">
							<i></i>
							<i></i>
						</div>
						<div class="title-item">
							<span class="title-bg"></span>
							<div class="title-list">
								<p><i></i><a href="####">安全座椅98元秒杀</a></p>
								<p><i></i><a href="####">西门子突破想象 不一样</a></p>
							</div>
						</div>
						<h4>精选</h4>
					</li>
					<li data-num="2">
						<span class="bg"></span>
						<div class="ctrl-dot">
							<i></i>
						</div>
						<div class="title-item">
							<span class="title-bg"></span>
							<div class="title-list">
								<p><i></i><a href="####">服饰秋季新品五折起</a></p>
							</div>
						</div>
						<h4>服饰家装</h4>
					</li>
					<li data-num="3">
						<span class="bg"></span>
						<div class="ctrl-dot">
							<i></i>
						</div>
						<div class="title-item">
							<span class="title-bg"></span>
							<div class="title-list">
								<p><i></i><a href="####">安全座椅3折起</a></p>
							</div>
						</div>
						<h4>母婴玩具</h4>
					</li>
					<li data-num="4">
						<span class="bg"></span>
						<div class="ctrl-dot">
							<i></i>
						</div>
						<div class="title-item">
							<span class="title-bg"></span>
							<div class="title-list">
								<p><i></i><a href="####">九月酒日 9.9元起</a></p>
							</div>
						</div>
						<h4>办宁超市</h4>
					</li>
					<li data-num="5">
						<span class="bg"></span>
						<div class="ctrl-dot">
							<i></i>
						</div>
						<div class="title-item">
							<span class="title-bg"></span>
							<div class="title-list">
								<p><i></i><a href="####">换季buy面膜 联合100减50</a></p>
							</div>
						</div>
						<h4>美妆个护</h4>
					</li>
					<li data-num="6">
						<span class="bg"></span>
						<div class="ctrl-dot">
							<i></i>
							<i></i>
						</div>
						<div class="title-item">
							<span class="title-bg"></span>
							<div class="title-list">
								<p><i></i><a href="####">百里挑一 选潮phone</a></p>
								<p><i></i><a href="####">红米2A 499元现货购买</a></p>
							</div>
						</div>
						<h4>手机通讯</h4>
					</li>
					<li data-num="8">
						<span class="bg"></span>
						<div class="ctrl-dot">
							<i></i>
							<i></i>
						</div>
						<div class="title-item">
							<span class="title-bg"></span>
							<div class="title-list">
								<p><i></i><a href="####">感念师恩 单反直降400</a></p>
								<p><i></i><a href="####">苹果新品提前看</a></p>
							</div>
						</div>
						<h4>电脑数码</h4>
					</li>
					<li data-num="10">
						<span class="bg"></span>
						<div class="ctrl-dot">
							<i></i>
						</div>
						<div class="title-item">
							<span class="title-bg"></span>
							<div class="title-list">
								<p><i></i><a href="####">屏定天下 彩惠人生</a></p>
							</div>
						</div>
						<h4>大家电</h4>
					</li>
					<li data-num="11">
						<span class="bg"></span>
						<div class="ctrl-dot">
							<i></i>
							<i></i>
						</div>
						<div class="title-item">
							<span class="title-bg"></span>
							<div class="title-list">
								<p><i></i><a href="####">小家电师恩难忘送20元券</a></p>
								<p><i></i><a href="####">厨卫秋季家装节群英惠</a></p>
							</div>
						</div>
						<h4>厨卫小家电</h4>
					</li>
					<li data-num="13" class="xiangzuo">
						<span class="bg"></span>
						<div class="ctrl-dot">
							<i></i>
							<i></i>
						</div>
						<div class="title-item">
							<span class="title-bg"></span>
							<div class="title-list">
								<p><i></i><a href="####">开学“礼“2折起</a></p>
								<p><i></i><a href="####">香港莎莎上线特惠</a></p>
							</div>
						</div>
						<h4>海外购</h4>
					</li>
					<li data-num="15" class="xiangzuo">
						<span class="bg"></span>
						<div class="ctrl-dot">
							<i></i>
							<i></i>
						</div>
						<div class="title-item">
							<span class="title-bg"></span>
							<div class="title-list">
								<p><i></i><a href="####">1元众筹PPTV手机</a></p>
								<p><i></i><a href="####">7.8%定期理财火热销售中</a></p>
							</div>
						</div>
						<h4>办宁金融</h4>
					</li>
				</ul>
				<div class="show-case">
					<div class="box-all">
						<div class="title"><i></i><em>公告</em></div>
						<div class="notice">
							<div class="bg"></div>
							<ul class="list">
								<li class="hot"><a href="####"><i>【公告】</i><em>支持学员直通鸟巢</em></a></li>
								<li><a href="####"><i>【公告】</i><em>7.8%定期理财热销中</em></a></li>
								<li><a href="####"><i>【公告】</i><em>错收价款退费说明</em></a></li>
								<li><a href="####"><i>【公告】</i><em>打卡赚云钻赢好礼</em></a></li>
								<li><a href="####"><i>【公告】</i><em>新人独享好货低至5折</em></a></li>
							</ul>
						</div>
						<div class="title"><em>生活助手</em></div>
						<div class="life">
							<div class="bg"></div>
							<div class="list">
								<ul>
									<li><a href="####"><i class="ng-iconfont">&#xe641;</i>充值</a></li>
									<li><a href="####"><i class="ng-iconfont">&#xe644;</i>火车票</a></li>
									<li><a href="####"><i class="ng-iconfont">&#xe60c;</i>机票</a></li>
									<li><a href="####"><i class="ng-iconfont">&#xe618;</i>水电煤</a></li>
									<li><a href="####"><i class="ng-iconfont">&#xe60f;</i>理财</a></li>
									<li><a href="####"><i class="ng-iconfont">&#xe608;</i>免费书城</a></li>
									<li><a href="####"><i class="ng-iconfont">&#xe61d;</i>延保</a></li>
									<li><a href="####"><i class="ng-iconfont">&#xe61f;</i>游戏</a></li>
									<li><a href="####"><i class="ng-iconfont">&#xe617;</i>领云钻</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!--大图轮播结束-->
        <div class="r"></div>

		<%--今日畅销--%>
        <div class="center1" id="floor_l_head2">
            <div class="center2">
                <div class="sg ">
                    <div class="sg_head">
                        <div class="sg_head_title">今日畅销</div>
                        <ul class="switchP">
                            <li ext="1" ></li>
                            <li ext="2"></li>
                            <li ext="3"></li>
                            <li ext="4"></li>
                        </ul>
                    </div>
                    <div class="sg_body">
                        <ul class="sg_body_1" id="sg_body_1">

                        </ul>
                    </div>
                </div>

                <div class="cad1">
                    <div class="cad1_head">
                        <div class="cad1_head_title">厂商周</div>
                        <ul class="switchP">
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                    <div class="cad1_body">
                        <div class="cad1_body_ad1"><img src="${pageContext.request.contextPath}/data-folder/front/images/fae68042-adc9-49d7-bd25-c558df3b7bea_g.jpg" /></div>
                        <div class="cad1_body_ad1"><img src="${pageContext.request.contextPath}/data-folder/front/images/ea9ac380-6352-4e1a-b90c-83608ca73649_g.jpg" /></div>
                        <div class="cad1_body_ad1"><img src="${pageContext.request.contextPath}/data-folder/front/images/fae68042-adc9-49d7-bd25-c558df3b7bea_g.jpg" /></div>
                        <div class="cad1_body_ad1"><img src="${pageContext.request.contextPath}/data-folder/front/images/ea9ac380-6352-4e1a-b90c-83608ca73649_g.jpg" /></div>
                    </div>
                </div>
            </div>
        </div>
		<%--今日畅销结束--%>

        <div class="r"></div>
		
		
		<!--正品保障帮助中心-->
		<div id="layout_foot">
			<div id="serv">

				<div class="ng-ser-box-con">
					<div class="ng-promise">
						<dl>
							<dt class="zheng">正品保障</dt>
							<dd>
								<p><strong><a href="####"  >正品保障</a></strong></p>
								<p>正品保障，提供发票</p>
							</dd>
						</dl>
						<dl>
							<dt class="jisu">急速物流</dt>
							<dd>
								<p><strong><a href="####"  >急速物流</a></strong></p>
								<p>急速物流，急速送达</p>
							</dd>
						</dl>
						<dl>
							<dt class="wuyou">无忧售后</dt>
							<dd>
								<p><strong><a href="####" >无忧售后</a></strong></p>
								<p>7天无理由退换货</p>
							</dd>
						</dl>
						<dl>
							<dt class="te">特色服务</dt>
							<dd>
								<p><strong><a href="####"  >特色服务</a></strong></p>
								<p>私人定制家电套餐</p>
							</dd>
						</dl>
						<dl>
							<dt class="help">帮助中心</dt>
							<dd>
								<p><strong><a href="####"  >帮助中心</a></strong></p>
								<p>您的购物指南</p>
							</dd>
						</dl>
						<div class="clear"></div>
					</div>
					<div class="ng-help-box">
						<dl>
							<dt>购物指南</dt>
							<dd><a href="####">导购演示</a></dd>
							<dd><a href="####">免费注册</a></dd>
							<dd><a href="####">会员等级</a></dd>
							<dd><a href="####">常见问题</a></dd>
							<dd><a href="####">品牌大全</a></dd>
						</dl>
						<dl>
							<dt>支付方式</dt>
							<dd><a href="####">易付宝支付</a></dd>
							<dd><a href="####">网银支付</a></dd>
							<dd><a href="####">快捷支付</a></dd>
							<dd><a href="####">分期付款</a></dd>
							<dd><a href="####">货到付款</a></dd>
							<dd><a href="####">任性付支付</a></dd>
						</dl>
						<dl>
							<dt>物流配送</dt>
							<dd><a href="####">免运费政策</a></dd>
							<dd><a href="####">配送服务承诺</a></dd>
							<dd><a href="####">签收验货</a></dd>
							<dd><a href="####">物流查询</a></dd>
						</dl>
						<dl>
							<dt>售后服务</dt>
							<dd><a href="####">退换货政策</a></dd>
							<dd><a href="####">退换货流程</a></dd>
							<dd><a href="####">购买延保服务</a></dd>
							<dd><a href="####">退款说明</a></dd>
							<dd><a href="####">退换货申请</a></dd>
							<dd><a href="####">维修/保养</a></dd>
						</dl>
						<dl>
							<dt>商家服务</dt>
							<dd><a href="####">商家入驻</a></dd>
							<dd><a href="####">培训中心</a></dd>
							<dd><a href="####">信息公告</a></dd>
							<dd><a href="####">广告服务</a></dd>
							<dd><a href="####">商家帮助</a></dd>
							<dd><a href="####">服务市场</a></dd>
						</dl>
					</div>
					<div class="ng-app-down">
						<p>易购客户端</p>
						<a href="####">
							<img src="${pageContext.request.contextPath}/data-folder/front/img/bottom-app-down.png" alt="" height="87" width="87" />
						</a>
					</div>
					<div class="clear"></div>
				</div>

			</div>
			<div id="layout_partner">
				<div id="partner">
					<div class="ng-new-pro-con">
						<div class="ng-new-pro-list">
							<dl>
								<dt>
                                    <a href="####"><img src="${pageContext.request.contextPath}/data-folder/front/img/foot1.png" height="80" width="80" /></a>
                                </dt>
								<dd>
									<p class="ng-title"><a href="####">政企采购</a></p>
									<p class="ng-intro"><a href="####">为企业用户量身定做的采购平台，优选办宁易购全站商品，为企业采购提供专业化的一站式采购解决方案。</a></p>
								</dd>
							</dl>
							<dl>
								<dt>
								    <a href="####" ><img src="${pageContext.request.contextPath}/data-folder/front/img/foot2.png" height="80" width="80" /></a>
								</dt>
								<dd>
									<p class="ng-title"><a href="####">办宁众包</a></p>
									<p class="ng-intro"><a href="####">以办宁全渠道包销为主要特点，整合全社会众包资源，扶持创新企业，推广创新产品。</a></p>
								</dd>
							</dl>
						</div>
						<div class="ng-serch-suning">
							<dl>
								<dt></dt>
								<dd>
									<p class="ng-title">身边办宁</p>
									<p class="ng-intro">全国300个城市1600家门店3000个服务点为您提供最贴心的服务！</p>
									<a href="####" class="srh-btn"></a>
								</dd>
							</dl>
						</div>
						<div class="footer-egg-con"></div>
					</div>
				</div>
				<div class="foot_list">
					<p class="ng-url-list">
						<a href="" target="_blank">办宁云商</a><span>|</span>
						<a href="" target="_blank">办宁互联</a><span>|</span>
						<a href="" target="_blank">办宁金融</a><span>|</span>
						<a href="" target="_blank">易付宝</a><span>|</span>
						<a href="" target="_blank">办宁满座网</a><span>|</span>
						<a href="" target="_blank">PPTV</a><span>|</span>
						<a href="" target="_blank">红孩子</a><span>|</span>
						<a href="" target="_blank">缤购</a><span>|</span>
						<a href="" target="_blank">乐购仕</a><span>|</span>
						<a href="" target="_blank">办宁物流</a><span>|</span>
						<a href="" target="_blank">办宁美国</a><span>|</span>
						<a href="" target="_blank">办宁香港</a>
					</p>
					<p class="ng-url-list">
						<a href="" target="_blank">关于办宁易购</a><span>|</span>
						<a href="" target="_blank">联系我们</a><span>|</span>
						<a href="" target="_blank">诚聘英才</a><span>|</span>
						<a href="" target="_blank">供应商入驻</a><span>|</span>
						<a href="" target="_blank">办宁联盟</a><span>|</span>
						<a href="" target="_blank">办宁招标</a><span>|</span>
						<a href="" target="_blank">友情链接</a><span>|</span>
						<a href="" target="_blank">法律申明</a><span>|</span>
						<a href="" target="_blank">用户体验提升计划</a><span>|</span>
						<a href="" target="_blank">股东会员认证</a>
					</p>
					<p class="ng-copyright">Copyright(c) 2002-2015 ，电子商务有限公司版权所有 885551号</p>
				</div>
			</div>

		</div>
		<!--正品保障帮助中心-->
		<div id="right_float">
			<div class="top">
				<p class="top_top">
					<a class="geren" href="####"></a>
				</p>
				<p class="gwc">
					<a class="gouwuche" href="####"></a>
					<span class="tip" href="####">购物车</span>
					<span class="rows">0</span>
				</p>
			</div>
			<div class="center">

				<p class="yidong">
					<a class="chongzhi" href="####"></a>
					<a class="l_r1 l_rw" href="####">充值</a>
				</p>
				<p class="yidong">
					<a class="zuji yidong" href="####"></a>
					<a class="l_r2 l_rw" href="####">足迹</a>
				</p>
			</div>
			<div class="down">
				<p class="yidong">
					<a class="erwei" href="####"></a>
					<a class="l_r3 l_rw3" href="####"><img src="${pageContext.request.contextPath}/data-folder/front/img/ewm.png" /></a>
				</p>
				<p class="yidong">
					<a class="jiaoliu" href="####"></a>
					<a class="l_r4 l_rw2" href="####">在线咨询</a>
				</p>
				<p class="yidong">
					<a class="liuyan" href="####"></a>
					<a class="l_r5 l_rw2" href="####">调查问卷</a>
				</p>
				<p class="yidong">
					<a class="fanhui" href="#"></a>
					<a class="l_r6 l_rw2" href="#">返回顶部</a>
				</p>
			</div>
		</div>
		<div id="left_float"></div>

	</body>

</html>