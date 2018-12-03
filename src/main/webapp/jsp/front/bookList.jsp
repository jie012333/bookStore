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
		<script type="text/javascript" src="${pageContext.request.contextPath}/data-folder/front/js/bookList.js"></script>
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
		<div id="layout_sort" >
			<div id="sort">
				<div class="sort_index scrollx">
					<a class="sort_index_top" href="####">
						<em class="ng-iconfont">&#xe621;</em><span>全部商品分类</span>
					</a>
					<div class="sort_index_down scrolly" hidden>
						<ul class="list" id="categoryList">
						<%--分类数据库获取--%>
						</ul>
						
					</div>
				</div>
				<div class="sort_center ">
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
		<!-- 灰色导航条 -->
		<div class="sub" style="width:100%;height:40px;background: #f3f3f3">
			<ul>
				<li><a name="nav2" target="_blank" href="###">图书排行榜</a></li>
				<li><a name="nav2" target="_blank" href="###">童书</a></li>
				<li><a name="nav2" target="_blank" href="###">教辅</a></li>
				<li><a name="nav2" target="_blank" href="###">小说</a></li>
				<li><a name="nav2" target="_blank" href="###">文学</a></li>
				<li><a name="nav2" target="_blank" href="###">青春文学</a></li>
				<li><a name="nav2" target="_blank" href="###">传记</a></li>
				<li><a name="nav2" target="_blank" href="###">成功励志</a></li>
				<li><a name="nav2" target="_blank" href="###">管理</a></li>
				<li><a name="nav2" target="_blank" href="###">历史</a></li>
				<li><a name="nav2" target="_blank" href="###">哲学宗教</a></li>
				<li><a name="nav2" target="_blank" href="###">亲子家教</a></li>
				<li><a name="nav2" target="_blank" href="###">保健养生</a></li>
				<li><a name="nav2" target="_blank" href="###">考试</a></li>
				<li><a name="nav2" target="_blank" href="###">科技</a></li>
				<li><a name="nav2" target="_blank" href="###">进口原版</a></li>
				<li><a name="nav2" target="_blank" href="###">电子书</a></li>
				<li><a name="nav2" target="_blank" href="###">网络文学</a></li>
			</ul>
		</div>

		<%--主体书籍部分--%>
		<div class="center1" id="floor_l_head2">
			<div class="center2">
				<div class="sg ">
					<div class="sg_head">
						<div class="layout_location"><a href="###">欢乐购</a><span class="path">&gt;</span>
							<a href="###">图书榜</a>
							<span class="path">&gt;</span>
							<a href="###">电子书新书热卖榜</a>
							<span class="path">&gt;</span>
						</div>
					</div>
					<div class="sg_body">
						<ul class="sg_body_1" id="sg_body_1">

						</ul>
					</div>
				</div>
				<div class="cad1">
					<div class="cad1_head">
						<div class="cad1_head_title"></div>
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
		<%--主体书籍部分结束--%>
		<div class="r"></div>
		<%--分页--%>
		<br><br><br><br><br>
		<div class="paging">
			<div id="demo3">
			</div>
		</div>
		<script src="${pageContext.request.contextPath}/data-folder/page/jquery.paginate.js" type="text/javascript"></script>
		<script type="text/javascript">

		</script>
		<br><br><br><br>
		<%--分页结束--%>

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