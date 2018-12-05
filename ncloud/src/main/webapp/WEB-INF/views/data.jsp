<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--  
<link rel="stylesheet" href="./resources/css/jquery.fullPage.css" />

<link href="./resources/css/common.css" type="text/css" rel="stylesheet" />
<link href="./resources/css/bootstrap.css" rel="stylesheet" type='text/css' />

<link href="./resources/css/simu.css" rel="stylesheet" type='text/css' />
<link href="./resources/css/mydiv.css" rel="stylesheet" type='text/css' />
<script src="./resources/js/jquery-1.9.1.js" ></script>
<script src="./resources/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="./resources/js/bootstrap.min.js" type="text/javascript"></script>

-->
<link rel="stylesheet" href="./resources/css/jquery.fullPage.css" />
<link href="./resources/css/common.css" type="text/css" rel="stylesheet" />
<link href="./resources/css/bootstrap.css" rel="stylesheet" type='text/css' />
<link href="./resources/css/simu.css" rel="stylesheet" type='text/css' />

<script src="./resources/js/jquery-1.9.1.js" ></script>
<script src="./resources/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="./resources/js/bootstrap.min.js" type="text/javascript"></script>

<title>数据资源库</title>
<style>
h4{
text-align:center;
}
h4 a{
color:#c21515;
margin-left:25%; 
}
</style>
</head>

<body>

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
<div class="bg-data" align="center">

</div>

<div class="page_style">

 <!--面包屑-->
  <div class="page_content clearfix">
   <div class="page_Section">
    <div class="Section_list">
       <div class="Section_title"><em class="icon_wen"></em>类型</div>
       <ul id="section" class="list">
        <li><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('NDL',this);">核数据库</a></li>
        <li><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('DMS',this);">材料数据库</a></li>
        <li><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('MCS',this);">核安全分析数据库</a></li>
        <li><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('CFD',this);">法律法规及行业标准数据库</a></li>
        <li><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('fddb',this);">实验装置信息库</a></li> 
        <li><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('rfdb',this);">装置实验数据数据库</a></li> 
        <li><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('PSA',this);">核领域例题模型数据库</a></li>
        <li><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('nedb',this);">核应急公共数据平台</a></li>          
        </ul>
    </div>
     
   </div>
   <div class="page_detailed">
   
   <div id="jianjie" class="page_Switchbox">
     
     <div class="bd">
      <ul>
       <h3 style=" color:#1587C4; font-weight:bold; margin-top:20px; text-align:center;">数字资源库简介  </h3><br/>
      <p class="indent">核安全数据资源库建设是先进核能系统研发、设计与建设中的必要基础与前提，针对核数据数据量大、
      数据格式多样化、应用形式复杂、计算资源需求量大等特点，通过开展核能数据收集以及核能数据库管理系统开发，
      在充分研究先进核能系统的特点基础上，依托核能安全技术研究所及国内外其他核能研究设计单位的研究成果，
      设计开发了一系列核能领域的专业数据库，实现多元异构核安全数据的整合、管理、优化以及核安全计算模型资源的整合及应用，
      主要包括核数据库、反应堆核材料数据库、部件数据库、可靠性数据库以及核能安全数据库等。通过核安全数据资源库的建立实现开放共享，
      对我国核科学以及先进核能系统发展都具有重要的现实意义。 
    </p>
      <p class="indent">集成服务&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        本网站除了提供基本的核能数据服务外，针对核能设计研究的需求，提供集成化的应用服务，主要有数据分析、数据定制、堆设计计算、等核领域常用数据库。</p>
      <p class="indent">&nbsp;</p>
      </ul>
     </div>
    </div>
    
   <!-- /**************************************//////EXFOR///////************************************/  -->
    <div id="NDL" class="page_Switchbox" style="display:none;">
     <div class="bd">
      <ul>
      <!--EXFOR简介下载 -->
      <h3 style=" color:#1587C4; font-weight:bold; margin-top:20px; text-align:center;">实验核数据库  </h3><br/>
    	<div class="content rgzn">
    	<!-- EXFOR -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/iaea.png" alt="">
                            <a href="https://www-nds.iaea.org/exfor/exfor.htm" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>EXFOR</h2>
                            <p>发行单位： IAEA</p>
                            <p>数据库最新版本：</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">EXFOR（Experimental nuclear reaction data），实验核反应数据库。包括中子、部分带电粒子和光子的核反应实验数据。其中，中子的反应数据库没有限制，并且可以直接申请引用，而光子和带电离子的反应数据则经过一定的筛选，用户仅能取得其中部分数据用于研究。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>NRDC（Network of Nuclear Reaction Data Centers）</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>https://www-nds.iaea.org/exfor/exfor.htm</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 <!--<img src="./resources/suggest/SuperMC.png" alt="" />   -->
                       			          暂缺
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>                
       </div>
      
      <h3 style=" color:#1587C4; font-weight:bold; margin-top:20px; text-align:center;">评价核数据库  </h3><br/>
    	<div class="content rgzn">
    	<!-- ENDF -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/nndc.png" alt="">
                            <a href="http://www.nndc.bnl.gov/exfor/endf00.jsp" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>ENDF</h2>
                            <p>发行单位： NNDC [USA]</p>
                            <p>数据库最新版本：ENDF-VIII.0</p>
                            <p>数据库最新更新时间：2018-02</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">ENDF（Evaluated Nuclear Data File）是由美国布鲁克海文国家实验室（BNL）的国家中子截面中心发布。最新版本的ENDL/B-VII。ENDL/B-VII的中子评价源包括393个中子评价数据，光子评价源包括100个光子评价数据。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>NRDC（Network of Nuclear Reaction Data Centers）</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.nndc.bnl.gov/exfor/endf00.jsp</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 <!--<img src="./resources/suggest/SuperMC.png" alt="" />   -->
                       			          暂缺
                                </td>
                            </tr>
                        </table>
                    </div>
                </div> 
                <!-- JEFF -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/nea.png" alt="">
                            <a href="http://www.oecd-nea.org/dbdata/jeff/jeff33/index.html" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>JEFF</h2>
                            <p>发行单位：NEA [OECD]</p>
                            <p>数据库最新版本：JEFF-3.3</p>
                            <p>数据库最新更新时间：2018-02</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">JEFF是由经合组织(OECD)原子能机构Nuclear Energy Agency(NEA)发布的评价核数据库。最新版本为JEFF3.3。JEFF3.1包括381个核素的中子评价核数据，100个元素的光子评价核数据。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>NRDC（Network of Nuclear Reaction Data Centers）</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.oecd-nea.org/dbdata/jeff/jeff33/index.html</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 <!--<img src="./resources/suggest/SuperMC.png" alt="" />   -->
                       			          暂缺
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>   
                <!-- JENDL -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/jaea.png" alt="">
                            <a href="https://wwwndc.jaea.go.jp/index.html" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>JEDNL</h2>
                            <p>发行单位：JAEA</p>
                            <p>数据库最新版本：JENDL-4.0</p>
                            <p>数据库最新更新时间：2018-03</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">JENDL（Japanese Evaluated Nuclear Data library）是由日本原子能（JAEA）下属核数据库委员会（JNDC）发布。最新版本的为JENDL3.3。JENDL3.3包括337种元素的中子评价数据，94种元素的光子评价数据。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>NRDC（Network of Nuclear Reaction Data Centers）</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>https://wwwndc.jaea.go.jp/index.html</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 <!--<img src="./resources/suggest/SuperMC.png" alt="" />   -->
                       			          暂缺
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>  
                <!-- TENDL -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/tendl.png" alt="">
                            <a href="https://tendl.web.psi.ch/tendl_2017/tendl2017.html" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>TENDL</h2>
                            <p>发行单位：荷兰NRG与法国CEA</p>
                            <p>数据库最新版本：TENDL-2017</p>
                            <p>数据库最新更新时间：2018-03</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">TENDL是由TALYS程序处理得到的，能够在基础物理和应用物理中直接使用的数据库。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>NNDC</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>https://tendl.web.psi.ch/tendl_2017/tendl2017.html</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 <!--<img src="./resources/suggest/SuperMC.png" alt="" />   -->
                       			          暂缺
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <!-- CENDL -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/cendl.png" alt="">
                            <a href="http://www.nuclear.csdb.cn/pingjia.html" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>CENDL</h2>
                            <p>发行单位：中国国家核数据中心 CNDC</p>
                            <p>数据库最新版本：CENDL-3.1</p>
                            <p>数据库最新更新时间：未给出/早于2008</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">	全套中子评价核数据是描述原子核与辐射特别是中子入射与核相互作用性质的核反应数据，包括反应截面、微分截面及双微分截面等核反应数据。全套中子评价数据库是指用途广泛的全套、完整的通用数据库。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>NRDC（Network of Nuclear Reaction Data Centers）</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.nuclear.csdb.cn/pingjia.html</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 <!--<img src="./resources/suggest/SuperMC.png" alt="" />   -->
                       			          暂缺
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>   
                <!-- ROSFOND -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/ippe.png" alt="">
                            <a href="https://vant.ippe.ru/en/" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>ROSFOND</h2>
                            <p>发行单位： CJD/IPPE</p>
                            <p>数据库最新版本：ROSFOND-2010/BROND-3.1</p>
                            <p>数据库最新更新时间：2016</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">ROSFOND/BROND是由俄罗斯核能数据工作组发布的评价核数据库。最新版本为BROND3.0。BROND3.0包括121个核素的中子评价数据，80种元素的光子评价数据。

