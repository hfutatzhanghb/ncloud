<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="./resources/css/jquery.fullPage.css" />

<link href="./resources/css/common.css" type="text/css" rel="stylesheet" />
<link href="./resources/css/bootstrap.css" rel="stylesheet" type='text/css' />

<script src="./resources/js/jquery-1.9.1.js" ></script>
<script src="./resources/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="./resources/js/bootstrap.min.js" type="text/javascript"></script>
<title>在线仿真</title>
</head>

<body>
<div>
	<div class="section section1">
    <div class="nav">
     <div class="link menu">
      <div class="row">
     <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
      <h1 class="logo"><a href="/ncloud/index" >领域云</a></h1>
      </div>
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
      <ul class="links">
      <li class="current"><a href="/ncloud/index">首页</a></li>
      <li><a href="/ncloud/software">软件资源库</a></li>
      <li><a href="/ncloud/data">数据资源库</a></li>
      <li><a href="/ncloud/simulation">在线仿真</a></li>
      <li><a href="http://localhost:8380/">科研社区</a></li>
      <li><a href="/ncloud/aboutus">关于我们</a></li>
      </ul>
      </div>
     </div>
    </div>
</div>
</div>
</div>

<div class="bg-us" align="center">

</div>
<div class="page_style" >
 
 <!--面包屑-->
 <div class="locationBox">
  <div class="pages_style">
   <i class="icon_map"></i>
   <div class="locationBox_name">您现在的位置：<a href="/ncloud/index">首页</a>&gt;<a href="/ncloud/super">在线仿真</a></div>
  </div>
  </div>
  <!--具体内容-->
  <div class="page_content clearfix">
   <div class="page_Section">
    <div class="Section_list">
       <div class="Section_title"><em class="icon_wen"></em>类型</div>
       <ul id="section" class="list">
        <li ><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('yunxing',this);">运行环境综合仿真</a></li>
         <li ><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('shigu',this);">事故环境综合仿真</a></li>
       </ul>
    </div>
     
   </div>
   <div class="page_detailed">
   <div id="yunxing" class="page_Switchbox" style="display:none;">
     
     <div class="bd">
      <ul>
       <h3 style=" color:#1587C4; font-weight:bold; margin-top:20px; text-align:center;">运行环境综合仿真  </h3><br/>
      <p class="indent">核安全中子学全过程数值模拟云服务包括中子学全过程耦合计算、中子学全过程一体化高精度建模、
                  多维安全特性动态可视化仿真等三类云服务，其中，高精度建模为中子学计算提供精准的计算模型以保证初始输入条件的精度，
                  动态可视化仿真对中子学计算的结果进行直观智能的分析，便于科研人员科研活动的开展。
           <br />
      </p>
      <p><img  src="./resources/images/yunxing.png" width="100%" /></p>
       <center>
      <a href="http://www.supermc.cn/login/loginPage.action" target="_blank">
         <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问运行安全云</button>
       </a>
       </center>
      </ul>
     </div>
    </div>
    <div id="shigu" class="page_Switchbox">
    
     <div class="bd">
      <ul>
       <h2 style=" color:#1587C4; font-weight:bold; margin-top:20px; text-align:center;">事故环境综合仿真  </h2>
      <p class="indent">为保障公众核环境安全，研究核事故中放射性核素扩散模拟，对核事故后放射性后果评估核应急决策具有重要意义。
      开展事故安全仿真，主要针对针对不同介质条件下开展不同尺度的放射性污染物输运和扩散模型研究，包括大、中、小等不同尺度的大气扩
      散模型以及河口、海岸、海洋等场景下的近距离、长距离水体扩散模型；选用国际公开的试验数据以及福岛核事故监测数据，对建立的多介
      质大尺度放射性污染物输运和扩散模型进行验证。在设计算机模拟核事故情况放射性核素在大气、水体中的扩散情况，为核应急快速、
      科研的决策支持提供决策基础与依据。
      <br />
      具体功能尚在开发中
      </p>
      <center>
      <h3>具体功能尚在开发中</h3>
      <p><img  src="./resources/images/timg.jpg" alt="Under Construction" align="middle" width="500" /></p>
      
    <!--  <a href="http://www.supermc.cn/login/loginPage.action" target="_blank">
         <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问事故安全云</button>
       </a>  -->
       </center>
      </ul>
     </div>
    </div>
   </div>
  </div>
 </div>

 <!--底部信息-->
<div class="footer_style">
 <div class="footer-copyright clearfix">
 <div class="footerbox clearfix">
  Copyright©2018 中国科学院核能安全技术研究所  版权所有   站长统计
  </div>
 </div>
</div>
<div id="backToTop">
	<a href="javascript:;" onfocus="this.blur();" class="backToTop_a png"></a>
</div>

</body>

<script>
jQuery(".page_Switchbox").slide({trigger:"click"});

$(function() {// 初始化内容
	$(".Section_title").click(function(){
		$('#section').toggle();
	});
	
});  

function clickPro(val,obj){
	$(obj).parents("li").addClass('hover');
	$(obj).parents("li").siblings().removeClass('hover');
	$("#"+val).show();
	$("#"+val).siblings().hide();
	
}
</script>
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
</html>
