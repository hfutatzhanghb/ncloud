<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="./resources/css/jquery.fullPage.css" />
<link href="./resources/css/common.css" type="text/css" rel="stylesheet" />
<link href="./resources/css/bootstrap.css" rel="stylesheet" type='text/css' />
<link href="./resources/css/simu.css" rel="stylesheet" type='text/css' />


<script src="./resources/js/jquery-1.9.1.js" ></script>
<script src="./resources/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="./resources/js/bootstrap.min.js" type="text/javascript"></script>
<title>软件资源库</title>
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
<div class="bg-soft" align="center">

</div>

<div class="page_style">

 <!--面包屑-->
 <div class="locationBox">
  <div class="pages_style">
   <i class="icon_map"></i>
   <div class="locationBox_name">您现在的位置：<a href="/ncloud/index">首页</a>&gt;<a href="/ncloud/simulation">软件资源库</a></div>
  </div>
  </div>
  <!--具体内容-->
  <div class="page_content clearfix">
   <div class="page_Section">
    <div class="Section_list">
       <div class="Section_title">类型</div>
       <ul id="section" class="list">
        <li><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('ISS',this);">集成仿真软件</a></li>
        <li><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('NPA',this);">辐射输运计算软件</a></li>
        <li><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('MCS',this);">燃耗活化计算软件</a></li>
        <li><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('CFD',this);">放射性核素扩散计算软件</a></li>
        <li><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('NES',this);">人体剂量评估软件</a></li>
        <li><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('KSH',this);">可视化分析软件</a></li>
        <li><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('PSA',this);">系统概率安全分析软件</a></li>
        <li><i class="icon_zuo"></i><a href="javascript:void(0);" onclick="clickPro('CAD',this);">建模软件及常用工具</a></li> 
       </ul>
    </div>
     
   </div>
   <div class="page_detailed">
   <div id="jianjie" class="page_Switchbox">
     
     <div class="bd">
      <ul>
       <h3 style=" color:#1587C4; font-weight:bold; margin-top:20px; text-align:center;">软件资源库简介  </h3><br/>
       <p class="indent">软件资源库建设主要面向核安全学科领域具体应用特点，综合利用云平台的存储、计算、调度、通用接口，
         以形成核安全科学研究典型的基础软件与数据处理服务。根据核安全领域科研的实际需求，软件资源库集成了从最开始的CAD模型建立、确定论仿真分析、
         概率论仿真分析、流体力学计算、到概率安全分析、数据可视化、核应急决策支持软件的核安全评估全流程软件系统。<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;软件资源库中，收录了集成仿真软件、辐射输运计算软件、燃耗活化计算软件、放射性核素扩散计算软件、人体剂量评估软件、可视化分析软件、系统概率安全分析软件和建模软件及常用工具。<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在此基础上，建成核安全领域云软件资源池，并在国际热核聚变实验堆ITER、“华龙一号”及中国小型化铅基堆等项目中使之得到应用。 <br />
       </p>
      </ul>
     
     </div>
    </div>
 <!-- ******************************************************///////////////综合仿真软件///////////////******************************************************** --> 
<div id="ISS" class="page_Switchbox" style="display:none;">
     <div class="bd">
      <ul>
     
     <!-- 反应堆设计分析 -->
     <div class="content rgzn">
     <!-- -------------------------------------++++++++++++++++++++Virtual 4DS+++++++++++++++++++++++---------------------------------------------------- -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-fds.png" alt="">
                            <a href="http://www.fds.org.cn/softtechshows.asp?newsid=460" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">申请指南</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>Virtual 4DS</h2>
                            <p>开发单位：中国-FDS凤麟核能团队</p>
                            <p>使用许可：Virtual 4DS Lisence</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">数字社会环境下的虚拟核电站Virtual 4DS是数字社会环境下的全环境、智能化安全仿真评价平台。</p>
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
                                <th>开发单位</th>
                                <td>中国-FDS凤麟核能团队</td>
                            </tr>
                            <tr>
                                <th>软件来源</th>
                                <td>http://www.fds.org.cn/softtechshows.asp?newsid=460</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
 数字社会环境下的虚拟核电站Virtual 4DS是数字社会环境下的全环境、智能化安全仿真评价平台。 Virtual 4DS围绕核能系统的核反应堆安全、辐射安全与环境影响，核应急与公共安全，
 以体系化的堆内多物理耦合与对外多尺度核素扩散模型为核心，充分利用云计算、大数据、虚拟仿真、人工智能、移动物联网、物联网等现代信息技术，发展基于核能大数据的社会风险评价、核应急仿
 真演练与智能决策、事故预警与事故进程推演，大尺度核素扩散与环境影响评价等技术与应用，实现“核电站-环境-社会”的大时空综合仿真。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
     <!-- -------------------------------------++++++++END+++++++Virtual 4DS+++++++++END+++++++++++---------------------------------------------------- -->

	 <!-- -------------------------------------++++++++++++++++++++Visual Bus+++++++++++++++++++++++---------------------------------------------------- -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-fds.png" alt="">
                            <a href="http://www.fds.org.cn/softtechshows.asp?newsid=462" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>Visual Bus</h2>
                            <p>开发单位：中国-FDS凤麟核能团队</p>
                            <p>使用许可：Visual BUS Lisence</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">数字反应堆Visual Bus是FDS凤麟核能团队基于反应堆多物理耦合模拟，深度整合相关软件研发的一套体系化的反应堆设计与安全评价软件。</p>
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
                                <th>开发单位</th>
                                <td>中国-FDS凤麟核能团队</td>
                            </tr>
                            <tr>
                                <th>软件来源</th>
                                <td>http://www.fds.org.cn/softtechshows.asp?newsid=462</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>            
数字反应堆Visual Bus是FDS凤麟核能团队基于反应堆多物理耦合模拟，云服务模式下的高性能计算、可视化与虚拟仿真等先进技术，深度整合相关软件研发的一套体系化
的反应堆设计与安全评价软件。可实现反应堆的全过程可视化设计仿真，全范围动态3D运行仿真，支持多物理过程耦合的反应堆综合行为高保真预测。Visual BUS具有开放性、
共享性、智能型、直观性等特点，可应用于基础物理问题模拟研究，反应堆设计与安全评价，反应堆监管及运维仿真等场合。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
     <!-- -------------------------------------++++++++END+++++++Visual Bus+++++++++END+++++++++++---------------------------------------------------- -->
	 
	 <!-- -------------------------------------++++++++++++++++++++VERA+++++++++++++++++++++++---------------------------------------------------- -->		<!-- -------------------------------------++++++++END+++++++VERA+++++++++END+++++++++++---------------------------------------------------- -->
<!-- -------------------------------------++++++++++++++++++++SALOME+++++++++++++++++++++++---------------------------------------------------- -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-cea.jpg" alt="">
                            <a href="https://www.salome-platform.org/" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>SALOME</h2>
                            <p>开发单位：法国-CEA</p>
                            <p>使用许可：开源软件</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">SALOME is an open-source software that provides a generic Pre- and Post-Processing platform for numerical simulation. It is based on an open and flexible architecture made of reusable components.</p>
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
                                <th>开发单位</th>
                                <td>开发单位：法国-CEA/EDF/CASCADE</td>
                            </tr>
                            <tr>
                                <th>参考链接</th>
                                <td>https://www.salome-platform.org/</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