</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>NRDC（Network of Nuclear Reaction Data Centers）</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>https://vant.ippe.ru/en/</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 <!--<img src="./resources/suggest/SuperMC.png" alt="" />   -->
                       			          暂缺
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>            
       </div>
      
      <!--HEDNL简介下载 -->
      <h3 style=" color:#1587C4; font-weight:bold; margin-top:20px; text-align:center;">应用核数据库  </h3><br/>
    	<div class="content rgzn">
    	<!-- HENDL -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/cendl.png" alt="">
                            <a href="http://www.fusion.csdb.cn/sdb/fusion.nuclear.work.hendl.jsp" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>HEDNL</h2>
                            <p>发行单位： FDS凤麟核能团队</p>
                            <p>数据库最新版本：HENDL-3</p>
                            <p>数据库最新更新时间：未给出</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">HENDL是为满足核科学和核技术领域内的数字模拟需要，中科院核能安全技术研究所研制的可用于中子/光子耦合输运计算、同位素燃耗计算、活化计算、辐射剂量计算、辐照损伤计算等计算程序所需的混合评价核数据库 (Hybrid Evaluated Nuclear Data Library)，并广泛应用于聚变反应堆、聚变-裂变次临界混合堆的中子学计算分析中。
                            HENDL系列核数据库按照功能可以分为输运数据HENDL/MG/ MC/FG/CG、燃耗数据库HENDL/BU、响应函数数据库HENDL/RF。各个库的基本作用如下表所示。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>NRDC（Network of Nuclear Reaction Data Centers）</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.fusion.csdb.cn/sdb/fusion.nuclear.work.hendl.jsp</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 <!--<img src="./resources/suggest/SuperMC.png" alt="" />   -->
                       			          暂缺
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>            
                <!-- FENDL -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/iaea.png" alt="">
                            <a href="https://www-nds.iaea.org/fendl/" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>FENDL</h2>
                            <p>发行单位：IAEA</p>
                           	<p>数据库最新版本：FENDL-3.1</p>
                            <p>数据库最新更新时间：2018-01</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">FENDL系列数据库是由IAEA发布专门针对聚变装置的工作数据库，主要包括MG与MC的输运核数据库以及活化数据库FENDL/A。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>NRDC（Network of Nuclear Reaction Data Centers）</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>https://www-nds.iaea.org/fendl/</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 <!--<img src="./resources/suggest/SuperMC.png" alt="" />   -->
                       			          暂缺
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <!-- WIMSD -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/iaea.png" alt="">
                            <a href="https://www-nds.iaea.org/wimsd/" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>WIMSD</h2>
                            <p>发行单位：IAEA</p>
                            <p>数据库最新版本：WIMSD-5</p>
                            <p>数据库最新更新时间：2014</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">一个经过验证的WIMS-D格式的横截面库可以在69和172的能量组结构中使用，用于核反应堆的计算。包括最近发布的核数据库的170多份材料。NJOY核数据处理系统应用于在温-d点阵代码中建立的模型和约定之后生成横截面文件。可以从下载页面中检索图书馆、原始文件和更新的文档。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>NRDC（Network of Nuclear Reaction Data Centers）</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>https://www-nds.iaea.org/wimsd/</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 <!--<img src="./resources/suggest/SuperMC.png" alt="" />   -->
                       			          暂缺
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>               
       </div>
      
      <!--EXFOR简介下载 -->
    	<div class="content rgzn">
    	<!-- JENDL-HE -->
                 <!-- ADSLIB -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/iaea.png" alt="">
                            <a href="https://www-nds.iaea.org/ads/" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>ADSLIB</h2>
                            <p>发行单位：IAEA</p>
                            <p>数据库最新版本：</p>
                            <p>数据库最新版本：</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">2004年12月15日至17日在维也纳举行的国际原子能机构技术会议上，与会者建议为蒙特卡罗建立一个有限的范围测试库，并在分析INDC（NDS）-046l例题中使用确定性的传输代码。ADS核数据库的生成是由IAEA-NDS INDC（NDS）-0474进行的。2008年，在同样的处理程序（NDS）-0545的基础上，材料的数量从30个增加到156个。这些数据文件可以从网上下载，也可以在CD-ROM上获得（根据请求）。联系iaea/nds寻求建议和反馈。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>NRDC（Network of Nuclear Reaction Data Centers）</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>https://www-nds.iaea.org/ads/</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 <!--<img src="./resources/suggest/SuperMC.png" alt="" />   -->
                       			          暂缺
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>             
       </div>
      </ul>
      
     </div>
    </div>
  <!-- /***************************************////材料数据库  Database/////////****************************************/       -->
	<div id="DMS" class="page_Switchbox" style="display:none;">
     <div class="bd">
      <ul>
     
    	<div class="content rgzn">
    	<!-- 聚变堆设备数据库 -->
    	 <!--********************************************活化数据库****************************************** -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/cendl.png" alt="">
                            <a href="http://www.fusion.csdb.cn/sdb/fusion.activation.jsp" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>材料活化特性数据库</h2>
                            <p>发行单位： FDS凤麟核能团队</p>
                            <p>来源库：聚变数据库</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">聚变堆典型活化子库提供了常见材料与自然元素在聚变堆各位置、生命周期中各阶段的活化情况。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>聚变数据库</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.fusion.csdb.cn/sdb/fusion.activation.jsp</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 聚变堆典型活化子库提供了常见材料与自然元素在聚变堆各位置、生命周期中各阶段的活化情况。基于该数据，聚变堆工程师可方便筛选出适用于各部件的材料，为聚变堆运行、退役等阶段的辐射安全提供良好的基础。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END****************************************** -->
    <!--********************************************焊接数据库****************************************** -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/cendl.png" alt="">
                            <a href="http://www.fusion.csdb.cn/sdb/fusion.material.list.jsp?type=2" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>焊接数据库</h2>
                            <p>发行单位： FDS凤麟核能团队</p>
                            <p>来源库：聚变数据库</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">收集了核领域常用材料焊接数据的数据库，服务于专业焊接研究人员，提供详细的材料焊接数据及有效的处理分析方法。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>聚变数据库</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.fusion.csdb.cn/sdb/fusion.material.list.jsp?type=2</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 服务于专业焊接研究人员，提供详细的材料焊接数据及有效的处理分析方法。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END****************************************** -->
    
    <!--********************************************腐蚀数据库****************************************** -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/cendl.png" alt="">
                            <a href="http://www.fusion.csdb.cn/sdb/fusion.material.list.jsp?type=3" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>腐蚀数据库</h2>
                            <p>发行单位： FDS凤麟核能团队</p>
                            <p>来源库：聚变数据库</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">收集了核领域常用材料腐蚀数据的数据库，服务于专业腐蚀研究人员，提供详细的材料腐蚀数据及有效的处理分析方法。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>聚变数据库</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.fusion.csdb.cn/sdb/fusion.material.list.jsp?type=3</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 服务于专业腐蚀研究人员，提供详细的材料腐蚀数据及有效的处理分析方法。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END****************************************** -->
    
    <!--********************************************辐照数据库****************************************** -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/cendl.png" alt="">
                            <a href="http://www.fusion.csdb.cn/sdb/fusion.material.list.jsp?type=4" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>辐照数据库</h2>
                            <p>发行单位： FDS凤麟核能团队</p>
                            <p>来源库：聚变数据库</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">收集了核领域常用材料辐照数据的数据库，服务于专业辐照研究人员，提供详细的材料辐照数据及有效的处理分析方法。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>聚变数据库</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.fusion.csdb.cn/sdb/fusion.material.list.jsp?type=4</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 服务于专业辐照研究人员，提供详细的材料辐照数据及有效的处理分析方法。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END****************************************** -->
    
     <!--********************************************力学性能数据库****************************************** -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-heneng.png" alt="">
                            <a href="http://www.nuclearenergy.csdb.cn/nrmd/nrmd2.jsp" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>力学性能数据库</h2>
                            <p>发行单位： FDS凤麟核能团队凤麟核能团队</p>
                            <p>来源库：核能数据库</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">核电站材料的元素组成、组织结构、物理性能、
                                力学性能、化学性能等各类性能信息。开发的多途径查询，可满足用户的不同查询需求，为用户带来方便快捷的查询体验。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>聚变数据库</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.nuclearenergy.csdb.cn/nrmd/nrmd2.jsp</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                核反应堆材料数据库对聚变、裂变核材料进行高效整合，涵盖聚变堆候选材料、第四代核反应堆材料和成熟核电站材料的元素组成、组织结构、物理性能、
                                力学性能、化学性能等各类性能信息。开发的多途径查询，可满足用户的不同查询需求，为用户带来方便快捷的查询体验。同时，该库还开发了各种分析拓展功能
                                ，可对材料进行寿命预测，智能设计，模拟建模等，为核材料研究、核技术应用以及核能系统的设计、分析和建设提供支持。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END****************************************** -->
   <!--********************************************核放射化学材料数据库****************************************** -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-heneng.png" alt="">
                            <a href="http://www.nuclearenergy.csdb.cn/nrmd/nuclearRadiation.jsp" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>核放射化学材料数据库</h2>
                            <p>发行单位： FDS凤麟核能团队凤麟核能团队</p>
                            <p>来源库：核能数据库</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">提供钚配合物晶体数据、铀配合物晶体数据、钍配合物晶体数据、镅配合物晶体数据</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>聚变数据库</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.nuclearenergy.csdb.cn/nrmd/nuclearRadiation.jsp</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
 锕系元素纳米材料在先进核能系统新型核燃料的制备以及乏燃料后处理中具有潜在的应用价值。通过控制锕系元素纳米材料的结构和尺寸，可以设计出具有优
 良性质的核燃料前驱体，亦可为乏燃料中锕系元素的高效分离以及稳定储存提供新思路。 设计新型有机配体功能化的无机纳米材料，如介孔硅和石墨烯复合物，
 并将其应用到铀等放射性元素的高效分离和富集，该类材料在海水提铀、放射性废液处理以及环境污染修复等领域具有很好应用前景。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END****************************************** -->                 
       </div>
      </ul>
      
     </div>
    </div>  
 <!-- /***************************************////Radio Active Database/////////****************************************/       -->
	<div id="MCS" class="page_Switchbox" style="display:none;">
     <div class="bd">
      <ul>
      <!--EXFOR简介下载 -->
    	<div class="content rgzn">
    	   <!--**********************************************可靠性材料数据库****************************************** -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-heneng.png" alt="">
                            <a href="http://www.nuclearenergy.csdb.cn/reliabilitydb/reliability.jsp" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>可靠性数据库</h2>
                            <p>发行单位： FDS凤麟核能团队凤麟核能团队</p>
                            <p>来源库：核能数据库</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">可靠性数据是在各项可靠性工作及活动中所产生的描述产品可靠性水平及状况的各种数据</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>聚变数据库</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.nuclearenergy.csdb.cn/reliabilitydb/reliability.jsp</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
