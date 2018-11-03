<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>日常项目-2016年道路大中修工程</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" href="favicon.ico">
   <link href="activity/vendor/bootstrap.min.css" rel="stylesheet">
<#-- <link href="css/Daily_items/daily_data.css" rel="stylesheet">
<link href="css/Daily_items/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="css/Daily_items/plugins/iCheck/custom.css" rel="stylesheet">
<link href="css/Daily_items/animate.css" rel="stylesheet">
<link href="css/Daily_items/style.css?v=4.1.0" rel="stylesheet">
<link type="text/css " rel="stylesheet" href="css/Daily_items/ding.css">-->

</head>

<style>
    .white-bg{
        background: #eff3f6;
    }
    .my_right_body {
        /*border: 1px solid red;*/
        width: 100%;
        /*height: 500px;*/
    }

    .bg-danger {
        background: #e36159;
    }

    @media (min-width: 700px) {
        .content_all {
            width: 100%;
            display: inline-block;
        }
        .my_right_content {
            width: 20%;
            float: left;
            display: inline-block;
            min-height: 1px;
            padding-right: 15px;
            padding-left: 15px;
            color: #fff;
            margin-bottom: 15px;
            /*border: 1px solid black;*/
        }
        .statistic-box {
            padding: 20px;
            text-align: center;
            overflow: hidden;
            border-radius: 6px;
            color: #fff;
        }
    }

    .bg-info {
        background: #23b7e5;
    }

    .bg-purple {
        background: #7266ba;
    }

    .bg-success {
        background: #2baab1;
    }

    .bg-end {
        background: #37bc8c;
    }

    .statistic-title {
        text-transform: uppercase;
        font-size: 16px;
    }

    .statistic-box .statistic-value {
        font-size: 36px;
        font-weight: 600;
    }

    .m-top-md {
        margin-top: 20px;
    }

    .right_body_top {
        width: 100%;
        /*height: 300px;*/
        /*border: 1px solid red;*/
        margin-top: 10px;
        margin-bottom: 15px;
        display: inline-block;
    }

    @media (min-width: 1024px) {
        .right_body_top_left {
            width: 56%;
            height: 250px;
            float: left;

        }
        .right_body_top_right {
            width: 40%;
            height: 100%;
            display: inline-block;

        }
    }



    .right_one {
        width: 50%;
        height: 215px;
        float: left;
        margin-top: 35px;
        display: inline-block;
        background: #fff;
    }

    .one_left {
        width: 40%;
        height: 100%;
        float: left;
    }

    .one_right {
        width: 60%;
        height: 100%;
        float: left;
    }

    .bottom_body {
        width: 100%;
        height: 450px;
        /*border: 1px solid yellow;*/
        display: block;
        margin-bottom: 100px;
    }
    @media (min-width: 1024px){
        .bottom_left {
            width: 56%;
            height: 104%;
            float: left;
            /*min-width: 500px;*/
        }
        .bottom_right {
            width: 39%;
            height: 104%;
            display: inline-block;
        }

    }



    .bottom_left_tab_title {
        width: 98%;
        height: 10%;
        margin: 0 auto;
        margin-bottom: 10px;
    }
    .bottom_right_title{
        width: 98%;
        height: 10%;
        margin: 0 auto;
        margin-bottom: 10px;
    }
    .bottom_right_title span{
        font-size: 16px;
        line-height: 42px;
    }
    .bottom_left_tab_title span {
        font-size: 16px;
        line-height: 42px;
    }

    .bottom_left_tab {
        width: 98%;
        height: 80%;
        margin: 0 auto;
    }

    .bottom_left_tab table {
        width: 100%;
        border-collapse: collapse;
        border-spacing: 2px;
        table-layout: fixed;
    }

    .bottom_left_tab table th {
        vertical-align: bottom;
        border-bottom: 2px solid #dee2e6;
        padding: .75rem;
        font-weight: 500;
        text-align: center;
        font-family: "Rubik", sans-serif;
        font-size: 15px;
    }

    .bottom_left_tab table td {
        vertical-align: middle;
        border-bottom: 1px solid #dee2e6;
        font-weight: 500;
        font-family: "Rubik", sans-serif;
        font-size: 15px;
        height: 60px;
        text-align: center;
    }

    .rounded-circle {
        margin-left: 10px;
        width: 50px;
        height: 50px;
        border-radius: 50%;
    }

    .commodity_img {
        width: 11%;
    }

    .commodity_name {
        width: 41%;
    }

    .commodity_type {
        width: 20%;
    }

    .commodity_num {
        width: 14%;
    }

    .commodity_price {
        width: 14%;
    }

    td {
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    .bottom_right_list_left{
        width:60%;
        height:90px ;
        float: left;
    }
    .bottom_right_list_right{
        width:40%;
        height:90px ;
        display:table-cell;
        vertical-align:middle;
        text-align:center;
    }
    .left_one{
        width: 60px;
        height: 60px
        display: inline-block;
        margin-top: 15px;
        float: left;
        margin-left: 15px;
    }
    .left_two{
        width: 100px;
        height: 60px;
        display: inline-block;
        margin-top: 15px;
    }
    .vip_img{
        width: 100%;
        height: 100%;
    }
    .left_two_top{
        width: 100%;
        height: 30px;
        line-height: 30px;
        /*border: 1px solid red;*/
    }
    .sales_tab{
        margin-left: 18px;
        margin-right: 20px;
        border: none;
        box-shadow: 1px 0px 20px rgba(0, 0, 0, 0.05);
        border-radius: .25rem;
        background: #fff;
        margin-bottom: 10px;
    }
    .vip_tab{
        border: none;
        box-shadow: 1px 0px 20px rgba(0, 0, 0, 0.05);
        border-radius: .25rem;
        background: #fff;
    }
    .chart{
        margin-left: 18px;
        margin-right: 20px;
        border: none;
        box-shadow: 1px 0px 20px rgba(0, 0, 0, 0.05);
        border-radius: .25rem;
        background: #fff;
    }
    .day_chart{
        border: none;
        box-shadow: 1px 0px 20px rgba(0, 0, 0, 0.05);
        border-radius: .25rem;
        background:#fff;
    }
</style>


<body class="white-bg">
<div class="my_right_body">
    <div class="right_body_top">
        <div class="right_body_top_left chart" style="">
            <div id='main' style='width:100%;height:251px;display: inline-block;float: left;background-color: white'></div>
        </div>
        <div class="right_body_top_right day_chart" style="">
            <div class="right_one">
                <div class="one_left" style="margin-top: 30px;"><img src="images/persons.png" style="display: inline-block;float: left;margin-left: 10px;"/></div>
                <div class="one_right" style="margin-top: 30px;"><div style="display: inline-block;float: left;" >
                    <div style="font-size: 30px;margin-left: 25px;" >${user_num!'0'}</div>
                    <div style="font-size: 20px;margin-left: 25px;">用户数量</div>
                </div></div>

            </div>
            <div class="clear:both;"></div>
            <div class="right_one">
                <div class="one_left" style="margin-top: 30px;"><img src="images/person_b.png" style="display: inline-block;float: left;margin-left: 10px;"/></div>
                <div class="one_right" style="margin-top: 30px;"><div style="display: inline-block;float: left;">
                    <div style="font-size: 30px;margin-left: 25px;" >${today_order!'0'}</div>
                    <div style="font-size: 20px;margin-left: 25px;">今日订单数</div>
                </div></div>
            </div>
            <div class="clear:both;"></div>
        </div>
    </div>
    <div class="clear:both;"></div>
    <!--五种状态部分开始-->
    <div class="content_all">
        <div class="my_right_content ">
            <div class="statistic-box bg-danger">
                <div class="statistic-title" >
                    <font style="vertical-align: inherit;" >电商订单</font>
                </div>
                <div class="statistic-value" onclick="getOrderList(3)" style="cursor: pointer">
                    <font style="vertical-align: inherit;" id="shop_order">0</font>
                </div>
                <div class="m-top-md">
                    退款中： <font style="vertical-align: inherit;" id="shop_tk">0</font>
                </div>
            </div>
        </div>
        <div class="my_right_content">
            <div class="statistic-box bg-info">
                <div class="statistic-title">
                    <font style="vertical-align: inherit;">外卖订单</font>
                </div>
                <div class="statistic-value" onclick="getOrderList(0)" style="cursor: pointer">
                    <font style="vertical-align: inherit;" id="wm_order">0</font>
                </div>
                <div class="m-top-md">
                    待发货：<font style="vertical-align: inherit;" id="wm_dfh">0</font>
                </div>
            </div>
        </div>
        <div class="my_right_content">
            <div class="statistic-box bg-purple">
                <div class="statistic-title">
                    <font style="vertical-align: inherit;" >到店自取</font>
                </div>
                <div class="statistic-value" onclick="getOrderList(1)" style="cursor: pointer">
                    <font style="vertical-align: inherit;" id="ddzq_order">0</font>
                </div>
                <div class="m-top-md">
                    待发货：<font style="vertical-align: inherit;" id="ddzq_dfh">0</font>
                </div>
            </div>
        </div>
        <div class="my_right_content">
            <div class="statistic-box bg-success">
                <div class="statistic-title">
                    <font style="vertical-align: inherit;">店内点餐</font>
                </div>
                <div class="statistic-value" onclick="getOrderList(2)" style="cursor: pointer">
                    <font style="vertical-align: inherit;" id="dndc_order">0</font>
                </div>
                <div class="m-top-md">
                    待发货：<font style="vertical-align: inherit;" id="dndc_dfh">0</font>
                </div>
            </div>
        </div>
        <div class="my_right_content">
            <div class="statistic-box bg-end">
                <div class="statistic-title">
                    <font style="vertical-align: inherit;">预约订单</font>
                </div>
                <div class="statistic-value" onclick="getOrderList(4)" style="cursor: pointer">
                    <font style="vertical-align: inherit;" id="yy_order">0</font>
                </div>
                <div class="m-top-md">
                    待处理：<font style="vertical-align: inherit;" id="yy_dcl">0</font>
                </div>
            </div>
        </div>

    </div>
    <!--五种状态结束-->
    <!--商品销量-->
    <div class="bottom_body">
        <div class="bottom_left sales_tab">
            <div class="bottom_left_tab_title">
                <span style="margin-left: 10px;">销量排行</span>
            </div>
            <div class="bottom_left_tab">
                <table class="bottom_table">
                    <tr>
                        <th class="commodity_img">
                            <font style="margin-left: 10px;">商品</font>
                        </th>
                        <th class="commodity_name">名称</th>
                        <th class="commodity_type">商品类型</th>
                        <th class="commodity_num">销量</th>
                        <th class="commodity_price">价格</th>
                    </tr>

                   <#-- <#if commodityList??>-->
                    <#list commodityList as commodity>
                        <tr>
                            <td><img class="rounded-circle" src="${commodity.img_src!''}" /></td>
                            <td>${commodity.commodity_name!''}</td>
                            <td>${commodity.t_commodity_type.type_name!''}</td>
                            <td>${commodity.reserved1}</td>
                            <td>${commodity.price!''}</td>
                        </tr>

                    </#list>
                   <#-- </#if>-->

                </table>

            </div>

        </div>
        <div class="bottom_right vip_tab" >
            <div class="bottom_right_title">
                <span>会员资料</span>
            </div>

             <div class="bottom_right_list">
            <#list vipList as vip>
                 <div class="bottom_right_list_left">
                     <div class="left_one">
                         <#if vip.c_user_info.avatar??>
                             <img class="vip_img" src="${vip.c_user_info.avatar!''}" />
                         <#else >
                                <img class="vip_img" src="images/person.png" />
                         </#if>


                     </div>
                     <div class="left_two" style="margin-left:11px;">
                         <div class="left_two_top">${vip.name!''}</div>
                         <div class="left_two_top">
                             <#if vip.c_user_info.sex??>
                                <#if vip.c_user_info.sex=='F'>
                                    男
                                    <#elseif vip.c_user_info.sex=='M'>
                                    女
                                <#else >
                                    保密
                                </#if>
                                 <#else >
                                 保密
                             </#if>

                         </div>
                     </div>
                 </div>
                 <div class="bottom_right_list_right">
                     <span style="display: inline-block;text-align: center;">余额：${vip.balance}元</span>
                 </div>

            </#list>
             </div>


           <#-- <div class="bottom_right_list_left">
                <div class="left_one">
                    <img class="vip_img" src="image/shop3.png" />

                </div>
                <div class="left_two">
                    <div class="left_two_top">小猪佩奇</div>
                    <div class="left_two_top">女</div>
                </div>
            </div>
            <div class="bottom_right_list_right">
                <span style="display: inline-block;text-align: center;">余额：100元</span>
            </div>
        </div>-->

        </div>

    </div>


</div>
<script src="activity/vendor/jquery-1.10.2.min.js"></script>
<script src="js/echarts.min.js"></script>
<script>

    var dom = document.getElementById("main");
    var myChart = echarts.init(dom);
    var app = {};
    option = null;
    var posList = [
        'left', 'right', 'top', 'bottom',
        'inside',
        'insideTop', 'insideLeft', 'insideRight', 'insideBottom',
        'insideTopLeft', 'insideTopRight', 'insideBottomLeft', 'insideBottomRight'
    ];

    app.configParameters = {
        rotate: {
            min: -90,
            max: 90
        },
        align: {
            options: {
                left: 'left',
                center: 'center',
                right: 'right'
            }
        },
        verticalAlign: {
            options: {
                top: 'top',
                middle: 'middle',
                bottom: 'bottom'
            }
        },
        position: {
            options: echarts.util.reduce(posList, function (map, pos) {
                map[pos] = pos;
                return map;
            }, {})
        },
        distance: {
            min: 0,
            max: 100
        }
    };

    app.config = {
        rotate: 0,
        align: 'left',
        verticalAlign: 'middle',
        position: 'top',
        distance: 15,
        onChange: function () {
            var labelOption = {
                normal: {
                    rotate: app.config.rotate,
                    align: app.config.align,
                    verticalAlign: app.config.verticalAlign,
                    position: app.config.position,
                    distance: app.config.distance
                }
            };
            myChart.setOption({
                series: [{
                    label: labelOption
                }, {
                    label: labelOption
                }, {
                    label: labelOption
                }, {
                    label: labelOption
                }]
            });
        }
    };


    var labelOption = {
        normal: {
            show: true,
            position: app.config.position,
            distance: app.config.distance,
            align: app.config.align,
            verticalAlign: app.config.verticalAlign,
            rotate: app.config.rotate,
            formatter: '{c}  {name|{a}}',
            fontSize: 16,
            rich: {
                name: {
                    textBorderColor: '#fff'
                }
            }
        }
    };





    $.ajax({
        url: "getInfo",
        type: "post",
        data: {},
        dataType: "json",
        success: function (data) {
            var weekList=data.weekList;
            var orderNumList=data.orderNumList;
            var priceList=data.priceList
            option = {
                color: [ '#ff3300', '#4cabce'],
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'shadow'
                    }
                },
                legend: {
                    data: [ '成交金额']
                },
                toolbox: {
                    show: true,
                    orient: 'vertical',
                    left: 'right',
                    top: 'center',
                    feature: {
                        mark: {show: true},
                        dataView: {show: true, readOnly: false},
                        magicType: {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                        restore: {show: true},
                        saveAsImage: {show: true}
                    }
                },
                calculable: true,
                xAxis: [
                    {
                        type: 'category',
                        axisTick: {show: false},
                        data: weekList
                    }
                ],
                yAxis: [
                    {
                        type: 'value'
                    }
                ],
                series: [
                    /*{
                        name: '成交单数',
                        type: 'bar',
                        barGap: 0,
                        barWidth:30,
                        label: labelOption,
                        data: orderNumList
                    },*/
                    {
                        name: '成交金额',
                        type: 'bar',
                        barWidth:30,
                        label: labelOption,
                        data: priceList
                    }/*,
                    {
                        name: '访问量',
                        type: 'bar',
                        label: labelOption,
                        data: [150, 232, 201, 154, 190,40,50]
                    }*/

                ]
            };
            if (option && typeof option === "object") {
                myChart.setOption(option, true);
            }
        }
    });
    loadOrderTypeNum();


    function loadOrderTypeNum(){
        $.ajax({
            url: "loadOrderTypeNum",
            type: "post",
            data: {},
            dataType: "json",
            success: function (data) {
                var numList=data.numList;
                var otherOrderNum=data.otherOrderNum;
                $("#wm_order").text(numList[0]);
                $("#ddzq_order").text(numList[1]);
                $("#dndc_order").text(numList[2]);
                $("#shop_order").text(numList[3]);
                $("#yy_order").text(numList[4]);
                $("#shop_tk").text(otherOrderNum[3]);
                $("#wm_dfh").text(otherOrderNum[0]);
                $("#ddzq_dfh").text(otherOrderNum[1]);
                $("#dndc_dfh").text(otherOrderNum[2]);
                $("#yy_dcl").text(otherOrderNum[4]);
            }
        });
    }

    
    function getOrderList(type) {
        if(type==4){
            window.location.href="reserve/main";
        }else {
            window.location.href="order/main?type="+type;
        }

    }

    window.setInterval(loadOrderTypeNum, 60000);
</script>
</body>

</html>