* What is SALOME<br />
SALOME is an open-source software that provides a generic Pre- and Post-Processing platform for numerical simulation. It is based on an open and flexible architecture made of reusable components.<br />
SALOME is a cross-platform solution. It is distributed under the terms of the GNU LGPL license. You can download both the source code and the executables from this site.<br />
* How can SALOME be used?<br />
SALOME can be used as a standalone application for generation of the CAD model, its preparation for the numerical calculations and post-processing of the calculation results.<br />
SALOME can also be used as a platform for integration of the external third-party numerical codes to produce a new application for the full life-cycle management of CAD models.<br />

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
		<!-- -------------------------------------++++++++END+++++++Pro/e+++++++END+++++++++++---------------------------------------------------- -->
		
        </div>
      </ul>
     </div>
    </div>
<!-- ******************************************************////////END//// 建 模 软 件 /////END///////******************************************************** --> 
 
<!-- ******************************************************/////////////// 建 模 软 件 ///////////////******************************************************** --> 
<div id="CAD" class="page_Switchbox" style="display:none;">
     <div class="bd">
      <ul>
     
     <!-- 反应堆设计分析 -->
     <div class="content rgzn">
     <!-- -------------------------------------++++++++++++++++++++SuperMC MCAM+++++++++++++++++++++++---------------------------------------------------- -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-supermcmcam.png" alt="">
                            <a href="http://www.supermc.cn/login/loginPage.action" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">申请指南</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>SurperMC-MCAM</h2>
                            <p>开发单位：中国-FDS凤麟核能团队</p>
                            <p>使用许可：SuperMC Lisence</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">SuperMC/MCAM最新版本SuperMC/MCAM5.2支持SuperMC、MCNP、FLUKA、Geant4、TRIPOLI等多种
                            蒙特卡罗程序计算模型的自动建模,可进行CAD模型与蒙特卡罗计算模型之间的自动双向转换,以及进行各蒙特卡罗程序计算模型之间的相互转换。</p>
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
                                <th>开发单位</th>
                                <td>中国-FDS凤麟核能团队</td>
                            </tr>
                            <tr>
                                <th>软件来源</th>
                                <td>http://www.fds.org.cn/newsshows.asp?newsid=470</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                 超级蒙特卡罗核计算仿真软件系统SuperMC是一套通用、智能、多功能的核系统设计与安全分析软件。
                            多物理耦合分析自动建模软件SuperMC/MCAM(multi-physics coupling analysis modeling program)是其中的自动建模模块,其目标是为
                            多物理耦合分析提供精确高效的建模功能。SuperMC/MCAM最新版本SuperMC/MCAM5.2支持SuperMC、MCNP、FLUKA、Geant4、TRIPOLI等多种
                            蒙特卡罗程序计算模型的自动建模,可进行CAD模型与蒙特卡罗计算模型之间的自动双向转换,以及进行各蒙特卡罗程序计算模型之间的相互转换
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
     <!-- -------------------------------------++++++++END+++++++SuperMC MCAM+++++++++END+++++++++++---------------------------------------------------- -->

		<!-- -------------------------------------++++++++++++++++++++Auto CAD+++++++++++++++++++++++---------------------------------------------------- -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-freecad.png" alt="">
                            <a href="https://www.freecadweb.org/" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>FreeCAD</h2>
                            <p>开发单位：英国-FreeCAD team</p>
                            <p>使用许可：开源软件-LGPL协议</p>
                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">FreeCAD is a general purpose parametric 3D CAD modeler. The development is completely Open Source (LGPL License). FreeCAD is aimed directly at mechanical engineering and product design but also fits in a wider range of uses around engineering, such as architecture or other engineering specialties.</p>
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
                                <th>开发单位</th>
                                <td>英国-FreeCAD team</td>
                            </tr>
                            <tr>
                                <th>参考链接</th>
                                <td>https://www.freecadweb.org/</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
FreeCAD is a general purpose parametric 3D CAD modeler. The development is completely Open Source (LGPL License). FreeCAD is aimed directly at mechanical engineering and product design but also fits in a wider range of uses around engineering, such as architecture or other engineering specialties.<br/>
FreeCAD features tools similar to Catia, SolidWorks or Solid Edge, and therefore also falls into the category of MCAD, PLM, CAx and CAE. It is a feature based parametric modeler with a modular software architecture which makes it easy to provide additional functionality without modifying the core system.<br/>
As with many modern 3D CAD modelers it has many 2D components in order to sketch 2D shapes or extract design details from the 3D model to create 2D production drawings, but direct 2D drawing (like AutoCAD LT) is not the focus, neither are animation or organic shapes (like Maya, 3ds Max, Blender or Cinema 4D), although, thanks to its wide adaptability, FreeCAD might become useful in a much broader area than its current focus.<br/>
FreeCAD makes heavy use of all the great open-source libraries that exist out there in the field of Scientific Computing. Among them are OpenCascade, a powerful CAD kernel, Coin3D, an incarnation of Open Inventor, Qt, the world-famous UI framework, and Python, one of the best scripting languages available. FreeCAD itself can also be used as a library by other programs.<br/>
FreeCAD is also fully multi-platform, and currently runs flawlessly on Windows and Linux/Unix and Mac OSX systems, with the exact same look and functionality on all platforms.<br/>

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
		<!-- -------------------------------------++++++++END+++++++Auto CAD+++++++++END+++++++++++---------------------------------------------------- -->
		<!-- -------------------------------------++++++++++++++++++++UG+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/ugnx.png" alt="">
                            <a href="https://www.plm.automation.siemens.com/zh/products/nx/index.shtml" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>UG(Unigraphics NX)</h2>
                            <p>开发单位：德国-Siemens PLM Software公司</p>
                            <p>使用许可：商业软件</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">UG（Unigraphics NX）是Siemens PLM Software公司出品的一个产品工程解决方案，它为用户的产品设计及加工过程提供
                            了数字化造型和验证手段。Unigraphics NX针对用户的虚拟产品设计和工艺设计的需求，提供了经过实践验证的解决方案。UG是一个交互式CAD/CAM(计算机
                            辅助设计与计算机辅助制造)系统，它功能强大，可以轻松实现各种复杂实体及造型的建构。它在诞生之初主要基于工作站，但随着PC硬件的发展和个人用户
                            的迅速增长，在PC上的应用取得了迅猛的增长，已经成为模具行业三维设计的一个主流应用。UG的开发始于1969年，它是基于C语言开发实现的。UG NX是一
                            个在二维和三维空间无结构网格上使用自适应多重网格方法开发的一个灵活的数值求解偏微分方程的软件工具。</p>
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
                                <th>开发单位</th>
                                <td>德国-Siemens PLM Software公司</td>
                            </tr>
                            <tr>
                                <th>参考链接</th>
                                <td>https://www.plm.automation.siemens.com/zh/products/nx/index.shtml</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                 UG（Unigraphics NX）是Siemens PLM Software公司出品的一个产品工程解决方案，它为用户的产品设计及加工过程提供
                            了数字化造型和验证手段。Unigraphics NX针对用户的虚拟产品设计和工艺设计的需求，提供了经过实践验证的解决方案。UG是一个交互式CAD/CAM(计算机
                            辅助设计与计算机辅助制造)系统，它功能强大，可以轻松实现各种复杂实体及造型的建构。它在诞生之初主要基于工作站，但随着PC硬件的发展和个人用户
                            的迅速增长，在PC上的应用取得了迅猛的增长，已经成为模具行业三维设计的一个主流应用。UG的开发始于1969年，它是基于C语言开发实现的。UG NX是一
                            个在二维和三维空间无结构网格上使用自适应多重网格方法开发的一个灵活的数值求解偏微分方程的软件工具。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
		<!-- -------------------------------------++++++++END+++++++UG+++++++++END+++++++++++---------------------------------------------------- -->