可靠性数据是在各项可靠性工作及活动中所产生的描述产品可靠性水平及状况的各种数据，可靠性数据形式多样，可以是数字，图表等。可靠
性数据库是聚变、裂变电站安全运行和科学管理的基础信息。核电站设备的可靠性数据库是开展系统设备以可靠性分析为基础的预防性维
修和设备运行功能试验规划的重要依据。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END****************************************** -->
    <!--********************************************聚变装置部件模型材料数据库****************************************** -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/cendl.png" alt="">
                            <a href="http://www.fusion.csdb.cn/sdb/fusion.assembly.jsp" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>聚变装置部件模型数据库</h2>
                            <p>发行单位： FDS凤麟核能团队凤麟核能团队</p>
                            <p>来源库：聚变数据库</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">本系统包含了装置模型和零部件模型，收集的聚变装置模型包括ITER装置模型、FDS聚变裂变混合堆装置模型、ADS次临界反应堆装置模型等装置模型。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>聚变数据库</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.fusion.csdb.cn/sdb/fusion.assembly.jsp</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
部件设计是聚变堆设计的基础。部件数据包括工程设计数据、概念设计数据和分析计算模型数据。各种聚变实
验装置不仅可用于研究聚变关键技术（等离子技术、核材料技术等），还可以为未来商用聚变堆设计积累部件数据。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END****************************************** -->
       </div>
      </ul>
      
     </div>
    </div>    
    
