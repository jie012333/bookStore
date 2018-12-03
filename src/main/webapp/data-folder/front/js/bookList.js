//顶部导航广告
$(function  () {

    /*请求获取session中的用户*/
    $.ajax({
        url:'/bookStore/userInfo',
        type:'POST',
        dataType:'JSON',
        async:true,
        cache:true,
        data:{},
        success:function (result) {
            console.log(result);
            if(result.code == 200){
                $("#span-userName").text("您好," + result.data.userName);
                $("#login-userName").css("display","block");
                $("#login-register").css("display","none");
            }else {
                $("#login-userName").css("display","none");
                $("#login-register").css("display","");
            }
        }
    })

    /*请求获取*/
    $.ajax({
        url: '/bookStore/categoryList',
        type: 'POST',
        dataType: 'JSON',
        async: true,
        cache: true,
        data: {},
        success: function (result) {
            console.log(result);
            if (result.code == 200) {
                var a = '',b='',c='';
                $.each(result.data.category, function (index, item) {
                    a += '<li><div class="ng-iconfont1"><em class="ng-iconfont ">&#xe806;</em><a href="###" >'+item.cname+'</a></div>' +
                        '<div class="go_right"><div class="cate-list">';
                    $.each(item.childList, function (index2, item2) {
                        b += '<dl><dt><em class="ng-iconfont ">&#xe673;</em>'+item2.cname+'</dt><dd>';
                        $.each(item2.childList, function (index3, item3) {
                            c += '<a href="####">'+item3.cname+'</a>';
                        });
                        b += c +'</dd></dl>';
                    });
                    a += b + '</div></div></li>';
                });
                $("#categoryList").html(a);
            }
        }
    });

    /*请求获取*/
    bookList()
});
function bookList(pageNum) {
    if(pageNum == null){
        pageNum = 1;
    }
    $.ajax({
        url: '/bookStore/bookList?pageNum='+pageNum,
        type: 'POST',
        dataType: 'JSON',
        async: true,
        cache: true,
        data: {},
        success: function (result) {
            console.log(result);
            if (result.code == 200) {
                var a = '',b='',c='';
                $.each(result.data.pageInfo.list, function (index, item) {
                    a += '<li><div class="inner"><a class="pic" href=""><img src="'+getRootPath()+'/data-folder/book/'+item.imageSmall+'" border="0"/></a>' +
                        '<p class="price">' +
                        '<span class="price_n">&yen;'+item.currPrice+'</span>' +
                        '<span class="price_r">&yen;'+item.price+'</span>' +
                        '(<span class="price_s">'+item.discount+'折</span>)' +
                        '</p>' +
                        '<p><a id="bookname" title="'+item.bookName+'" href="'+item.bid+'">'+item.bookName+'</a></p>' +
                        '<p><a href="${authorUrl }" name=\'P_zz\' title=\'${book.author }\'>'+item.author+'</a></p>' +
                        '<p class="publishing">' +
                        '<span>出 版 社：</span><a href="${pressUrl }">'+item.press+'</a>' +
                        '</p>' +
                        '<p class="publishing_time"><span>出版时间：</span>'+item.publishtime+'</p>' +
                        '</div></li>';
                });
                $("#sg_body_1").html(a);
                $(function() {
                    $("#demo3").paginate({
                        count: result.data.pageInfo.pages,
                        start: result.data.pageInfo.pageNum,
                        display: 10,
                        border: true,
                        border_color: '#6ed5f8',
                        text_color: '#000000',
                        background_color: '#FFF',
                        border_hover_color: '#bab7b7',
                        text_hover_color: '#FFF',
                        background_hover_color: '#e66623',
                        rotate: false,
                        images: false,
                        mouse: 'press'
                    });
                });
            }
        }
    });
}


function getRootPath() {
    //当前页面
    var curTotalPath = window.document.location.href;
    //当前页面路径
    var pathName = window.document.location.pathname;
    //当前页面路径起始位置
    var pathNamePos = curTotalPath.indexOf(pathName);
    //host
    var hostPath = curTotalPath.substring(0, pathNamePos);
    //工程名
    var projectName = pathName.substr(0, pathName.substr(1).indexOf('/') + 1);
    return hostPath + projectName;
}

/*退出*/
function quit() {
    $.ajax({
        url:'/bookStore/quitUser',
        type:'POST',
        dataType:'JSON',
        success:function (result) {
            console.log(result);
            if(result.code == 200){
                window.location.reload()
            }
        }
    })
}


$(document).ready(function(){
//	var topMain=$("#charact").offset().top;
//	alert(topMain);
    var Logo=$("#layout_float_nav");
    $(window).scroll(function(){
        if($(window).scrollTop()>700){

            Logo.addClass("ScrollNav");
        }else{
            Logo.removeClass("ScrollNav");}
    });

});

//详细列表缓慢下拉效果
//1我要先获取所有的有子下拉菜单的元素  x
//2我要获取所有子下拉菜单  y
//3我要给所有x元素加上hover事件
//4我要做出一个函数  鼠标移到x上去就显示y 并且附加下拉的动画
//5我点击谁就把效果给哪个y
$(document).ready(function(){
    $(".scrollx").hover(function(){
        $(this).find(".scrolly").stop().slideDown("slow");
        $(this).find('.shouji').addClass('h');
    },function(){
        $(this).find(".scrolly").stop().slideUp("slow");
        $(this).find('.shouji').removeClass('h');
    });

});

/*==========================分页=============================*/