<!-- -------------------------------------++++++++++++++++++++Pro/e+++++++++++++++++++++++----------------------------------------------------
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/proe.gif" alt="">
                            <a href="https://www.ptc.com/en/products/cad/creo" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>Pro/E</h2>
                            <p>开发单位：美国-参数技术(PTC)公司</p>
                            <p>使用许可：商业软件</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">Pro/Engineer操作软件是美国参数技术公司（PTC)旗下的CAD/CAM/CAE一体化的三维软件。
                            Pro/Engineer软件以参数化著称，是参数化技术的最早应用者，在目前的三维造型软件领域中占有着重要地位。
                            Pro/Engineer作为当今世界机械CAD/CAE/CAM领域的新标准而得到业界的认可和推广，是现今主流的CAD/CAM/
                            CAE软件之一，特别是在国内产品设计领域占据重要位置。Pro/Engineer和WildFire是PT用的软件名称，但在
                            中国用户所使用的名称中，并存着多个说法，比如ProE、Pro/E、破衣等等都是指Pro/Engineer软件，proe2001、proe2.0、
                            proe3.0、proe4.0、proe5.0、creo1.0\creo2.0\creo3.0等等都是指软件的版本。</p>
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
                                <th>开发单位</th>
                                <td>美国-参数技术(PTC)公司</td>
                            </tr>
                            <tr>
                                <th>参考链接</th>
                                <td>https://www.ptc.com/en/products/cad/creo</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                 Pro/Engineer操作软件是美国参数技术公司（PTC)旗下的CAD/CAM/CAE一体化的三维软件。
                            Pro/Engineer软件以参数化著称，是参数化技术的最早应用者，在目前的三维造型软件领域中占有着重要地位。
                            Pro/Engineer作为当今世界机械CAD/CAE/CAM领域的新标准而得到业界的认可和推广，是现今主流的CAD/CAM/
                            CAE软件之一，特别是在国内产品设计领域占据重要位置。Pro/Engineer和WildFire是PT用的软件名称，但在
                            中国用户所使用的名称中，并存着多个说法，比如ProE、Pro/E、破衣等等都是指Pro/Engineer软件，proe2001、proe2.0、
                            proe3.0、proe4.0、proe5.0、creo1.0\creo2.0\creo3.0等等都是指软件的版本。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
		<!-- -------------------------------------++++++++END+++++++Pro/e+++++++END+++++++++++---------------------------------------------------- -->

<!-- -------------------------------------++++++++++++++++++++CATIA+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-catia.jpg" alt="">
                            <a href="https://www.3ds.com/zh/products-services/catia/" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>CATIA</h2>
                            <p>开发单位：法国-达索系统集团(公司)</p>
                            <p>使用许可：商业软件</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">CATIA 不仅能够为所有产品建模，还能够在现实行为背景下建模：在体验时代进行设计。
                            系统架构师、工程师、设计师和所有贡献者都能定义、构思和塑造互联世界。CATIA 在达索系统 3DEXPERIENCE 平台的技
                            术支持下，能够实现：(1)基于单一真实信息源的社交设计环境，并允许您通过强大的 3D 仪表板进行访问，从而促进跨所
                            有利益相关者（包括移动工作者）的商业情报，以及实时并行的设计和协作。(2)为有经验者和访客用户提供的直观 
                            3DEXPERIENCE，配有可优化用户使用效果的世界级 3D 建模和模拟功能。(3)包容性产品开发平台，
                            可与现有流程和工具轻松集成。这一配置允许不同学科在产品开发过程的各个阶段充分利用强大的集成式专家应用程序。
                            CATIA 的设计、工程和系统工程应用程序是达索系统 Industry Solution Experience 应对特定行业需求的核心。
                            这彻底改变了企业构思、开发和实现新产品的方式，通过创新的用户体验带来竞争优势。</p>
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
                                <th>开发单位</th>
                                <td>法国-达索系统集团(公司)</td>
                            </tr>
                            <tr>
                                <th>参考链接</th>
                                <td>https://www.3ds.com/zh/products-services/catia/</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                 CATIA 不仅能够为所有产品建模，还能够在现实行为背景下建模：在体验时代进行设计。
                            系统架构师、工程师、设计师和所有贡献者都能定义、构思和塑造互联世界。CATIA 在达索系统 3DEXPERIENCE 平台的技
                            术支持下，能够实现：(1)基于单一真实信息源的社交设计环境，并允许您通过强大的 3D 仪表板进行访问，从而促进跨所
                            有利益相关者（包括移动工作者）的商业情报，以及实时并行的设计和协作。(2)为有经验者和访客用户提供的直观 
                            3DEXPERIENCE，配有可优化用户使用效果的世界级 3D 建模和模拟功能。(3)包容性产品开发平台，
                            可与现有流程和工具轻松集成。这一配置允许不同学科在产品开发过程的各个阶段充分利用强大的集成式专家应用程序。
                            CATIA 的设计、工程和系统工程应用程序是达索系统 Industry Solution Experience 应对特定行业需求的核心。
                            这彻底改变了企业构思、开发和实现新产品的方式，通过创新的用户体验带来竞争优势。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
		<!-- -------------------------------------++++++++END+++++++CATIA+++++++END+++++++++++---------------------------------------------------- -->
<!-- -------------------------------------++++++++++++++++++++SolidWorks+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-solidworks.png" alt="">
                            <a href="https://www.solidworks.com/zh-hans" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>SolidWorks</h2>
                            <p>开发单位：美国-SolidWorks公司</p>
                            <p>使用许可：商业软件</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">SolidWorks是达索系统（Dassault Systemes S.A）下的子公司，专门负责研发与销售机械设计软件的视窗产品，公司总
                            部位于美国马萨诸塞州。达索公司是负责系统性的软件供应，并为制造厂商提供具有Internet整合能力的支援服务。该集团提供涵盖整个产品生命周期的系统，
                            包括设计、工程、制造和产品数据管理等各个领域中的最佳软件系统，著名的CATIAV5就出自该公司之手，目前达索的CAD产品市场占有率居世界前列。SolidWorks
                            公司成立于1993年，由PTC公司的技术副总裁与CV公司的副总裁发起，总部位于马萨诸塞州的康克尔郡（Concord,Massachusetts）内，当初的目标是希望在每一个
                            工程师的桌面上提供一套具有生产力的实体模型设计系统。从1995年推出第一套SolidWorks三维机械设计软件至2010年已经拥有位于全球的办事处，并经由300家经
                            销商在全球140个国家进行销售与分销该产品。1997年，Solidworks被法国达索（Dassault Systemes）公司收购，作为达索中端主流市场的主打品牌。</p>
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
                                <th>开发单位</th>
                                <td>美国-SolidWorks公司</td>
                            </tr>
                            <tr>
                                <th>参考链接</th>
                                <td>https://www.solidworks.com/zh-hans</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                 SolidWorks是达索系统（Dassault Systemes S.A）下的子公司，专门负责研发与销售机械设计软件的视窗产品，公司总
                            部位于美国马萨诸塞州。达索公司是负责系统性的软件供应，并为制造厂商提供具有Internet整合能力的支援服务。该集团提供涵盖整个产品生命周期的系统，
                            包括设计、工程、制造和产品数据管理等各个领域中的最佳软件系统，著名的CATIAV5就出自该公司之手，目前达索的CAD产品市场占有率居世界前列。SolidWorks
                            公司成立于1993年，由PTC公司的技术副总裁与CV公司的副总裁发起，总部位于马萨诸塞州的康克尔郡（Concord,Massachusetts）内，当初的目标是希望在每一个
                            工程师的桌面上提供一套具有生产力的实体模型设计系统。从1995年推出第一套SolidWorks三维机械设计软件至2010年已经拥有位于全球的办事处，并经由300家经
                            销商在全球140个国家进行销售与分销该产品。1997年，Solidworks被法国达索（Dassault Systemes）公司收购，作为达索中端主流市场的主打品牌。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
		<!-- -------------------------------------++++++++END+++++++Solidworks+++++++END+++++++++++---------------------------------------------------- -->
 <!-- -------------------------------------++++++++++++++++++++3D MAX+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-3ds.png" alt="">
                            <a href="https://www.autodesk.com.cn/products/3ds-max/" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>3D Studio Max</h2>
                            <p>开发单位：美国-Autodesk公司</p>
                            <p>使用许可：商业软件</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">3D Studio Max，常简称为3d Max 或3ds MAX，是Discreet公司开发的（后被Autodesk公司合并）基于PC系统的三维动画渲染
                            和制作软件。其前身是基于DOS操作系统的3D Studio系列软件。在Windows NT出现以前，工业级的CG制作被SGI图形工作站所垄断。3D Studio Max + Windows NT
                            组合的出现一下子降低了CG制作的门槛，首先开始运用在电脑游戏中的动画制作，后更进一步开始参与影视片的特效制作，例如X战警II，最后的武士等。
                            在Discreet 3Ds max 7后，正式更名为Autodesk 3ds Max 最新版本是3ds max 2019</p>
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
                                <th>开发单位</th>
                                <td>美国-Autodesk公司</td>
                            </tr>
                            <tr>
                                <th>参考链接</th>
                                <td>https://www.autodesk.com.cn/products/3ds-max/</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                3D Studio Max，常简称为3d Max 或3ds MAX，是Discreet公司开发的（后被Autodesk公司合并）基于PC系统的三维动画渲染
                            和制作软件。其前身是基于DOS操作系统的3D Studio系列软件。在Windows NT出现以前，工业级的CG制作被SGI图形工作站所垄断。3D Studio Max + Windows NT
                            组合的出现一下子降低了CG制作的门槛，首先开始运用在电脑游戏中的动画制作，后更进一步开始参与影视片的特效制作，例如X战警II，最后的武士等。
                            在Discreet 3Ds max 7后，正式更名为Autodesk 3ds Max 最新版本是3ds max 2019
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
		<!-- -------------------------------------++++++++END+++++++3D MAX+++++++END+++++++++++---------------------------------------------------- -->
		