<!-- /***************************************////Radio Active Database/////////****************************************/       -->
	<div id="CFD" class="page_Switchbox" style="display:none;">
     <div class="bd">
      <ul>
      <!--EXFOR简介下载 -->
    	<div class="content rgzn">
    	   <!--**********************************************中国核能法律法规材料数据库****************************************** -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-heneng.png" alt="">
                            <a href="http://www.nuclearenergy.csdb.cn/nuclearlaw/lawSearchNew.jsp" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>中国核能法律法规数据库</h2>
                            <p>发行单位： FDS凤麟核能团队凤麟核能团队</p>
                            <p>来源库：核能数据库</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">主要包括国内外核安全国家法律、行政法规、部门规章、指导性文件等。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>聚变数据库</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.nuclearenergy.csdb.cn/nuclearlaw/lawSearchNew.jsp</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
中国核能法律法规数据是在各项中国核能法律法规工作及活动中所产生的描述产品中国核能法律法规水平及状况的各种数据，中国核能法律法规数据形式多样，可以是数字，图表等。可靠
性数据库是聚变、裂变电站安全运行和科学管理的基础信息。核电站设备的中国核能法律法规数据库是开展系统设备以中国核能法律法规分析为基础的预防性维
修和设备运行功能试验规划的重要依据。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END****************************************** -->
 
  <!--**********************************************国际核能法律法规材料数据库****************************************** -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-heneng.png" alt="">
                            <a href="http://www.nuclearenergy.csdb.cn/nuclearlaw/lawSearchNew.jsp" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>国际核能法律法规数据库</h2>
                            <p>发行单位： FDS凤麟核能团队凤麟核能团队</p>
                            <p>来源库：核能数据库</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">主要收集美国、法国、德国、日本和英国、俄罗斯等国的法律法规。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>聚变数据库</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.nuclearenergy.csdb.cn/nuclearlaw/lawSearchNew.jsp</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
