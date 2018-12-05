<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="baidu-site-verification" content="wNCMVYkRvA" />
<title>中国核安全科技领域云</title>
<meta name="keywords" content="智慧园区,智慧产业园区,智慧园区规划,招商管理,文化园区规划,产业园区规划,智慧安防,园区招商,文化产业园区,园区规划方案,园区转型,物业管理,园区企业服务,能源管理,智慧楼宇,园区改造,智慧园区APP">
<meta name="description" content="园圈,飞企园圈智慧园区,中国智慧园区解决方案领导品牌,全面规划打造文化园区、产业园区、工业园区的智慧转型方案,一站式实现园区招商,园区安防,物业管理,能源管理等多个功能。创新打造智慧园区运营管理云服务平台,提供完整全面的信息化服务及咨询,打造高效,和谐,人文的智慧园区.">

<style>
.comhead{ position: relative; left: -800px;}
.combody{ position: relative; bottom: -50px; opacity: 0;}
.yunzi1,.yunzi2,.yunzi3,.yunzi4,.yunzi5{ position: relative; left: -80px; opacity: 0.3;}
.lef{opacity: 0.8;}
.rigt{ position: relative; left: -80px;opacity: 0.1;}
html, body, div, span,
 ol, ul, li,
audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	/*font-size: 100%;
	font: inherit;
	vertical-align: baseline;*/
}
html,body{overflow: hidden;}
.btnGroup1{opacity: 0;}
.btnGroup2{opacity: 0;}
</style>
<link rel="stylesheet" href="./resources/css/style.css" >
<link rel="stylesheet" href="./resources/css/jquery.fullPage.css" >
<link rel="stylesheet" type="text/css" href="./resources/css/css.css" />
<link href="./resources/css/bootstrap.css" rel="stylesheet" type='text/css' />
<script src="./resources/js/jquery-1.9.1.js" ></script>
</head>

<body>
    
<div id="dowebok">
	<div class="section section1 cd-slider-wrapper">
    <div class="nav">
     <div class="link menu">
      <div class="row">
     <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
      <h1 class="logo"><a href="/ncloud/index" >领域云</a></h1>
      </div>
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
      <ul class="links">
      <li ><a href="/ncloud/index">首页</a></li>
      <li><a href="/ncloud/simulation">软件资源库</a></li>
      <li><a href="/ncloud/data">数据资源库</a></li>
      <li ><a href="/ncloud/simulation">在线仿真</a></li>
      <li class="current"><a href="http://localhost:8380/">科研社区</a></li>
      <li><a href="/ncloud/aboutus">关于我们</a></li>
      </ul>
      </div>
     </div>
    </div>
</div> 
<div class="yunlt" style="margin-top:10%;align:center">
     
    </div>



</div>
<div class="gaoXian"></div>
<div class="foot2">
				<div class="flink">
				<h3><a href="/ncloud/aboutus">联系我们</a>&nbsp;&nbsp;</h3>
                <p><a>Copyright&copy;2018 中国科学院核能安全技术研究所&nbsp; 版权所有&nbsp;&nbsp;</a>
			
</p>
				</div>
		</div>
		 </div>
<script>
// tab标签切换广告图导航
    jQuery.jqtab = function(tabtit,tab_conbox,shijian) {
        $(tab_conbox).find(".tab_con").hide();
        $(tabtit).find("li:first").addClass("usSelect").show();
        $(tab_conbox).find(".tab_con:first").show();

        $(tabtit).find("li").bind(shijian,function(){
          $(this).addClass("usSelect").siblings("li").removeClass("usSelect");
            var activeindex = $(tabtit).find("li").index(this);
            $(tab_conbox).children().eq(activeindex).fadeIn(20).siblings().hide();
           return false;
        });
    };
// tab标签切换
    $.jqtab(".filter_tabs_ul",".filter_boxs","mousedown");

// tab标签切换职位
    jQuery.jqtab = function(tabtit,tab_conbox,shijian) {
        $(tab_conbox).find(".tab_con").hide();
        $(tabtit).find("li:first").addClass("weizhiHover").show();
        $(tab_conbox).find(".tab_con:first").show();

        $(tabtit).find("li").bind(shijian,function(){
          $(this).addClass("weizhiHover").siblings("li").removeClass("weizhiHover");
            var activeindex = $(tabtit).find("li").index(this);
            $(tab_conbox).children().eq(activeindex).show().siblings().hide();
           return false;
        });
    };
// tab标签切换
    $.jqtab(".filter_tabs_zhiweiul",".filter_zhiweiboxs","mouseover");


/*顶部导航切换	*/
$(function() {
	var $t, leftX, newWidth;

	$('.menu ul').append('<div class="block"></div>');
	var $block = $('.block');

	$block.width($(".current").width()).css('left', $('.current a').position().left).data('rightLeft', $block.position().left).data('rightWidth', $block.width());

	$('.menu ul li').find('a').hover(function() {
		$t = $(this);
		leftX = $t.position().left;
		newWidth = $t.parent().width();

		$block.stop().animate({
			left: leftX,
			width: newWidth
		},300);
	}, function() {
		$block.stop().animate({
			left: $block.data('rightLeft'),
			width: $block.data('rightWidth')
		},300)
	})
	// $($('.menu ul li.current'))[0].setAttribute('id','firstLi');
	// var getClass = $($('.menu ul li.current'))[0].getAttribute('class','current');
	// console.log(getClass)
})
/*客服悬浮效果*/
$(function(){
	//Sldie
	$(".kefu").mouseenter(function(){
		$(".kefulist").fadeIn();
	});
	$(".kefu").mouseleave(function(){
		$(".kefulist").hide();
	});
});
$(function(){
	//Sldie
	$(".kefu2").mouseenter(function(){
		$(".kefulist2").fadeIn();
	});
	$(".kefu2").mouseleave(function(){
		$(".kefulist2").hide();
	});
});
$(function(){
	//Sldie
	$(".kefu3").mouseenter(function(){
		$(".kefulist3").fadeIn();
	});
	$(".kefu3").mouseleave(function(){
		$(".kefulist3").hide();
	});
});
$(function(){
	//Sldie
	$(".kefu4").mouseenter(function(){
		$(".kefulist4").fadeIn();
	});
	$(".kefu4").mouseleave(function(){
		$(".kefulist4").hide();
	});
});

<!--加盟表单弹窗-->
function open_v(){
        $('#video_player').stop().fadeIn();
    }
function close_v(){
        $('#video_player').stop().hide();
    }
</script>

</body>
</html>