<!-- -------------------------------------++++++++++++++++++++Maya+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-maya.jpg" alt="">
                            <a href="https://www.autodesk.com.cn/products/3ds-max/" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>Maya</h2>
                            <p>开发单位：美国-Autodesk公司</p>
                            <p>使用许可：商业软件</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">Autodesk Maya是美国Autodesk公司出品的世界顶级的三维动画软件，应用对象是专业的影视广告，角色动画，电影特技等。
                            Maya功能完善，工作灵活，易学易用，制作效率极高，渲染真实感极强，是电影级别的高端制作软件.Maya售价高昂，声名显赫，是制作者梦寐以求的制作工具，
                            掌握了Maya，会极大的提高制作效率和品质，调节出仿真的角色动画，渲染出电影一般的真实效果，向世界顶级动画师迈进。Maya 集成了Alias、Wavefront 
                            最先进的动画及数字效果技术。它不仅包括一般三维和视觉效果制作的功能，而且还与最先进的建模、数字化布料模拟、毛发渲染、运动匹配技术相结合。
                            Maya 可在Windows NT与 SGI IRIX 操作系统上运行。在目前市场上用来进行数字和三维制作的工具中，Maya 是首选解决方案。</p>
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
                                <th>开发单位</th>
                                <td>美国-Autodesk公司</td>
                            </tr>
                            <tr>
                                <th>参考链接</th>
                                <td>https://www.autodesk.com.cn/products/3ds-max/</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                Autodesk Maya是美国Autodesk公司出品的世界顶级的三维动画软件，应用对象是专业的影视广告，角色动画，电影特技等。
                            Maya功能完善，工作灵活，易学易用，制作效率极高，渲染真实感极强，是电影级别的高端制作软件.Maya售价高昂，声名显赫，是制作者梦寐以求的制作工具，
                            掌握了Maya，会极大的提高制作效率和品质，调节出仿真的角色动画，渲染出电影一般的真实效果，向世界顶级动画师迈进。Maya 集成了Alias、Wavefront 
                            最先进的动画及数字效果技术。它不仅包括一般三维和视觉效果制作的功能，而且还与最先进的建模、数字化布料模拟、毛发渲染、运动匹配技术相结合。
                            Maya 可在Windows NT与 SGI IRIX 操作系统上运行。在目前市场上用来进行数字和三维制作的工具中，Maya 是首选解决方案。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
<!-- -------------------------------------++++++++END+++++++Maya+++++++END+++++++++++---------------------------------------------------- --> <!-- -------------------------------------++++++++END+++++++ZVView+++++++END+++++++++++---------------------------------------------------- -->        		              
        </div>
      </ul>
     </div>
    </div>
<!-- ******************************************************////////END//// 建 模 软 件 /////END///////******************************************************** --> 