国际核能法律法规数据是在各项国际核能法律法规工作及活动中所产生的描述产品国际核能法律法规水平及状况的各种数据，国际核能法律法规数据形式多样，可以是数字，图表等。可靠
性数据库是聚变、裂变电站安全运行和科学管理的基础信息。核电站设备的国际核能法律法规数据库是开展系统设备以国际核能法律法规分析为基础的预防性维
修和设备运行功能试验规划的重要依据。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END****************************************** -->   
 
   <!--**********************************************核领域研究年报材料数据库****************************************** -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-heneng.png" alt="">
                            <a href="http://www.nuclearenergy.csdb.cn/nuclearlaw/lawSearchNew.jsp" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>核领域研究年报数据库</h2>
                            <p>发行单位： FDS凤麟核能团队凤麟核能团队</p>
                            <p>来源库：核能数据库</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">主要收集国内国际主要机构如IAEA、NEA、RSICC、GIF、ITER等组织机构的研究年报。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>聚变数据库</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.nuclearenergy.csdb.cn/nuclearlaw/lawSearchNew.jsp</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
核领域研究年报数据是在各项核领域研究年报工作及活动中所产生的描述产品核领域研究年报水平及状况的各种数据，核领域研究年报数据形式多样，可以是数字，图表等。可靠
性数据库是聚变、裂变电站安全运行和科学管理的基础信息。核电站设备的核领域研究年报数据库是开展系统设备以核领域研究年报分析为基础的预防性维
修和设备运行功能试验规划的重要依据。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END****************************************** -->   
    
      <!--**********************************************行业标准及白皮书材料数据库****************************************** -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-heneng.png" alt="">
                            <a href="http://www.nuclearenergy.csdb.cn/nuclearlaw/lawSearchNew.jsp" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>行业标准及白皮书数据库</h2>
                            <p>发行单位： FDS凤麟核能团队凤麟核能团队</p>
                            <p>来源库：核能数据库</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">主要收集参考性文件，指导性文件，行业标准等文件。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>聚变数据库</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.nuclearenergy.csdb.cn/nuclearlaw/lawSearchNew.jsp</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
行业标准及白皮书数据是在各项行业标准及白皮书工作及活动中所产生的描述产品行业标准及白皮书水平及状况的各种数据，行业标准及白皮书数据形式多样，可以是数字，图表等。可靠
性数据库是聚变、裂变电站安全运行和科学管理的基础信息。核电站设备的行业标准及白皮书数据库是开展系统设备以行业标准及白皮书分析为基础的预防性维
修和设备运行功能试验规划的重要依据。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END****************************************** -->    
    <!--********************************************聚变装置部件模型材料数据库****************************************** 
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/cendl.png" alt="">
                            <a href="http://www.fusion.csdb.cn/sdb/fusion.assembly.jsp" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            
                        </div>
                        <div class="item-m">
                            <h2>聚变装置部件模型数据库</h2>
                            <p>发行单位： FDS凤麟核能团队凤麟核能团队</p>
                            <p>来源库：聚变数据库</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">本系统包含了装置模型和零部件模型，收集的聚变装置模型包括ITER装置模型、FDS聚变裂变混合堆装置模型、ADS次临界反应堆装置模型等装置模型。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>聚变数据库</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>http://www.fusion.csdb.cn/sdb/fusion.assembly.jsp</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
部件设计是聚变堆设计的基础。部件数据包括工程设计数据、概念设计数据和分析计算模型数据。各种聚变实
验装置不仅可用于研究聚变关键技术（等离子技术、核材料技术等），还可以为未来商用聚变堆设计积累部件数据。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END****************************************** -->
       </div>
      </ul>
      
     </div>
    </div> 
    
           
<div id="PSA" class="page_Switchbox" style="display:none;">
     <div class="bd">
      <ul>
      <!--EXFOR简介下载 -->
    	<div class="content rgzn">
    	   <!--**********************************************可靠性材料数据库****************************************** -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/nea.png" alt="">
                            <a href="https://www.oecd-nea.org/science/wpncs/icsbep/handbook.html" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>国际临界安全基准例题(ISCBEP)</h2>
                            <p>发行单位：NEA/国际合作</p>
                            <p>待完善</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">《国际临界安全基准试验评估手册》包含了临界安全基准规范，这些规范是根据在世界各地不同关键设施进行的试验而制定的。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>OECD-NEA</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>https://www.oecd-nea.org/science/wpncs/icsbep/handbook.html</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
