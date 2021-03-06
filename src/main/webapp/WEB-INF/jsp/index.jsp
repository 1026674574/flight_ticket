<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--.
1`
  Created by IntelliJ IDEA.
  User: asus1
  Date: 2021/5/28
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language=    "java" %>
${pageContext.request.contextPath}
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <!-- IE 浏览器运行最新的渲染模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- 启用响应式特性 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 双核使用webkit内核 -->
    <meta name="renderer" content="webkit">
    <title>商旅系统</title>
    <link href="${pageContext.request.contextPath}/css/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/css/common.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/css/corptravel.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/css/enterprise.css" rel="stylesheet">

    <!-- IconFont图标 -->
    <link href="${pageContext.request.contextPath}/css/css/iconfont.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/chat/css/chat.css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/css/js/jquery-1.9.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/css/js/bootstrap.min.js"></script>

    <!-- layer弹框 2.1 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/css/js/layer/layer.js"></script>
    <!-- 日历控件 -->
    <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/css/js/My97DatePicker/WdatePicker.js"></script>
</head>
<body class="bg-body">
<!-- header -->
<nav class="navbar navbar-default navbar-fixed-top bg-white">
    <!-- 小导航 -->
    <nav class="navbar navbar-default" style=" min-height:30px; line-height:30px; margin-bottom:0px; border-radius:0;">
        <div class="container font12">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                        aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- <span style=" margin-left:-15px; margin-right:20px;">企业商旅管理</span>-->
            </div>
            <ul class="nav navbar-nav nav-top-small userinfo" style="margin-left:-15px;">
                <li class="dropdown"><a href="${pageContext.request.contextPath}/login" class="dropdown-toggle">
                    请登录</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right nav-top-small">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <i class="icon iconfont font14 " style=" vertical-align:middle;">&#xe62b;</i> 028-12345678 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">（或）028-12345678</a></li>
                        <li><a href="#">（或）028-12345678</a></li>
                        <!--<li role="separator" class="divider"></li>-->
                    </ul>
                </li>

            </ul>
            <ul class="nav navbar-nav navbar-right nav-top-small">
                <li><a href="帮助中心/help.html">帮助中心</a></li>

            </ul>
        </div>
    </nav>
    <!-- 小导航结束 -->

    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                    aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class=" " href="差旅报告/汇总.html"><img src="img/logo.png" width="210" height="70" alt="系统LOGO" class="pull-left mar-right-30"
                                                  style="margin-left:-15px;"></a>
            <!--<h4 class="navbar-brand font24" >成都万里行科技发展有限公司</h4>-->
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="searchList.html"><i class="icon iconfont icon-nav-block font24">&#xe620;</i> 在线预订</a></li>
                <li><a href="order/orderList.html"><i class="icon iconfont icon-nav-block font24">&#xe61c;</i> 订单管理</a></li>

            </ul>
        </div><!-- /.navbar-collapse -->

    </div>
</nav>
<!-- header end -->
<!-- 搜索 -->
<div class="index-wall white " style=" ">
    <div class="container" style=" position:relative;">
        <form class="form-inline" id="serachForm">
            <div class="form-group">
                <select name="rangeType" class="form-control">
                    <option selected>单程</option>
                    <option>往返</option>
                </select>
            </div>
            <div class="form-group mar-left-10">
                <label for="">出发城市</label>
                <input type="text" name="departure" class="form-control" style="width: 85px;" value="上海" placeholder="" />
            </div>
            <div class="form-group">
                <label for=""> — <a href="#" class="huan">换</a> —
                </label>
            </div>
            <div class="form-group">
                <label for="">到达城市</label> <input type="text" name="destination" class="form-control" style="width: 85px;" id=""
                                                  value="北京" placeholder="">
            </div>
            <div class="form-group mar-left-10">
                <label for="">出发日期</label> <input type="text" class="form-control " style="width: 110px;" id="startTime" name="startTime"
                                                  value="2020-01-01" placeholder="" onClick="WdatePicker()">
            </div>
            <div class="form-group mar-left-10">
                <label for="">返回日期</label> <input type="text" class="form-control " id="endTime" style="width: 110px;" onClick="WdatePicker()"
                                                  name="endTime" value="" placeholder="输入到达日期">
            </div>
            <div class="form-group mar-left-10">
                <select id="dropAirlines" class="form-control" name="airline" style="width: 120px;">
                    <option value="全部航司">全部航司</option>
                    <option value="川航">3U-川航</option>
                    <option value="8C">8C-东星</option>
                    <option value="8L">8L-祥鹏</option>
                    <option value="9C">9C-春秋</option>
                    <option value="BK">BK-奥凯</option>
                    <option value="CA">CA-国航</option>
                    <option value="CN">CN-新华</option>
                    <option value="CZ">CZ-南航</option>
                    <option value="DR">DR-瑞丽航空</option>
                    <option value="DZ">DZ-东海</option>
                    <option value="EU">EU-成都(鹰联)</option>
                    <option value="FM">FM-上航</option>
                    <option value="FU">FU-福州航空</option>
                    <option value="G5">G5-华夏</option>
                    <option value="GJ">GJ-长龙航空</option>
                    <option value="GS">GS-天津</option>
                    <option value="GX">GX-广西航空</option>
                    <option value="GY">GY-多彩贵州航空</option>
                    <option value="HO">HO-吉祥</option>
                    <option value="HU">HU-海航</option>
                    <option value="JD">JD-首都(金鹿)</option>
                    <option value="JR">JR-幸福</option>
                    <option value="KN">KN-联航</option>
                    <option value="KY">KY-昆航</option>
                    <option value="MF">MF-厦航</option>
                    <option value="MU">MU-东航</option>
                    <option value="NS">NS-河北</option>
                    <option value="PN">PN-西部</option>
                    <option value="QW">QW-青岛</option>
                    <option value="SC">SC-山东</option>
                    <option value="TV">TV-西藏</option>
                    <option value="UQ">UQ-乌鲁木齐航空</option>
                    <option value="VD">VD-鲲鹏</option>
                    <option value="Y8">Y8-扬子江快运航空</option>
                    <option value="YI">YI-英安</option>
                    <option value="ZH">ZH-深航</option>
                </select>
            </div>
            <input type="button" class="btn btn-warning mar-left-10" value="搜索" onclick="searchLine()" />
            <!-- <button class="btn btn-warning mar-left-10" onclick="searchLine()">搜索</button> -->
        </form>
    </div>
</div>
<!-- 搜索结束 -->

<!-- 日期开始 -->
<div class="container mar-bottom-15 ">
    <div class=" bor-solid-1" style=" background:#EFF2F5;">
        <div class="arrow-left" onclick="weekLeft()"><a href="javascript:;">&nbsp;</a></div>
        <div class="arrow-right" onclick="weekRight()"><a href="javascript:;">&nbsp;</a></div>
        <ul class="nav nav-tabs nav-justified " id="week">

        </ul>

    </div>
</div>
<!-- 日期结束 -->

<!-- 列表开始 -->
<div class="container mar-bottom-30 ">
    <div class="hangbanlist">
<%--        <div>--%>
<%--            <!-- 表头 -->--%>
<%--            <ul class="list-inline bor-bottom-solid-1  ">--%>
<%--                <li class="w-percentage-25"><img src="img/air/3U.png" width="24" height="24"> <strong> 川航</strong> 3U8891--%>
<%--                    <span class="gray-999 font12 mar-left-10">机型：空客320（中）</span>--%>
<%--                </li>--%>
<%--                <li class="text-right w80"> <strong class="time "></strong></li>--%>
<%--                <li class=""> —— </li>--%>
<%--                <li class="w80"> <strong class="time ">23:30</strong></li>--%>
<%--                <li class="w100 text-right"> 成都双流T2</li>--%>
<%--                <li class=""> —— </li>--%>
<%--                <li class=" w100"> 北京首都T1 </li>--%>
<%--                <li class="w-percentage-20 text-center"> <span class="gray-999 ">机建 + 燃油：</span><span class="gray-999 rmb font12">￥50--%>
<%--								+ ￥20</span></li>--%>
<%--            </ul>--%>
<%--            <!-- 表头结束 -->--%>
<%--            <!-- 表BODY -->--%>
<%--            <div class="collapse " id="collapseExample2" style=" display:block;">--%>
<%--                <div class="hangbanlist-body " style=" background-color:#FEFCFC;">--%>
<%--                    <ul class="list-inline">--%>
<%--                        <li class="w-percentage-20"><strong class="blue-0093dd">特殊舱位(D)</strong></li>--%>
<%--                        <li class="w-percentage-25">座位数：≥9</li>--%>
<%--                        <li class="w-percentage-25">票面价：<span class="rmb">￥1070</span></li>--%>
<%--                        <li class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥1020</strong> <span class="gray font12">1.9折</span></li>--%>
<%--                        <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='在线预订/政策选择.html';">订票</button></li>--%>
<%--                    </ul>--%>
<%--                    <ul class="list-inline">--%>
<%--                        <li class="w-percentage-20">80折(M)</li>--%>
<%--                        <li class="w-percentage-25">座位数：≥9</li>--%>
<%--                        <li class="w-percentage-25">票面价：<span class="rmb">￥1070</span></li>--%>
<%--                        <li class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥998</strong></li>--%>
<%--                        <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='在线预订/政策选择.html';">订票</button></li>--%>
<%--                    </ul>--%>
<%--                    <!-- 更多舱位 -->--%>
<%--                    <div class="panel " style="display:none;  background-color:#FEFCFC;">--%>
<%--                        <ul class="list-inline">--%>
<%--                            <li class="w-percentage-20"><strong class="blue-0093dd">特殊舱位(D)</strong></li>--%>
<%--                            <li class="w-percentage-25">座位数：≥9</li>--%>
<%--                            <li class="w-percentage-25">票面价：<span class="rmb">￥1070</span></li>--%>

<%--                            <li class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥1020</strong> <span class="gray font12">1.9折</span></li>--%>
<%--                            <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='在线预订/政策选择.html';">订票</button></li>--%>
<%--                        </ul>--%>
<%--                        <ul class="list-inline">--%>
<%--                            <li class="w-percentage-20"><strong class=" red">特惠(D)</strong></li>--%>
<%--                            <li class="w-percentage-25">座位数：≤5</li>--%>
<%--                            <li class="w-percentage-25">票面价：<span class="rmb">￥2980</span></li>--%>


<%--                            <li class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥2560</strong></li>--%>
<%--                            <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='在线预订/政策选择.html';">订票</button></li>--%>
<%--                        </ul>--%>
<%--                        <ul class="list-inline">--%>
<%--                            <li class="w-percentage-20"><strong class="red">紧急通道(D)</strong></li>--%>
<%--                            <li class="w-percentage-25">座位数：=1</li>--%>
<%--                            <li class="w-percentage-25">票面价：<span class="rmb">￥1070</span></li>--%>


<%--                            <li class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥1020</strong> <span class="gray font12">1.9折</span></li>--%>
<%--                            <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='在线预订/政策选择.html';">订票</button></li>--%>
<%--                        </ul>--%>
<%--                        <ul class="list-inline">--%>
<%--                            <li class="w-percentage-20">80折(M)</li>--%>
<%--                            <li class="w-percentage-25">座位数：≥9</li>--%>
<%--                            <li class="w-percentage-25">票面价：<span class="rmb">￥1070</span></li>--%>
<%--                            <li class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥998</strong></li>--%>
<%--                            <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='在线预订/政策选择.html';">订票</button></li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                    <!-- 更多舱位 结束 -->--%>
<%--                    <div class=" lh30 text-right"> <a href="#" class="mar-right-20 font12 flip">更多舱位</a></div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- 表BODY 结束 -->--%>
<%--        </div>--%>

        <c:forEach items="${flightList}" var="flight">
            <div>
                <!-- 表头 -->
                <ul class="list-inline bor-bottom-solid-1  ">
                    <li class="w-percentage-25"><img src="img/air/CA.png" width="24" height="24"> <strong>国航</strong> ${flight.idcar}</li>
                    <li class="text-right w80"><strong class="time ">${flight.start_time}</strong></li>
                    <li class=""> —— </li>
                    <li class="w80"> <strong class="time ">${flight.end_time}</strong></li>
                    <li class="w100 text-right"> ${flight.cityStart.airport}</li>
                    <li class=""> —— </li>
                    <li class=" w100">${flight.cityEnd.airport}</li>
                </ul>
                <!-- 表头结束 -->
                <!-- 表BODY -->
                <div class="collapse" id="collapseExample" style=" display:block;">
                    <div class="hangbanlist-body " style=" background-color:#FEFCFC;">
                        <ul class="list-inline">
                            <li class="w-percentage-20"><strong class="blue-0093dd">头等舱</strong></li>
                            <li class="w-percentage-25">座位数：${flight.number_3}</li>
                            <li class="w-percentage-25">票面价：<span class="rmb">￥${flight.price_3}</span></li>
                            <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='在线预订/政策选择.html';">订票</button></li>
                        </ul>
                        <ul class="list-inline">
                            <li class="w-percentage-20"><strong class=" red">商务舱</strong></li>
                            <li class="w-percentage-25">座位数：${flight.number_2}</li>
                            <li class="w-percentage-25">票面价：<span class="rmb">￥${flight.price_2}</span></li>
                            <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='在线预订/政策选择.html';">订票</button></li>
                        </ul>
                        <ul class="list-inline">
                            <li class="w-percentage-20"><strong class=" red">经济舱</strong></li>
                            <li class="w-percentage-25">座位数：${flight.number_1}</li>
                            <li class="w-percentage-25">票面价：<span class="rmb">￥${flight.price_1}</span></li>
                            <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='在线预订/政策选择.html';">订票</button></li>
                        </ul>
                    </div>
                </div>
                <!-- 表BODY 结束 -->
            </div>
    </c:forEach>
<%--        <div>--%>
<%--            <!-- 表头 -->--%>
<%--            <ul class="list-inline bor-bottom-solid-1  ">--%>
<%--                <li class="w-percentage-25"><img src="img/air/CA.png" width="24" height="24"> <strong>国航</strong> CA4109<span--%>
<%--                        class="gray-999 font12 mar-left-10">机型：空客320（中）</span></li>--%>
<%--                <li class="text-right w80"> <strong class="time ">16:30</strong></li>--%>
<%--                <li class=""> —— </li>--%>
<%--                <li class="w80"> <strong class="time ">23:30</strong></li>--%>
<%--                <li class="w100 text-right"> 成都双流T2</li>--%>
<%--                <li class=""> —— </li>--%>
<%--                <li class=" w100"> 北京首都T1 </li>--%>
<%--                <li class="w-percentage-20 text-center"> <span class="gray-999 ">机建 + 燃油：</span><span class="gray-999 rmb font12">￥50--%>
<%--								+ ￥20</span></li>--%>
<%--            </ul>--%>
<%--            <!-- 表头结束 -->--%>
<%--            <!-- 表BODY -->--%>
<%--            <div class="collapse" id="collapseExample" style=" display:block;">--%>
<%--                <div class="hangbanlist-body " style=" background-color:#FEFCFC;">--%>
<%--                    <ul class="list-inline">--%>
<%--                        <li class="w-percentage-20"><strong class="blue-0093dd">特殊舱位(D)</strong></li>--%>
<%--                        <li class="w-percentage-25">座位数：≥9</li>--%>
<%--                        <li class="w-percentage-25">票面价：<span class="rmb">￥1070</span></li>--%>
<%--                        <li class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥1020</strong> <span class="gray font12">1.9折</span></li>--%>
<%--                        <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='在线预订/政策选择.html';">订票</button></li>--%>
<%--                    </ul>--%>
<%--                    <ul class="list-inline">--%>
<%--                        <li class="w-percentage-20"><strong class=" red">特惠(D)</strong></li>--%>
<%--                        <li class="w-percentage-25">座位数：≤5</li>--%>
<%--                        <li class="w-percentage-25">票面价：<span class="rmb">￥2980</span></li>--%>
<%--                        <li class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥2560</strong></li>--%>
<%--                        <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='在线预订/政策选择.html';">订票</button></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- 表BODY 结束 -->--%>
<%--        </div>--%>
    </div>

    <!-- 分页 -->
    <nav class=" pull-right ">
        <ul class="pagination">
            <li>
                <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li>
                <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>

        </ul>
    </nav>
    <!-- 分页结束 -->
    <div class="clearfix"></div>




</div>
<!-- 列表结束 -->

<!-- 在线客服 -->
<div class="suspend">
    <dl>
        <dt class="IE6PNG"></dt>
        <dd class="suspendQQ"> <a href="javascript:void(0);" onclick="chat()"></a></dd>
        <dd class="suspendTel"><a href="javascript:void(0);"></a></dd>
    </dl>
</div>
<script type="text/javascript">
    $(document).ready(function() {

        $(".suspend").mouseover(function() {
            $(this).stop();
            $(this).animate({
                width: 160
            }, 400);
        })

        $(".suspend").mouseout(function() {
            $(this).stop();
            $(this).animate({
                width: 40
            }, 400);
        });

    });

    function chat() {
        layer.open({
            type: 2,
            title: '',
            area: ['83%', '94%'],
            fix: true, //不固定
            maxmin: false,
            content: 'chat/index.html',
        });
    }
</script>

<script type="text/javascript">
    function dateFormat(fmt, dateString) {
        var date = new Date(dateString);
        let ret;
        const opt = {
            "Y+": date.getFullYear().toString(), // 年
            "m+": (date.getMonth() + 1).toString(), // 月
            "d+": date.getDate().toString(), // 日
            "H+": date.getHours().toString(), // 时
            "M+": date.getMinutes().toString(), // 分
            "S+": date.getSeconds().toString() // 秒
            // 有其他格式化字符需求可以继续添加，必须转化成字符串
        };
        for (let k in opt) {
            ret = new RegExp("(" + k + ")").exec(fmt);
            if (ret) {
                fmt = fmt.replace(ret[1], (ret[1].length == 1) ? (opt[k]) : (opt[k].padStart(ret[1].length, "0")))
            };
        };
        return fmt;
    }


    $(document).ready(function() {

        $(".flip").click(function() {
            $(".panel").slideToggle("");
        });

    });

    function weekLeft() {
        var obj = $("#week .active").prev();
        var name = obj.find("a").attr("name");
        obj.siblings().removeClass("active");
        obj.addClass('active');
        if (name == undefined) {
            name = $("#week li:first-child a").attr("name") + 'left';
        }
        //var name = $("#week li:first-child a").attr("name");
        var departure = $(".form-group input[name='departure']").val();
        var destination = $(".form-group input[name='destination']").val();
        $.ajax({
            url: "../api/weekMove.action/" + name + "/" + departure + "/" + destination,
            type: "get",
            dataType: "json",
            data: {},
            success: function(data) {
                $("#week").html("");
                for (var i = 0; i < data.weeks.length; i++) {
                    $("#week").append('<li role="presentation" class=""><a href="javascript:;"name="' + data.dateWeek[i] + '">' +
                        data.dateWeek[i] + '<br>' + data.weeks[i] + '</a></li>');
                }
                $("#week li:first-child").addClass("active");

                $(".hangbanlist").html("");
                $.each(data.flightData, function(i, e) {
                    $(".hangbanlist").append(
                        '<div><ul class="list-inline bor-bottom-solid-1  "><li class="w-percentage-25"><img src="img/air/3U.png"' +
                        'width="24" height="24"> <strong>' + e.flightInfo.airline + '</strong>' + e.flightInfo.flightNumber +
                        '<span class="gray-999 font12 mar-left-10">机型：' + e.flightInfo.modelType + '</span></li>' +
                        '<li class="text-right w200"><strong class="time "> ' + dateFormat("HH:MM", e.startTime) +
                        ' </strong></li><li class="">——</li><li class="w80"><strong class="time ">' + dateFormat("HH:MM", e.endTime) +
                        '</strong></li><li class="w200 text-right departure" style="font-size: 20px;">' + e.departure + '</li>' +
                        '<li class="">——</li><li class="w110 destination" style="font-size: 20px;">' + e.destination +
                        '</li></ul>');

                    $.each(e.flightInfo.cabins, function(j, f) {
                        $(".hangbanlist").append('<div class="collapse" id="collapseExample" style="display: block;">' +
                            '<div class="hangbanlist-body " style="background-color: #FEFCFC;">' +
                            '<ul class="list-inline"><li class="w-percentage-20">' +
                            '<strong class="shippingSpace">' + f.shippingSpace + '</strong>' +
                            '<li class="w-percentage-25">座位数：' + f.seatNumber + '</li>' +
                            '<li class="w-percentage-25">票面价：<span class="rmb">' + f.adultPrice + '</span></li>' +
                            '<li class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥' + f.adultPrice +
                            '</strong>' +
                            ' <span class="gray font12">1.9折</span></li><li class="pull-right "><button type="button"' +
                            'class="btn btn-danger btn-sm" onclick="subscribe(' + f.seatNumber + ',\'' + e.id + '\',\'' + f.id +
                            '\')">订票</button></li></ul>');
                    });
                });
                $(".shippingSpace").each(function(i, e) {
                    var object = $(e);
                    if (object.text() == '经济舱') {
                        object.addClass("blue-0093dd");
                    } else {
                        object.addClass("red");
                    }
                });
            }
        });

    }

    function weekRight() {
        var obj = $("#week .active").next();
        var name = obj.find("a").attr("name");
        obj.siblings().removeClass("active");
        obj.addClass('active');
        if (name == undefined) {
            name = $("#week li:last-child a").attr("name") + 'right';
        }
        //var name = $("#week li:last-child a").attr("name");
        var departure = $(".form-group input[name='departure']").val();
        var destination = $(".form-group input[name='destination']").val();

        $.ajax({
            url: "../api/weekMove.action/" + name + "/" + departure + "/" + destination,
            type: "get",
            dataType: "json",
            data: {},
            success: function(data) {
                $("#week").html("");
                for (var i = 0; i < data.weeks.length; i++) {
                    $("#week").append('<li role="presentation" class=""><a href="javascript:;"name="' + data.dateWeek[i] + '">' +
                        data.dateWeek[i] + '<br>' + data.weeks[i] + '</a></li>');
                }
                $("#week li:first-child").addClass("active");

                $(".hangbanlist").html("");
                $.each(data.flightData, function(i, e) {
                    $(".hangbanlist").append(
                        '<div><ul class="list-inline bor-bottom-solid-1  "><li class="w-percentage-25"><img src="img/air/3U.png"' +
                        'width="24" height="24"> <strong>' + e.flightInfo.airline + '</strong>' + e.flightInfo.flightNumber +
                        '<span class="gray-999 font12 mar-left-10">机型：' + e.flightInfo.modelType + '</span></li>' +
                        '<li class="text-right w200"><strong class="time "> ' + dateFormat("HH:MM", e.startTime) +
                        ' </strong></li><li class="">——</li><li class="w80"><strong class="time ">' + dateFormat("HH:MM", e.endTime) +
                        '</strong></li><li class="w200 text-right departure" style="font-size: 20px;">' + e.departure + '</li>' +
                        '<li class="">——</li><li class="w110 destination" style="font-size: 20px;">' + e.destination +
                        '</li></ul>');
                    $.each(e.flightInfo.cabins, function(j, f) {
                        $(".hangbanlist").append('<div class="collapse" id="collapseExample" style="display: block;">' +
                            '<div class="hangbanlist-body " style="background-color: #FEFCFC;">' +
                            '<ul class="list-inline"><li class="w-percentage-20">' +
                            '<strong class="shippingSpace">' + f.shippingSpace + '</strong>' +
                            '<li class="w-percentage-25">座位数：' + f.seatNumber + '</li>' +
                            '<li class="w-percentage-25">票面价：<span class="rmb">' + f.adultPrice + '</span></li>' +
                            '<li class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥' + f.adultPrice +
                            '</strong>' +
                            ' <span class="gray font12">1.9折</span></li><li class="pull-right "><button type="button"' +
                            'class="btn btn-danger btn-sm" onclick="subscribe(' + f.seatNumber + ',\'' + e.id + '\',\'' + f.id +
                            '\')">订票</button></li></ul>');
                    });
                });
                $(".shippingSpace").each(function(i, e) {
                    var object = $(e);
                    if (object.text() == '经济舱') {
                        object.addClass("blue-0093dd");
                    } else {
                        object.addClass("red");
                    }
                });
            }
        });
    }

    function getCookie() {
        var strcookie = document.cookie; //获取cookie字符串
        var arrcookie = strcookie.split("; "); //分割
        // 遍历匹配
        for (var i = 0; i < arrcookie.length; i++) {
            var arr = arrcookie[i].split("=");
            if (arr[0] == "user") {
                return arr[1];
            }
        }
        return "";
    }

    function subscribe(number, flightId, cabinId) {
        $.ajax({
            url: "../api/subscribe.action/"+flightId+"/"+cabinId,
            type: "get",
            success: function(data) {
                if (data == "success") {
                    window.location.href = 'subscribe/subscribe.html?flightId=' + flightId + '&cabinId=' + cabinId;
                } else {
                    layer.msg(data);
                }
            },
            error: function(error) {
                console.log(error);
                if(error.status==403){
                    window.location.href="user/login.html";
                }
            }
        });
    }
</script>

<script>
    /* 用户退出 */
    function logout() {
        $.ajax({
            url: "../api/logout.action",
            type: "get",
            data: {},
            success: function(data) {
                window.location.href = "../flight/index.html";
            }
        });
    }
    $(function() {
        /* 获取用户名*/
        $.ajax({
            url: "../api/getUserName.action",
            type: "get",
            success: function(data) {
                $(".userinfo").html("");
                $(".userinfo").append(
                    '<li class="dropdown"><a href="javascript:;" class="dropdown-toggle"' +
                    'data-toggle="dropdown" role="button" aria-haspopup="true" ' +
                    'aria-expanded="false">您好，' + data + '<span class="caret"></span></a>' +
                    '<ul class="dropdown-menu">' +
                    '<li><a href="系统管理/修改密码.html">修改密码</a></li>\n' +
                    '<li><a href="javascript:;" onclick="logout()">退出</a></li>' +
                    '</ul></li>');
            }
        });
        /* if (getCookie() != "") {
            $(".userinfo").html("");
            $(".userinfo").append(
                '<li class="dropdown"><a href="javascript:;" class="dropdown-toggle"' +
                'data-toggle="dropdown" role="button" aria-haspopup="true" ' +
                'aria-expanded="false">您好，' + getCookie() + '<span class="caret"></span></a>' +
                '<ul class="dropdown-menu">' +
                '<li><a href="系统管理/修改密码.html">修改密码</a></li>\n' +
                '<li><a href="javascript:;" onclick="logout()">退出</a></li>' +
                '</ul></li>');
        } */

        /*获取当天票*/
        $.ajax({
            url: "../api/getFlightInfo.action",
            type: "post",
            dataType: "json",
            data: {},
            success: function(data) {
                $(".hangbanlist").html("");
                $.each(data, function(i, e) {
                    $(".hangbanlist").append(
                        '<div><ul class="list-inline bor-bottom-solid-1  "><li class="w-percentage-25"><img src="img/air/3U.png"' +
                        'width="24" height="24"> <strong>' + e.flightInfo.airline + '</strong>' + e.flightInfo.flightNumber +
                        '<span class="gray-999 font12 mar-left-10">机型：' + e.flightInfo.modelType + '</span></li>' +
                        '<li class="text-right w200"><strong class="time "> ' + dateFormat("HH:MM", e.startTime) +
                        ' </strong></li><li class="">——</li><li class="w80"><strong class="time ">' + dateFormat("HH:MM", e.endTime) +
                        '</strong></li><li class="w200 text-right departure" style="font-size: 20px;">' + e.departure + '</li>' +
                        '<li class="">——</li><li class="w110 destination" style="font-size: 20px;">' + e.destination +
                        '</li></ul>');

                    $.each(e.flightInfo.cabins, function(j, f) {
                        $(".hangbanlist").append('<div class="collapse" id="collapseExample" style="display: block;">' +
                            '<div class="hangbanlist-body " style="background-color: #FEFCFC;">' +
                            '<ul class="list-inline"><li class="w-percentage-20">' +
                            '<strong class="shippingSpace">' + f.shippingSpace + '</strong>' +
                            '<li class="w-percentage-25">座位数：' + f.seatNumber + '</li>' +
                            '<li class="w-percentage-25">票面价：<span class="rmb">' + f.adultPrice + '</span></li>' +
                            '<li class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥' + f.adultPrice +
                            '</strong>' +
                            ' <span class="gray font12">1.9折</span></li><li class="pull-right "><button type="button"' +
                            'class="btn btn-danger btn-sm" onclick="subscribe(' + f.seatNumber + ',\'' + e.id + '\',\'' + f.id +
                            '\')">订票</button></li></ul>');
                    });
                });
                $(".shippingSpace").each(function(i, e) {
                    var object = $(e);
                    if (object.text() == '经济舱') {
                        object.addClass("blue-0093dd");
                    } else {
                        object.addClass("red");
                    }
                });
            },
            error: function(error) {
                console.log(error);
            }

        });



        /*获取日期天数*/

        $.ajax({
            url: "../api/getDateWeek.action",
            type: "post",
            dataType: "json",
            data: {},
            success: function(data) {
                $("#week").html("");
                for (var i = 0; i < data.weeks.length; i++) {
                    $("#week").append('<li role="presentation" class=""><a href="javascript:;"name="' + data.dateWeek[i] + '">' +
                        data.dateWeek[i] + '<br>' + data.weeks[i] + '</a></li>');
                }
                $("#week li:first-child").addClass("active");

            },
            error: function(error) {
                console.log(error);
            }

        });

    });

    //订票
    /* 	$(".hangbanlist").on("click", ".collapse li:last-child button", function() {
            alert(1);
        }); */

    $("#week").on("click", "li", function() {
        $("#week li").each(function(i, e) {
            $(e).attr("class", "");
        });
        $(this).attr("class", "active");
    });

    $("#week").on("click", "a", function() {
        var name = $(this).attr("name");
        $.ajax({
            url: "../api/searchByWeek.action/" + name,
            type: "get",
            dataType: "json",
            data: {},
            success: function(data) {

                $(".hangbanlist").html("");
                $.each(data.flightData, function(i, e) {
                    $(".hangbanlist").append(
                        '<div><ul class="list-inline bor-bottom-solid-1  "><li class="w-percentage-25"><img src="img/air/3U.png"' +
                        'width="24" height="24"> <strong>' + e.flightInfo.airline + '</strong>' + e.flightInfo.flightNumber +
                        '<span class="gray-999 font12 mar-left-10">机型：' + e.flightInfo.modelType + '</span></li>' +
                        '<li class="text-right w200"><strong class="time "> ' + dateFormat("HH:MM", e.startTime) +
                        ' </strong></li><li class="">——</li><li class="w80"><strong class="time ">' + dateFormat("HH:MM", e.endTime) +
                        '</strong></li><li class="w200 text-right" style="font-size: 20px;">' + e.departure + '</li>' +
                        '<li class="">——</li><li class="w110" style="font-size: 20px;">' + e.destination + '</li></ul>');

                    $.each(e.flightInfo.cabins, function(j, f) {
                        $(".hangbanlist").append('<div class="collapse" id="collapseExample" style="display: block;">' +
                            '<div class="hangbanlist-body " style="background-color: #FEFCFC;">' +
                            '<ul class="list-inline"><li class="w-percentage-20">' +
                            '<strong class="shippingSpace">' + f.shippingSpace + '</strong>' +
                            '<li class="w-percentage-25">座位数：' + f.seatNumber + '</li>' +
                            '<li class="w-percentage-25">票面价：<span class="rmb">' + f.adultPrice + '</span></li>' +
                            '<li class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥' + f.adultPrice +
                            '</strong>' +
                            ' <span class="gray font12">1.9折</span></li><li class="pull-right "><button type="button"' +
                            'class="btn btn-danger btn-sm" onclick="subscribe(' + f.seatNumber + ',\'' + e.id + '\',\'' + f.id +
                            '\')">订票</button></li></ul>');
                    });
                });

                $(".shippingSpace").each(function(i, e) {
                    var object = $(e);
                    if (object.text() == '经济舱') {
                        object.addClass("blue-0093dd");
                    } else {
                        object.addClass("red");
                    }
                });

            },
            error: function(error) {
                console.log(error);
            }

        });
    });

    function searchLine() {

        $.ajax({
            url: "../api/searchList.action",
            type: "get",
            dataType: "json",
            data: $("#serachForm").serialize(),
            success: function(data) {

                $("#week").html("");
                for (var i = 0; i < data.weeks.length; i++) {
                    $("#week").append('<li role="presentation" class=""><a href="javascript:;"name="' + data.dateWeek[i] + '">' +
                        data.dateWeek[i] + '<br>' + data.weeks[i] + '</a></li>');
                }
                $("#week li:first-child").addClass("active");

                $(".hangbanlist").html("");
                $.each(data.flightData, function(i, e) {
                    $(".hangbanlist").append(
                        '<div><ul class="list-inline bor-bottom-solid-1  "><li class="w-percentage-25"><img src="img/air/3U.png"' +
                        'width="24" height="24"> <strong>' + e.flightInfo.airline + '</strong>' + e.flightInfo.flightNumber +
                        '<span class="gray-999 font12 mar-left-10">机型：' + e.flightInfo.modelType + '</span></li>' +
                        '<li class="text-right w200"><strong class="time "> ' + dateFormat("HH:MM", e.startTime) +
                        ' </strong></li><li class="">——</li><li class="w80"><strong class="time ">' + dateFormat("HH:MM", e.endTime) +
                        '</strong></li><li class="w200 text-right" style="font-size: 20px;">' + e.departure + '</li>' +
                        '<li class="">——</li><li class="w110" style="font-size: 20px;">' + e.destination + '</li></ul>');

                    $.each(e.flightInfo.cabins, function(j, f) {
                        $(".hangbanlist").append('<div class="collapse" id="collapseExample" style="display: block;">' +
                            '<div class="hangbanlist-body " style="background-color: #FEFCFC;">' +
                            '<ul class="list-inline"><li class="w-percentage-20">' +
                            '<strong class="shippingSpace">' + f.shippingSpace + '</strong>' +
                            '<li class="w-percentage-25">座位数：' + f.seatNumber + '</li>' +
                            '<li class="w-percentage-25">票面价：<span class="rmb">' + f.adultPrice + '</span></li>' +
                            '<li class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥' + f.adultPrice +
                            '</strong>' +
                            ' <span class="gray font12">1.9折</span></li><li class="pull-right "><button type="button"' +
                            'class="btn btn-danger btn-sm" onclick="subscribe(' + f.seatNumber + ',\'' + e.id + '\',\'' + f.id +
                            '\')">订票</button></li></ul>');
                    });
                });

                $(".shippingSpace").each(function(i, e) {
                    var object = $(e);
                    if (object.text() == '经济舱') {
                        object.addClass("blue-0093dd");
                    } else {
                        object.addClass("red");
                    }
                });

            },
            error: function(error) {
                console.log(error);
            }

        });
    }
</script>
</body>
</html>