<!-- ******************************************************/////////////// 确定论仿真软件 ///////////////******************************************************** --> 
    <div id="NPA" class="page_Switchbox" style="display:none;">
     <div class="bd">
      <ul>
     
     <!-- 反应堆设计分析 -->
     <div class="content rgzn">
          <!-- -------------------------------------++++++++++++++++++++SuperMC+++++++++++++++++++++++---------------------------------------------------- -->
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-supermcmcam.png" alt="">
                            <a href="http://www.supermc.cn/login/loginPage.action" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">申请指南</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>SurperMC</h2>
                            <p>开发单位：中国-FDS凤麟核能团队</p>
                            <p>使用许可：SuperMC Lisence</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">超级蒙特卡罗核计算仿真软件系统SuperMC是一套通用、智能、多功能的核系统设计与安全分析软件。
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
                                <th>开发单位</th>
                                <td>中国-FDS凤麟核能团队</td>
                            </tr>
                            <tr>
                                <th>软件来源</th>
                                <td>http://www.fds.org.cn/newsshows.asp?newsid=470</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                 超级蒙特卡罗核计算仿真软件系统SuperMC是一套通用、智能、多功能的核系统设计与安全分析软件。
                            多物理耦合分析自动建模软件SuperMC/MCAM(multi-physics coupling analysis modeling program)是其中的自动建模模块,其目标是为
                            多物理耦合分析提供精确高效的建模功能。SuperMC/MCAM最新版本SuperMC/MCAM5.2支持SuperMC、MCNP、FLUKA、Geant4、TRIPOLI等多种
                            蒙特卡罗程序计算模型的自动建模,可进行CAD模型与蒙特卡罗计算模型之间的自动双向转换,以及进行各蒙特卡罗程序计算模型之间的相互转换
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
     <!-- -------------------------------------++++++++END+++++++SuperMC+++++++++END+++++++++++---------------------------------------------------- -->
     
      <!-- -------------------------------------++++++++++++++++++++MCNP+++++++++++++++++++++++---------------------------------------------------- -->      <!-- -------------------------------------++++++++END+++++++++MCNP+++++++++END+++++++++++---------------------------------------------------- -->
       <!-- -------------------------------------++++++++++++++++++++Geant4+++++++++++++++++++++++---------------------------------------------------- -->                
                <div class="item">  <!--Geant4-->
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-geant4.png" alt="">
                            <a href="http://geant4.web.cern.ch/" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">申请指南</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>Geant4</h2>
                            <p>开发单位：多国科学家，CERN维护</p>
                            <p>使用许可：开源</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">Geant4 is a toolkit for the simulation of the passage of particles through matter. Its areas of application include high energy, nuclear and accelerator physics, as well as studies in medical and space science.</p>
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
                                <th>软件类型</th>
                                <td>开源软件；开发者：多国科学家</td>
                            </tr>
                            <tr>
                                <th>软件来源</th>
                                <td>http://geant4.web.cern.ch/</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                   Geant4 is a toolkit for the simulation of the passage of particles through matter. Its areas of application include high energy, nuclear and accelerator physics, as well as studies in medical and space science.

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
          <!-- -------------------------------------++++++++END+++++++++Geant4+++++++++END+++++++++++---------------------------------------------------- -->
     
      <!-- -------------------------------------++++++++++++++++++++ATTLIA+++++++++++++++++++++++---------------------------------------------------- -->     <!-- -------------------------------------++++++++END+++++++ATTLIA+++++++++END+++++++++++---------------------------------------------------- -->
     <!-- -------------------------------------++++++++++++++++++++Denovo+++++++++++++++++++++++---------------------------------------------------- -->     <!-- -------------------------------------++++++++END+++++++Denovo+++++++++END+++++++++++---------------------------------------------------- -->

     <!-- -------------------------------------++++++++++++++++++++Doors+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-ornl.png" alt="">
                            <a href="https://rsicc.ornl.gov/PackageDetail.aspx?p=DOORS%203.2A&id=C00650&cpu=MFMWS&v=04&t=One,%20Two-%20and%20Three-Dimensional%20Discrete%20Ordinates%20Neutron/Photon%20Transport%20Code%20System." target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">更多信息</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>Doors</h2>
                            <p>开发单位：美国-橡树岭国家实验室</p>
                            <p>使用许可：暂缺/未开放</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">DOORS3.2a离散纵坐标输运计算代码系统</p>
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
                                <th>开发单位</th>
                                <td>开发单位：美国-橡树岭国家实验室</td>
                            </tr>
                            <tr>
                                <th>参考链接</th>
                                <td>https://rsicc.ornl.gov/PackageDetail.aspx?p=DOORS%203.2A&id=C00650&cpu=MFMWS&v=04&t=One,%20Two-%20and%20
                                Three-Dimensional%20Discrete%20Ordinates%20Neutron/Photon%20Transport%20Code%20System.</td>
                            </tr>
                            <tr>
                                <th>软件详细说明</th>
                                <td>
                              DOORS3.2a离散纵坐标输运计算代码系统包括最新版本的CCC-0543/TORT-DORT, CCC-0254/ANISN-ORNL, 
                              CCC-0628/ gbanis和CCC-0351/FALSTF。它还包括PSR-0155/DOGS包中的ISOPLOT代码，以及下面列出的以前包含在TORT-DORT包中的各种实用程序。
                              在这个版本中，每个模块都是一个单独的可执行文件。根据需要，可以在单个作业中运行多个模块，方法是使用“jdos”调用“drv”模块，该模块用于解释和统筹输入文件中的计算序列。<br />
				在二维或三维几何系统中，当粒子从外来源入射到系统时，或由于与系统相互作用而在系统内部产生粒子的通量，而在一维或二维几何系统中使用DORT。
				其原理应用于中子和光子的深穿透传输。反应堆本征值问题也可以解决。结果的大量打印编辑是可用的，结果可以转移到输出文件中进行后续分析。<br />
				阿尼斯解决了一维玻尔兹曼输运方程中子或伽玛射线在平板，球形或圆柱形几何。gbanis是基于anis的，但是经过了修改，允许在不同材料之间的所有接
				口上随机化一个组内的多组通量，并减少了涉及到中子向上散射到更高能量组的外部迭代次数。gbanis需要比anis更少的外部迭代，通过在一个“带”内的能量组
				上执行“内部迭代”，并在移动到下一个带之前将这些组收敛。这些“内部”迭代有点像anis中的外部迭代。因此，可以用一个传统的外迭代来求解一个向上散射且没有裂变的
				计算。与anis一样，gbanis包含了处理一般各向异性散射、逐点收敛准则和交替阶跃函数差分方程的技术，有效地消除了有时在离散纵坐标解中发现的振荡通量分布。<br />
				等压线采用桑迪亚国家实验室RSCORS图形系统。SNL的CMP代码维护系统用于为目标计算机构建Fortran源文件。RSCORS库(librscors.a)可用于为
				BOT3P2.0和BOT3P3.0 (Bologna Transport Analysis pre - post - processor)构建可执行文件。
				DOORS读取的是anisn格式的横截面库，这些库并不包含在包中。用户可以在RSICC的数据库集合中选择几个可用的选项。<br />
				2003年10月，这个软件包被更新到doors3.2 .2a，以满足越来越多的对Linux和Windows系统支持的要求。除了对支持PC架构和当前编译器进行相对较小的修改外，包的其余部分不变。

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
     <!-- -------------------------------------++++++++END+++++++DOORS+++++++++END+++++++++++---------------------------------------------------- -->

 <!-- -------------------------------------++++++++++++++++++++EGS+++++++++++++++++++++++----------------------------------------------------
                <div class="item">  
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-ornl.png" alt="">
                            <a href="/ncloud/simulation" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>EGS</h2>
                            <p>开发单位：美国-橡树岭国家实验室</p>
                            <p>使用许可：未知/待核实</p>
                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">待补充</p>
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
                                <th>软件类型</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>更多链接</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                   

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
      <!-- -------------------------------------++++++++END+++++++++EGS+++++++++END+++++++++++---------------------------------------------------- -->    
     
 <!-- -------------------------------------++++++++++++++++++++ERANOS+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-cea.jpg" alt="">
                            <a href="http://www.cea.fr/" target="_blank">
                                 <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>ERANOS</h2>
                            <p>开发单位：法国原子能和替代能源委员会</p>
                            <p>使用许可：未知</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">确定论快中子反应堆堆芯屏蔽计算系统</p>
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
                                <th>开发单位</th>
                                <td>开发单位：法国原子能和替代能源委员会</td>
                            </tr>
                            <tr>
                                <th>参考链接</th>
                                <td>http://www.cea.fr/</td>
                            </tr>
                            <tr>
                                <th>软件详细说明</th>
                                <td>
                            	确定论反应堆栅格计算代码。用于快堆反应堆堆芯计算。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
     <!-- -------------------------------------++++++++END+++++++ERANOS+++++++++END+++++++++++---------------------------------------------------- -->    
     
      <!-- -------------------------------------++++++++++++++++++++FLUKA+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item">  
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/01tensorflow.png" alt="">
                            <a href="/ncloud/simulation" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>FLUKA</h2>
                            <p>开发单位：多国科学家-CERN</p>
                            <p>使用许可：未知/待核实</p>
                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">待补充</p>
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
                                <th>软件类型</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>更多链接</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                   

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
      <!-- -------------------------------------++++++++END+++++++++FLUKA+++++++++END+++++++++++---------------------------------------------------- -->         
   <!-- -------------------------------------++++++++++++++++++++JMCT+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item">  
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/01tensorflow.png" alt="">
                            <a href="/ncloud/simulation" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>JMCT</h2>
                            <p>开发单位：中国-中国工程物理研究院</p>
                            <p>使用许可：未知/待核实</p>
                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">待补充</p>
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
                                <th>软件类型</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>更多链接</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                   

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
      <!-- -------------------------------------++++++++END+++++++++JMCT+++++++++END+++++++++++---------------------------------------------------- -->