2016年版的《国际临界安全基准试验评估手册》包含了临界安全基准规范，这些规范是根据在世界各地不同关键设施进行的试验而制定的。它在超过7万页
的9卷中展示了评估的临界安全基准数据。该手册包含567项评估，包括4 913种临界、近临界或亚临界配置的基准规格，45种临界报警放置
/屏蔽配置，每种配置有多个剂量点，215种配置
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END******************************************  -->
    
        	   <!--**********************************************可靠性材料数据库****************************************** -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/nea.png" alt="">
                            <a href="https://www.oecd-nea.org/science/wprs/irphe/" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>反应堆物理基准测试例题(IRPhEP)</h2>
                            <p>发行单位： NEA/国际合作</p>
                            <p>待完善</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">反应堆物理基准测试例题(IRPhE)项目旨在通过收集全球核设施的反应堆物理实验数据，为核学界提供合格的基准数据集。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <a href="https://www.oecd-nea.org/science/wprs/irphe/" target="_blank">                    </a>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>OECD-NEA</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>https://www.oecd-nea.org/science/wprs/irphe/</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
暂缺
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END******************************************  -->
    <!--**********************************************可靠性材料数据库****************************************** -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/nea.png" alt="">
                            <a href="https://www.oecd-nea.org/science/wprs/irphe/" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>SINBAD</h2>
                            <p>发行单位： NEA/RSICC</p>
                            <p>待完善</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">SINBAD是由NEA和RSICCl联合完成的测试例题库</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>OECD-NEA</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>https://www.oecd-nea.org/science/wprs/irphe/</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
暂缺
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END******************************************  -->   
       <!--**********************************************可靠性材料数据库****************************************** -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-fds.png" alt="">
                            <a href="https://www.oecd-nea.org/science/wprs/irphe/" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>HINEG实验测试例题库</h2>
                            <p>发行单位： FDS凤麟核能团队</p>
                            <p>待完善</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">HINEG实验测试例题库</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>OECD-NEA</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>https://www.oecd-nea.org/science/wprs/irphe/</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