<!-- -------------------------------------++++++++++++++++++++McCARD+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item">  
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/01tensorflow.png" alt="">
                            <a href="/ncloud/simulation" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>McCARD</h2>
                            <p>开发单位：韩国-首尔大学</p>
                            <p>使用许可：未知/待核实</p>
                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">待补充</p>
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
                                <th>软件类型</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>更多链接</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                   

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
      <!-- -------------------------------------++++++++END+++++++++McCARD+++++++++END+++++++++++---------------------------------------------------- -->
     
     
 <!-- -------------------------------------++++++++++++++++++++NECP+++++++++++++++++++++++----------------------------------------------------
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-necp.png" alt="">
                            <a href="http://necp.xjtu.edu.cn/rjyf.htm" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">下载软件</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>NECP系列程序</h2>
                            <p>开发单位：西安交通大学NECP团队</p>
                            <p>使用许可：NECP Lisence</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">NECP项目组程序包括：核数据处理程序NECP-Atlas、
								压水堆堆芯燃料管理计算程序系统NECP-Bamboo、
								先进反应堆分析系统NECP-SARAX、
								数值反应堆物理计算程序NECP-X、
								高性能离散纵标输运计算程序NECP-Hydra、
								压水堆堆芯三维功率分布在线监测程序NECP-ONION</p>
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
                                <th>开发单位</th>
                                <td>开发单位：西安交通大学NECP团队</td>
                            </tr>
                            <tr>
                                <th>参考链接</th>
                                <td>http://necp.xjtu.edu.cn/rjyf.htm</td>
                            </tr>
                            <tr>
                                <th>软件详细说明</th>
                                <td>
                            	NECP项目组程序包括：核数据处理程序NECP-Atlas、
								压水堆堆芯燃料管理计算程序系统NECP-Bamboo、
								先进反应堆分析系统NECP-SARAX、
								数值反应堆物理计算程序NECP-X、
								高性能离散纵标输运计算程序NECP-Hydra、
								压水堆堆芯三维功率分布在线监测程序NECP-ONION
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
     <!-- -------------------------------------++++++++END+++++++NECP+++++++++END+++++++++++---------------------------------------------------- -->    
                  <!-- -------------------------------------++++++++++++++++++++OpenMC+++++++++++++++++++++++---------------------------------------------------- -->
                <div class="item">  <!--OpenMC-->
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-openmc.png" alt="">
                            <a href="https://openmc.readthedocs.io/en/stable/" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">申请指南</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>OpenMC</h2>
                            <p>开发单位：MIT,NSE</p>
                            <p>使用许可：开源</p>
                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">OpenMC is a Monte Carlo particle transport simulation code focused on neutron criticality calculations.</p>
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
                                <th>软件类型</th>
                                <td>开源软件；开发单位：MIT,NSE</td>
                            </tr>
                            <tr>
                                <th>软件来源</th>
                                <td>http://mit-crpg.github.io/openmc/</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
OpenMC is a Monte Carlo particle transport simulation code focused on neutron criticality calculations. It is capable of simulating 3D models based on constructive solid geometry with second-order surfaces. OpenMC supports either continuous-energy or multi-group transport. The continuous-energy particle interaction data is based on a native HDF5 format that can be generated from ACE files used by the MCNP and Serpent Monte Carlo codes.
OpenMC was originally developed by members of the Computational Reactor Physics Group at the Massachusetts Institute of Technology starting in 2011. Various universities, laboratories, and other organizations now contribute to the development of OpenMC. For more information on OpenMC, feel free to send a message to the User’s Group mailing list.
                                   

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
      <!-- -------------------------------------++++++++END+++++++++OpenMC+++++++++END+++++++++++---------------------------------------------------- -->     

   <!-- -------------------------------------++++++++++++++++++++PHTIS+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item">  
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/01tensorflow.png" alt="">
                            <a href="/ncloud/simulation" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>PHITS</h2>
                            <p>开发单位：日本-JAEA</p>
                            <p>使用许可：未知/待核实</p>
                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">待补充</p>
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
                                <th>软件类型</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>更多链接</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                   

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
      <!-- -------------------------------------++++++++END+++++++++PHITS+++++++++END+++++++++++---------------------------------------------------- -->
 <!-- -------------------------------------++++++++++++++++++++RMC+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item">  
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/01tensorflow.png" alt="">
                            <a href="/ncloud/simulation" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>RMC</h2>
                            <p>开发单位：中国-清华大学</p>
                            <p>使用许可：未知/待核实</p>
                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">待补充</p>
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
                                <th>软件类型</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>更多链接</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                   

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
      <!-- -------------------------------------++++++++END+++++++++RMC+++++++++END+++++++++++---------------------------------------------------- -->    
 
 <!-- -------------------------------------++++++++++++++++++++Serpernt+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item">  
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/01tensorflow.png" alt="">
                            <a href="/ncloud/simulation" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>Serpent</h2>
                            <p>开发单位：芬兰-VTT技术研究中心</p>
                            <p>使用许可：未知/待核实</p>
                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">待补充</p>
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
                                <th>软件类型</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>更多链接</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                   

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
      <!-- -------------------------------------++++++++END+++++++++Serpent+++++++++END+++++++++++---------------------------------------------------- -->  
     <!-- -------------------------------------++++++++++++++++++++TORT+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-ornl.png" alt="">
                            <a href="https://rsicc.ornl.gov/PackageDetail.aspx?p=TDTORT&id=C00709&cpu=MNYWS&v=00&t=Time-Dependent,%203-D,%20Discrete%20Ordinates,%20Neutron%20Transport%20Code%20System." target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">更多信息</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>TDTORT</h2>
                            <p>开发单位：美国-橡树岭国家实验室</p>
                            <p>使用许可：暂缺/未开放</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">TDTORT 时分、3D、离散坐标中子输运计算代码</p>
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
                                <th>开发单位</th>
                                <td>开发单位：美国-橡树岭国家实验室</td>
                            </tr>
                            <tr>
                                <th>参考链接</th>
                                <td>https://rsicc.ornl.gov/PackageDetail.aspx?p=TDTORT&id=C00709&cpu=MNYWS&v=00&t=Time-Dependent,
                                %203-D,%20Discrete%20Ordinates,%20Neutron%20Transport%20Code%20System.</td>
                            </tr>
                            <tr>
                                <th>软件详细说明</th>
                                <td>
                             	TDTORT 时分、3D、离散坐标中子输运计算代码
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
     <!-- -------------------------------------++++++++END+++++++TORT+++++++++END+++++++++++---------------------------------------------------- -->     
 <!-- -------------------------------------++++++++++++++++++++Tripoli+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item">  
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-cea.jpg" alt="">
                            <a href="/ncloud/simulation" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>Tripoli</h2>
                            <p>开发单位：法国-CEA</p>
                            <p>使用许可：未知/待核实</p>
                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">待补充</p>
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
                                <th>软件类型</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>更多链接</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                   

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
      <!-- -------------------------------------++++++++END+++++++++Tripoli+++++++++END+++++++++++---------------------------------------------------- -->


<!-- -------------------------------------++++++++++++++++++++WIMS+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-iaea.gif" alt="">
                            <a href="*********" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">下载软件</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>WIMS</h2>
                            <p>开发单位：多国科学家，IAEA维护</p>
                            <p>使用许可：开源</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">确定论反应堆栅格计算代码。</p>
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
                                <th>开发单位</th>
                                <td>开发单位：多国科学家，IAEA维护</td>
                            </tr>
                            <tr>
                                <th>参考链接</th>
                                <td>https://rsicc.ornl.gov/PackageDetail.aspx?p=WIMS-ANL%204.0&id=C00698&cpu=MNYCP&v=00&t=Deterministic%20Code%20System
                                %20for%20Reactor%20Lattice%20Calculation.</td>
                            </tr>
                            <tr>
                                <th>软件详细说明</th>
                                <td>
                            	确定论反应堆栅格计算代码。用于反应堆堆芯计算。
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
     <!-- -------------------------------------++++++++END+++++++WIMS+++++++++END+++++++++++---------------------------------------------------- -->
 

     
       </div>
      </ul>
     </div>
    </div>
<!-- ******************************************************////////END//// 确定论仿真软件 ////END////////******************************************************** -->    

<!-- ******************************************************/////////////// 概率论仿真软件 ///////////////******************************************************** --> 
    <div id="MCS" class="page_Switchbox" style="display:none;">
     <div class="bd">
      <ul>
    
     <div class="content rgzn">
      
               <!-- -------------------------------------++++++++++++++++++++SuperMC+++++++++++++++++++++++----------------------------------------------------
                <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-supermcmcam.png" alt="">
                            <a href="http://www.supermc.cn/login/loginPage.action" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">申请指南</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>SurperMC</h2>
                            <p>开发单位：中国-FDS凤麟核能团队</p>
                            <p>使用许可：SuperMC Lisence</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">超级蒙特卡罗核计算仿真软件系统SuperMC是一套通用、智能、多功能的核系统设计与安全分析软件。
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
                                <th>开发单位</th>
                                <td>中国-FDS凤麟核能团队</td>
                            </tr>
                            <tr>
                                <th>软件来源</th>
                                <td>http://www.fds.org.cn/newsshows.asp?newsid=470</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                 超级蒙特卡罗核计算仿真软件系统SuperMC是一套通用、智能、多功能的核系统设计与安全分析软件。
                            多物理耦合分析自动建模软件SuperMC/MCAM(multi-physics coupling analysis modeling program)是其中的自动建模模块,其目标是为
                            多物理耦合分析提供精确高效的建模功能。SuperMC/MCAM最新版本SuperMC/MCAM5.2支持SuperMC、MCNP、FLUKA、Geant4、TRIPOLI等多种
                            蒙特卡罗程序计算模型的自动建模,可进行CAD模型与蒙特卡罗计算模型之间的自动双向转换,以及进行各蒙特卡罗程序计算模型之间的相互转换
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
    <!-- -------------------------------------++++++++END+++++++SuperMC+++++++++END+++++++++++---------------------------------------------------- -->
  <!-- -------------------------------------++++++++++++++++++++SCALE+++++++++++++++++++++++---------------------------------------------------- -->    <!-- -------------------------------------++++++++END+++++++SCALE+++++++++END+++++++++++---------------------------------------------------- -->
  
 <!-- -------------------------------------++++++++++++++++++++EGS+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item">  
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-ornl.png" alt="">
                            <a href="/ncloud/simulation" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>EGS</h2>
                            <p>开发单位：美国-橡树岭国家实验室</p>
                            <p>使用许可：未知/待核实</p>
                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">待补充</p>
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
                                <th>软件类型</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>更多链接</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                   

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
      <!-- -------------------------------------++++++++END+++++++++EGS+++++++++END+++++++++++---------------------------------------------------- -->
 
  <!-- -------------------------------------++++++++++++++++++++FISPACT+++++++++++++++++++++++---------------------------------------------------- -->      <!-- -------------------------------------++++++++END+++++++++FISPACT+++++++++END+++++++++++---------------------------------------------------- -->
  <!-- -------------------------------------++++++++++++++++++++JMCT+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item">  
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/01tensorflow.png" alt="">
                            <a href="/ncloud/simulation" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>JMCT</h2>
                            <p>开发单位：中国-中国工程物理研究院</p>
                            <p>使用许可：未知/待核实</p>
                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">待补充</p>
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
                                <th>软件类型</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>更多链接</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                   

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
      <!-- -------------------------------------++++++++END+++++++++JMCT+++++++++END+++++++++++---------------------------------------------------- -->
  <!-- -------------------------------------++++++++++++++++++++PHTIS+++++++++++++++++++++++---------------------------------------------------- -->      <!-- -------------------------------------++++++++END+++++++++PHITS+++++++++END+++++++++++---------------------------------------------------- -->
 
  <!-- -------------------------------------++++++++++++++++++++RMC+++++++++++++++++++++++---------------------------------------------------- 
                <div class="item">  
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/01tensorflow.png" alt="">
                            <a href="/ncloud/simulation" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>RMC</h2>
                            <p>开发单位：中国-清华大学</p>
                            <p>使用许可：未知/待核实</p>
                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">待补充</p>
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
                                <th>软件类型</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>更多链接</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                   

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
      <!-- -------------------------------------++++++++END+++++++++RMC+++++++++END+++++++++++---------------------------------------------------- -->    
 
     	 <!-- -------------------------------------++++++++++++++++++++SRIM+++++++++++++++++++++++----------------------------------------------------
                <div class="item">  
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/01tensorflow.png" alt="">
                            <a href="/ncloud/simulation" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">申请指南</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>SRIM</h2>
                            <p>开发单位：多国科学家-SRIM组织</p>
                            <p>使用许可：SRIM Lisence</p>
                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">待补充</p>
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
                                <th>软件类型</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>更多链接</th>
                                <td> </td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                   

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
      <!-- -------------------------------------++++++++END+++++++++SRIM+++++++++END+++++++++++---------------------------------------------------- -->
      
      </div>
     
      </ul>
     </div>
    </div>
<!-- ******************************************************////////END//// 概率论仿真软件 ////END////////******************************************************** --> 

<!-- ******************************************************/////////////// 热工水力计算软件 ///////////////******************************************************** -->   
    <div id="CFD" class="page_Switchbox" style="display:none;">
     <div class="bd">
      <ul>

     <div class="content rgzn">
     
                
                <div class="item">  <!--OpenFOAM-->
                   <div class="clearfix">
                       <div class="item-l">
                           <img src="./resources/images/icon-openfoma.png" alt="">
                           <a href="https://openfoam.org/" target="_blank">
                               <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">访问官网</button>
                           </a>
                       </div>
                       <div class="item-m">
                           <h2>OpenFOAM</h2>
                          <p>开发单位：OpenFOMA基金会</p>
                           <p>使用许可：开源软件</p>

                       </div>
                       <div class="item-r">
                           <p class="title">软件介绍</p>
                           <p class="desc">OpenFOAM is free, open source software for CFD from the OpenFOAM Foundation.</p>
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
                               <th>软件类型</th>
                               <td>CFD </td>
                           </tr>
                           <tr>
                               <th>软件来源</th>
                               <td>https://openfoam.org/ </td>
                           </tr>
                           <tr>
                               <th>软件详细介绍</th>
                               <td>
                                  OpenFOAM is the leading free, open source software for computational fluid dynamics (CFD), owned by the OpenFOAM Foundation and distributed exclusively under the General Public Licence (GPL). The GPL gives users the freedom to modify and redistribute the software and a guarantee of continued free use, within the terms of the licence.
OpenFOAM was created by Henry Weller in 1989 under the name “FOAM” and was released open source as “OpenFOAM” by Henry Weller, Chris Greenshields and Mattijs Janssens in December 2004. Since then, OpenFOAM has continued to be managed and developed with new versions being released to the public each year.  The current version is 6. In 2014, the development line of OpenFOAM, known as “OpenFOAM-dev” was released publicly on GitHub.
                                   
                               </td>
                           </tr>
                       </table>
                   </div>
                </div>
                
                
                
            </div>
     
      </ul>
     </div>
    </div>
<!-- ******************************************************////////END//// 热工水力计算软件 ////END////////******************************************************** -->    