暂缺
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>    
    <!--********************************************活化数据库 END******************************************  -->
       </div>
      </ul>
      
     </div>
    </div>    
  <!-- /***************************************////Safety Analysis Database/////////****************************************/       -->
	<div id="sadb" class="page_Switchbox" style="display:none;">
      <div class="bd">
      <ul>
       <h3 style=" color:#1587C4; font-weight:bold; margin-top:20px; text-align:center;">核领域安全分析数据库简介  </h3><br/>
      <p class="indent"><b>可靠性数据库：</b></p>
      <p class="indent">可靠性数据是在各项可靠性工作及活动中所产生的描述产品可靠性水平及状况的各种数据，可靠性数据形式多样，可以是数字，图表等。可靠性数据库是聚变、裂变电站安全运行和科学管理的基础信息。核电站设备的可靠性数据库是开展系统设备以可靠性分析为基础的预防性维修和设备运行功能试验规划的重要依据。</p>
     <p class="indent">数据库建设维护单位：中国科学院核能安全技术研究所</p>
      <center>
      <a href="http://www.nuclearenergy.csdb.cn/reliabilitydb/reliability.jsp" target="_blank">
         <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
       </a>
       </center>
       <p class="indent"><b>聚变部件数据子库：</b></p>
       <p class="indent">部件设计是聚变堆设计的基础。部件数据包括工程设计数据、概念设计数据和分析计算模型数据。各种聚变实验装置不仅可用于研究聚变关键技术（等离子技术、核材料技术等），还可以为未来商用聚变堆设计积累部件数据。</p>
     	<p class="indent">本系统包含了装置模型和零部件模型，收集的聚变装置模型包括ITER装置模型、FDS聚变裂变混合堆装置模型、ADS次临界反应堆装置模型等装置模型。同时包括了对应部件的可靠性数据。</p>
     	<p class="indent">数据库建设维护单位：中国科学院核能安全技术研究所</p>
     	 <center>
       <a href="http://www.fusion.csdb.cn/sdb/fusion.assembly.jsp" target="_blank">
         <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
       </a>
       </center> 
       <p class="indent"><b>聚变堆典型活化数据库：</b></p>
      <p class="indent">聚变堆典型活化数据库</p>
     <p class="indent">数据库建设维护单位：中国科学院核能安全技术研究所</p>
      <center>
      <a href="http://www.fusion.csdb.cn/sdb/fusion.activation.jsp" target="_blank">
         <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
       </a>
       </center>
      </ul>
     </div>
      
     </div>
  <!-- /***************************************////Fusion Device Components Database/////////****************************************/       -->
	<div id="fcdb" class="page_Switchbox" style="display:none;">
     <div class="bd">
      <ul>
      <!--EXFOR简介下载 -->
    	<div class="content rgzn">
    	<!-- CAD模型数据库 -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/databaseicon.png" alt="">
                            <a href="https://www-nds.iaea.org/exfor/exfor.htm" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>CAD模型数据库</h2>
                            <p>发行单位：FDS</p>
                            <p>数据库最新版本：</p>
                            <p>数据库最新版本：</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">EXFOR（Experimental nuclear reaction data），实验核反应数据库。包括中子、部分带电粒子和光子的核反应实验数据。其中，中子的反应数据库没有限制，并且可以直接申请引用，而光子和带电离子的反应数据则经过一定的筛选，用户仅能取得其中部分数据用于研究。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>NRDC（Network of Nuclear Reaction Data Centers）</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>https://www-nds.iaea.org/exfor/exfor.htm</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 <!--<img src="./resources/suggest/SuperMC.png" alt="" />   -->
                       			          暂缺
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                
                <!-- 中子模型数据库 -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/databaseicon.png" alt="">
                            <a href="https://www-nds.iaea.org/exfor/exfor.htm" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
                            </a>
                            <!--<a href="/uploadPath/data/exfor.rar" target="_blank">-->
                        </div>
                        <div class="item-m">
                            <h2>中子模型数据库 </h2>
                            <p>发行单位：FDS</p>
                            <p>数据库最新版本：</p>
                            <p>数据库最新版本：</p>
                        </div>
                        <div class="item-r">
                            <p class="title">数据库介绍</p>
                            <p class="desc" style="word-break:break-all">EXFOR（Experimental nuclear reaction data），实验核反应数据库。包括中子、部分带电粒子和光子的核反应实验数据。其中，中子的反应数据库没有限制，并且可以直接申请引用，而光子和带电离子的反应数据则经过一定的筛选，用户仅能取得其中部分数据用于研究。</p>
                            <p class="more">
                                <s class="icon">
                                    <i>◇</i>
                                </s>
                                <span>更多详情</span>
                            </p>
                        </div>
                    </div>
                    <div class="item-con hint">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>数据库数据来源</th>
                                <td>NRDC（Network of Nuclear Reaction Data Centers）</td>
                            </tr>
                            <tr>
                                <th>数据库参考链接</th>
                                <td>https://www-nds.iaea.org/exfor/exfor.htm</td>
                            </tr>
                            <tr>
                                <th>数据库使用指南</th>
                                <td>
                                 <!--<img src="./resources/suggest/SuperMC.png" alt="" />   -->
                       			          暂缺
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>   
                
                                
       </div>
      </ul>
      
     </div>
    </div>
 <!-- /***************************************////Nuclear Material Database/////////****************************************/       -->
 	<div id="nmdb" class="page_Switchbox" style="display:none;">
      <div class="bd">
      <ul>
       <h3 style=" color:#1587C4; font-weight:bold; margin-top:20px; text-align:center;">核材料数据库简介  </h3><br/>
      <p class="indent">聚变材料是聚变能可否最终实现商业化应用的“瓶颈”问题之一，而在聚变材料研究中会产生大量的设计、实验及测试数据，
      有必要对这些数据进行收集和归类和分析，形成系统的数据库。</p>
      <p class="indent">聚变材料数据库对国际上普遍认为最具潜力的聚变堆结构材料和功能材料以进行系统分类，收集和整理材料成分、工艺和性能等数据，
      进行归纳和分析，为聚变材料的设计、 制备和优化提供实验数据依据，也可以为核材料研究、核技术应用以及核能系统的设计、分析和建设提供材料数据支持。</p>
     <p class="indent">数据库建设维护单位：中国科学院核能安全技术研究所</p>
      <center>
      <a href="http://www.fusion.csdb.cn/sdb/fusion.material.jsp" target="_blank">
         <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
       </a>
       </center>
      </ul>
     </div>
      
     </div>
    
 <!-- /***************************************////Laws and Regulations Database/////////****************************************/       -->
	<div id="fddb" class="page_Switchbox" style="display:none;">
      <div class="bd">
      <ul>
       <h3 style=" color:#1587C4; font-weight:bold; margin-top:20px; text-align:center;">实验装置信息库</h3><br/>
       <p class="indent">实验装置信息库包括了主要实验装置的：</p>
       <p class="indent">名称、装置类型、功能、所在国家、建设单位、主要参数指标、经典实验等基本信息。便于用户了解装置本身。 </p>
       <p class="indent">聚变装置数据库主要收集了包括中国、美国、欧洲、日韩印等国家的16个聚变装置数据。其中针对聚变领域科研人员关心的装置尺寸、加热功率、
         等离子体位型等数据进行了着重整理。除提供相关整体信息外，装置库还支持了针对特定条件的检索功能，以帮助用户快速找到自己感兴趣的装置进行下一步工作、研究。 </p>
       <p class="indent">数据库建设维护单位：中国科学院核能安全技术研究所</p>
      <center>
      <a href="http://www.fusion.csdb.cn/sdb/fusion.device.list.jsp" target="_blank">
         <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
       </a>
       </center>
      </ul>
     </div>
      
     </div>
  <!-- /***************************************////Fusion Device Database/////////****************************************/       -->
    <div id="ladb" class="page_Switchbox" style="display:none;">
      <div class="bd">
      <ul>
       <h3 style=" color:#1587C4; font-weight:bold; margin-top:20px; text-align:center;">法律法规数据库简介  </h3><br/>
      <p class="indent">主要包括国内外核安全国家法律、行政法规、部门规章、指导性文件等。国家法律由全国人民代表大会和全国人民代表大会常务委员会制定。
		 行政法规是国务院发布，规定管理范围、管理机构及其职权、监督管理原则及程序等重大问题的规章。部门规章主要包括实施细则、核安全规定。
		 指导性文件主要是核安全导则，它是说明或补充核安全规定以及推荐实施安全规定的方法和程序的指导性文件。参考性文件主要是核安全法规技术文件。
		 国际法律法规主要收集美国、法国、德国、日本和英国、俄罗斯等国的法律法规。</p>
      <p class="indent">数据库建设维护单位：中国科学院核能安全技术研究所</p>
      <center>
      <a href="http://www.nuclearenergy.csdb.cn/nuclearlaw/lawSearchNew.jsp" target="_blank">
         <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
       </a>
       </center>
      </ul>
     </div>
      
     </div>
     <!-- /***************************************////Nuclear Powerplant Database/////////****************************************/       -->
    <div id="npdb" class="page_Switchbox" style="display:none;">
      <div class="bd">
      <ul>
       <h3 style=" color:#1587C4; font-weight:bold; margin-top:20px; text-align:center;">核电专题数据库简介  </h3><br/>
      <p class="indent"><b>核能基础数据库：</b></p>
      <p class="indent">核电基础数据库采集、整合世界核电、中国核电及上海核电的总体发展数据与单项基础数据，为业务及科普服务 ，同时为核电运行状况、
      变化趋势等分析提供辅助支持。核电基础数据库主要包括三部分数据：世界核电数据、中国核电数据、上海核电数据。</p>
     <p class="indent">数据库建设维护单位：上海市核电办公室</p>
      <center>
      <a href="http://www.shhdb.gov.cn/dbdata/nexct_sjhd.do" target="_blank">
         <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
       </a>
       </center>
       <p class="indent"><b>核能专业知识服务系统：</b></p>
       <p class="indent">包括了核电行业的主要经济数据、新闻、政策、科普知识等内容的综合数据库。主要面向核电行业领域，以国内外工程项目为中心。
       核能专业数据库系统包含了国内和全世界核电站的基本信息、运行信息，以及行业动态。还包括了国内核电的环境监测数据。</p>
     	 <p class="indent">数据库建设维护单位：中国工程院、中广核</p>
     	 <center>
       <a href="http://energy.ckcest.cn/nuclear" target="_blank">
         <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
       </a>
       </center> 
      </ul>
     </div>
      
     </div>
	<!-- /***************************************////END OF DEATILE/////////****************************************/       --> 
	<div id="rfdb" class="page_Switchbox" style="display:none;">
      <div class="bd">
      <ul>
        <h3 style=" color:#1587C4; font-weight:bold; margin-top:20px; text-align:center;">装置实验数据数据库简介</h3>
        <br/>
        <p class="indent">装置实验数据数据库数据库主要收录了几个典型实验装置的基本参数、实验数据、部分评价数据、演示实验数据等内容，用户可通过本平台申请相关原始数据及研究数据，并提交合作研究意向，进行相关实验设施设备的使用申请工作。 </p>
        <p class="indent"><strong>平台收录有实验数据的装置包括： </strong></p>
        <p class="indent">强流氘氚中子源科学装置 HINEG</p>
        <p class="indent">多功能液态铅锂综合实验平台 DRAGON </p>
       <p class="indent">铅基堆零功率物理实验装置 CLEAR-0</p>
       <p class="indent"> 全超导非圆截面托卡马克核聚变实验装置 EAST</p>
       
       <p class="indent">数据库建设维护单位：中国科学院核能安全技术研究所</p>
      <center>
      <a href="http://www.fusion.csdb.cn/sdb/fusion.device.list.jsp" target="_blank">
         <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
       </a>
       </center>
      </ul>
     </div>
     </div>
	     <!-- /***************************************////Nuclear Powerplant Database/////////****************************************/       -->
	<!-- /***************************************////END OF DEATILE/////////****************************************/       --> 
	<div id="nedb" class="page_Switchbox" style="display:none;">
      <div class="bd">
      <ul>
        <h3 style=" color:#1587C4; font-weight:bold; margin-top:20px; text-align:center;">核应急公共数据平台简介</h3>
        <br/>
        <p class="indent">核应急公共数据主要包括：</p>
        <p class="indent">气象数据|水文数据|人口数据|地理信息数据</p>
        <p class="indent">基于中科院信息化研究项目及相关研究所的研究成果，通过数据共享机制完成对相关数据库内容的共享，用户可通过平台申请相关数据的查询使用权限，并在研究中应用这些数据和资料。 </p>
        <p class="indent">数据库建设维护单位：中国科学院核能安全技术研究所</p>
      <center>
      <a href="http://www.fusion.csdb.cn/sdb/fusion.device.list.jsp" target="_blank">
         <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问数据库</button>
       </a>
       </center>
      </ul>
     </div>
     </div>
	     <!-- /***************************************////Nuclear Powerplant Database/////////****************************************/       -->
	     
    <div id="ucc" class="page_Switchbox" style="display:none;">
      <div class="bd">
      <ul>
       <h3 style=" color:#1587C4; font-weight:bold; margin-top:20px; text-align:center;">正在建设中...  </h3><br/>
       <blockquote>
         <p class="indent text-center"><strong>非常抱歉，您所查看的功能正在建设中，请一段时间后再进行查看....</strong></p>
       </blockquote>
       <center>
      <div>
      <img src="./resources/images/timg.jpg" alt="Under Construction" width="500" class="img-circle img-responsive" align="middle">
      </div>
		</center>

      </ul>
     </div>
 
     </div>
	<!-- /***************************************////END OF DEATILE/////////****************************************/       --> 
	
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
	$(".cli").click(function(){
		$(this).next("div").toggle();
	})
	
	
	$(".more").click(function () {
        if ($(this).hasClass("open")) {
            $(this).parents(".item").find(".item-con").hide();
            $(this).removeClass("open");
        } else {
            $(this).parents(".item").find(".item-con").show();
            $(this).addClass("open");
        }
    });
});  

function clickPro(val,obj){
	$(obj).parents("li").addClass('hover');
	$(obj).parents("li").siblings().removeClass('hover');
	$("#"+val).show();
	$("#"+val).siblings().hide();
	
}

function downloadSoft(id){
	ajaxPost(basePath+'/file/get/'+id,{}, function(data) {
         window.open(basepath+data.filePath);	
	})
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