<!-- ******************************************************/////////////// 概率安全分析软件 ///////////////******************************************************** -->     
    <div id="PSA" class="page_Switchbox" style="display:none;">
     
     <div class="bd">
      <ul>
      <div class="content rgzn">

      <div class="item"><!--可靠性与概率安全分析软件系统 RiskA-->
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-fds.png" alt="">
                            <a href="http://www.fds.org.cn/softtechshows.asp?newsid=471" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">申请指南</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>可靠性与概率安全分析软件系统 <br />RiskA</h2>
                            <p>开发单位：中国-FDS凤麟核能团队</p>
                            <p>使用许可：RiskA Lisence</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">可靠性与概率安全分析软件系统 RiskA,已经成功应用于40余个国家的600余个单位。</p>
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
                                <th>软件类型</th>
                                <td>开源软件；开发者：中国-FDS凤麟核能团队</td>
                            </tr>
                            <tr>
                                <th>软件来源</th>
                                <td>http://www.fds.org.cn/softtechshows.asp?newsid=471 </td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                    <img src="./resources/suggest/RiskA.png" alt="" />
                                </td>
                            </tr>
                        </table>
                    </div>
         </div>
         
         <div class="item"><!--	核电站实时风险管理系统 RiskAngel/TQRM-->
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-fds.png" alt="">
                            <a href="http://www.fds.org.cn/softtechshows.asp?newsid=471" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">申请指南</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>核电站实时风险管理系统<br /> RiskAngel/TQRM</h2>
                           <p>开发单位：中国-FDS凤麟核能团队</p>
                            <p>使用许可：RiskA Lisence</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">核电站实时风险管理系统 RiskAngel/TQRM，是一款实时风险管理系统，可根据核电站实际管理流程方便进行灵活定制。</p>
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
                                <th>软件类型</th>
                                <td>开源软件；开发者：中国-FDS凤麟核能团队</td>
                            </tr>
                            <tr>
                                <th>软件来源</th>
                                <td>http://www.fds.org.cn/softtechshows.asp?newsid=471 </td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                    <img src="./resources/suggest/RiskAngelTQRM.png" alt="" />
                                </td>
                            </tr>
                            
                        </table>
                    </div>
         </div>
         </div>
      </ul>
      
     </div>
    </div>
<!-- ******************************************************////////END//// 概率安全分析软件 ////END////////******************************************************** -->     
    

<!-- ******************************************************/////////////// 可视化分析软件 ///////////////******************************************************** --> 
    <div id="KSH" class="page_Switchbox" style="display:none;">
     <div class="bd">
      <ul>
      <div class="content rgzn">
      <div class="item"> 
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-supermcmcam.png" alt="">
                            <a href="http://www.supermc.cn/login/loginPage.action" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">申请指南</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>SurperMC</h2>
                            <p>开发单位：中国-FDS凤麟核能团队</p>
                            <p>使用许可：SuperMC Lisence</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">超级蒙特卡罗核计算仿真软件系统SuperMC是一套通用、智能、多功能的核系统设计与安全分析软件。
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
                                <th>开发单位</th>
                                <td>中国-FDS凤麟核能团队</td>
                            </tr>
                            <tr>
                                <th>软件来源</th>
                                <td>http://www.fds.org.cn/newsshows.asp?newsid=470</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
                                 超级蒙特卡罗核计算仿真软件系统SuperMC是一套通用、智能、多功能的核系统设计与安全分析软件。
                            多物理耦合分析自动建模软件SuperMC/MCAM(multi-physics coupling analysis modeling program)是其中的自动建模模块,其目标是为
                            多物理耦合分析提供精确高效的建模功能。SuperMC/MCAM最新版本SuperMC/MCAM5.2支持SuperMC、MCNP、FLUKA、Geant4、TRIPOLI等多种
                            蒙特卡罗程序计算模型的自动建模,可进行CAD模型与蒙特卡罗计算模型之间的自动双向转换,以及进行各蒙特卡罗程序计算模型之间的相互转换
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
      <div class="item"><!--ParaView-->
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/icon-paraview.png" alt="">
                            <a href="https://www.paraview.org/" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">申请指南</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>ParaView</h2>
                            <p>开发单位：美国-桑迪亚国家实验室、Kitware公司</p>
                            <p>使用许可：开源软件</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">ParaView是一款开源、跨平台数据分析和可视化程序。</p>
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
                                <th>软件类型</th>
                                <td>数据可视化工具 </td>
                            </tr>
                            <tr>
                                <th>软件来源</th>
                                <td>https://www.paraview.org/</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>ParaView是对二维和三维数据进行分析和可视化的程序，它既是一个应用程序框架，也可以直接使用（Turn-Key）。
ParaView支持并行，可以运行于单处理器的工作站，也可以运行于分布式存储器的大型计算机。 ParaView用C++编写，基于VTK（Visualization ToolKit）开发，图形用户界面用Qt开发，开源、跨平台。
ParaView用户可以迅速的建立起可视化环境利用定量或者是定性的手段去分析数据。利用它的批量处理能力可以在三维或者是在报表中交互进行“数据挖掘”。
                                </td>
                            </tr>
                        </table>
                    </div>
         </div>
         
         <div class="item"><!--ZVVIEW-->
                    <div class="clearfix">
                        <div class="item-l">
                            <img src="./resources/images/iaea.png" alt="">
                            <a href="https://www-nds.iaea.org/public/zvview/" target="_blank">
                                <button class="btn btn-info" onclick="javascript:_paq.push(['trackPageView','TensorFlow:rgzn']);">申请指南</button>
                            </a>
                        </div>
                        <div class="item-m">
                            <h2>ZVView</h2>
                            <p>开发单位：IAEA-NDS部门</p>
                            <p>使用许可：公开授权（Open Access）</p>

                        </div>
                        <div class="item-r">
                            <p class="title">软件介绍</p>
                            <p class="desc">ZVView is a multi-platform software package that has been designed so that evaluators of nuclear reaction data can perform efficient interactive visual analyses of cross section data retrieved from the EXFOR and ENDF libraries</p>
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
                                <th>软件类型</th>
                                <td>Open Access软件；开发单位：IAEA-NDS部门</td>
                            </tr>
                            <tr>
                                <th>软件来源</th>
                                <td> https://www-nds.iaea.org/public/zvview/</td>
                            </tr>
                            <tr>
                                <th>软件详细介绍</th>
                                <td>
ZVView is a multi-platform software package that has been designed so that evaluators of nuclear reaction data can perform efficient interactive visual analyses of cross section data retrieved from the EXFOR and ENDF libraries. The main function of ZVView is to plot these data for inter comparison, using a variety of options to study graphical, numerical and bibliographic information along with the possibility of analysing the results of the user's evaluations. Since 2010, ZVView was extended to plot 2-dimentional arrays Z(X,Y) with the main purpose to display correlation matrices.
ZVView allows user to change parameters of the plot, such as: type of data view (curve, histogram, map, 3D, animation, symbols of points, colors, error bars), logarithmic and linear scales, zoom, split plot to sub-windows, smoothing by least-squares method, choice of data and authors to be plotted, and scans of their points, change language on the fly, etc.

                                </td>
                            </tr>
                            
                        </table>
                    </div>
         </div>
         
         </div>
      </ul>
     </div>
    </div>
<!-- ******************************************************////////END//// 可视化分析软件 ////END////////******************************************************** -->   


<!-- ******************************************************/////////////// 核应急决策支持软件 ///////////////******************************************************** -->  
    <div id="NES" class="page_Switchbox" style="display:none;">
     <div class="bd">
      <ul>
      <div class="content rgzn">
         </div>
      </ul>
     </div>
    </div>
<!-- ******************************************************////////END//// 核应急决策支持软件  ////END////////******************************************************** -->  
    
<!-- /***************************************////Under ConstruCtion/////////****************************************/       -->
    <div id="ucc" class="page_Switchbox" style="display:none;">
      <div class="bd">
      <ul>
       <h3 style=" color:#1587C4; font-weight:bold; margin-top:20px; text-align:center;">正在建设中...  </h3><br/>
      <p class="indent">非常抱歉，您所查看的功能正在建设中，请一段时间后再进行查看....</p>
      <center>
      <div>
      <img src="./resources/images/timg.jpg" alt="Under Construction" align="middle" width="500">
      </div>
		</center>

      </ul>
     </div>
      
     </div>
<!-- /***************************************////END OF Under ConstruCtion/////////****************************************/       --> 
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
