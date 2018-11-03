<html >
<head >
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/x-icon" href="../activity/img/log.png">
    <title>后台管理系统</title>
    <link rel="stylesheet" href="../activity/vendor/font-awesome.min.css">
    <link rel="stylesheet" href="../activity/vendor/AdminLTE.min.css">
    <link rel="stylesheet" href="../activity/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="../activity/vendor/ui.jqgrid.css">
    <link rel="stylesheet" href="../activity/vendor/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="../activity/style/main.css">
    <link rel="stylesheet" href="../activity/style/addActivity.css">
    <link rel="stylesheet" href="../activity/style/addLottery.css">

    <link href="../activity/vendor/bootstrap-fileinput/css/fileinput.min.css" rel="stylesheet">
    <link href="../activity/vendor/bootstrap-fileinput/css/fileinput-rtl.min.css" rel="stylesheet">
    <script src="../activity/vendor/jquery-1.10.2.min.js"></script>
    <script src="../activity/vendor/bootstrap.min.js"></script>
    <script src="../activity/vendor/moment.min.js"></script>
    <script src="../activity/vendor/moment-with-locales.min.js"></script>
    <script src="../activity/vendor/bootstrap-datetimepicker.min.js"></script>
    <script src="../activity/vendor/grid.locale-cn.js"></script>
    <script src="../activity/vendor/layer/layer.min.js"></script>
    <script src="../activity/vendor/layer/laydate/laydate.js"></script>
    <script src="../activity/js/main.js"></script>
    <script src="../activity/js/activityList.js"></script>
    <script src="../activity/vendor/jquery.jqGrid.min.js"></script>
    <script src="../activity/js/addActivity.js"></script>
    <script src="../activity/js/addLottery.js"></script>

    <script src="../activity/vendor/bootstrap-fileinput/js/fileinput.min.js"></script>
    <script src="../activity/vendor/bootstrap-fileinput/js/locales/zh.js"></script>
</head>
<section class="content" height="100%" >
    <div class="row">
        <div class="col-xs-12">

            <div class="box-body">
                <form id="myform">
                    <input type="hidden" id="order_id" name="order_id" value="${t_order.order_id}">
                    <input type="hidden" name="id" value="${t_order.t_refund_apply.id}">
                    <#--<div class="box-line">
                        <span class="title mid-inline-block">订单号：</span>
                        ${t_order.order_id!''}
                        <span style="position: fixed;left:272px;">
                        <span style="margin-left: 50px;" class="title mid-inline-block">下单时间：</span>
                    ${t_order.order_time?string('yyyy-MM-dd HH:mm:ss')}
                            </span>
                    </div>
                    <div class="box-line">
                        <span class="title mid-inline-block">订单状态：</span>
                    ${t_order.status_name}
                        <span style="position: fixed;left:272px;">
                        <span style="margin-left: 50;" class="title mid-inline-block">订单金额：</span>
                    <em style="color: red">￥${t_order.real_price}</em>
                        </span>
                    </div>
                    <div class="box-line">
                        <span class="title mid-inline-block">备注：</span>
                    ${t_order.remarks!''}

                    </div>-->

                    <div class="box-line">
                        -------------------------商品信息--------------------------
                    </div>
                   <div class="box-line">
                        <span class="title mid-inline-block">商品列表：</span>
                        <table style="width: 90%;">
                            <tr  class="box-line-tr">
                                <th>商品信息</th>
                                <th>数量</th>
                                <th>单价</th>
                                <th>总额</th>
                            </tr>
                            <#list t_order.commodity_infoList as commodity_info>
                                <tr class="box-line-tr">
                                    <td style="width: 40%">
                                        <img src="${commodity_info.img_src!''}" width="50px;" height="50px;">
                                        ${commodity_info.commodity_name}</td>
                                    <td style="width: 20%">${commodity_info.comm_num}</td>
                                    <td style="width: 20%">${commodity_info.commodity_price}</td>
                                    <td style="width: 20%">${commodity_info.sum_price}</td>
                                </tr>
                            </#list>
                            <tr class="box-line-tr">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></em></td>
                            </tr>
                            <tr class="box-line-tr">
                                <td></td>
                                <td></td>
                                <td>总计：</td>
                                <td><em style="color: red">${t_order.real_price!''}</em></td>
                            </tr>

                        </table>
                    </div>
                    <#--<#if t_order.t_order_address??>
                    <div class="box-line">
                        <span class="title mid-inline-block">包装费：</span>
                    &lt;#&ndash;${t_order.remarks!''}&ndash;&gt;
                        <span style="margin-left: 75px;" class="title mid-inline-block">x1</span>
                        <span class="title mid-inline-block" style="margin-left:133px;"></span>

                    </div>

                    <div class="box-line">
                        <span class="title mid-inline-block"></span>
                    &lt;#&ndash;${t_order.remarks!''}&ndash;&gt;
                        <span style="margin-left: 75px; class="title mid-inline-block">x1</span>
                        <span class="title mid-inline-block" style="margin-left:203px;">${t_order.t_order_address.distribution_price!'0'}</span>
                    </div>


                    </#if>-->
                    <#--<div style="margin-left:294px;" class="box-line">
                        <span class="title mid-inline-block">总计：</span>
                    &lt;#&ndash;${t_order.remarks!''}&ndash;&gt;
                    ${t_order.real_price!''}
                    </div>-->
                    <#--<div class="box-line">
                        -------------------------收件人信息--------------------------
                    </div>
                    <div class="box-line">
                        <span class="title mid-inline-block">姓名：</span>
                    ${t_order.t_order_shop_address.name!''}
                    </div>
                    <div class="box-line">
                        <span class="title mid-inline-block">电话：</span>
                    ${t_order.t_order_shop_address.phone!''}
                    </div>
                    <div class="box-line">
                        <span class="title mid-inline-block">地址：</span>
                    ${t_order.t_order_shop_address.province!''} ${t_order.t_order_shop_address.city!''}${t_order.t_order_shop_address.county!''}${t_order.t_order_shop_address.details_addr!''}
                    </div>-->
                        <div class="box-line">
                            <span class="title mid-inline-block">退款理由：</span>
                                ${t_order.t_refund_apply.c_reason!''}
                        </div>
                        <div class="box-line">
                            <span class="title mid-inline-block">申请时间：</span>
                                ${t_order.t_refund_apply.create_time?string('yyyy-MM-dd HH:mm:ss')}
                        </div>
                        <div class="box-line">
                            <span class="title mid-inline-block">审核结果：</span>
                            <select  name="status" onchange="changeRuturn(this)">
                                <option value="1">通过</option>
                                <option value="2">不通过</option>
                            </select>
                        </div>
                        <div id="s_reason" style="display: none" class="box-line">
                            <span class="title mid-inline-block">理由：</span>
                            <textarea name="s_reason"></textarea>
                        </div>


                </form>
                <div class="box-line">
                    <button onclick="submitInfo()" class="btn btn-red">
                        <span>确认</span>
                    </button>
                    <span class="title mid-inline-block"></span>
                    <button onclick="getStoreEdit()" class="btn">
                        <span>关闭</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>

<script>

function getStoreEdit() {
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.close(index);
}

function changeRuturn(obj) {
    if(obj.value==2){
        $("#s_reason").show();
    }else {
        $("#s_reason").hide();
    }
}

function submitInfo() {
    $.ajax({
        url: "../order/submitApplyInfo",
        type: "post",
        data: $("#myform").serialize(),
        dataType: "json",
        success: function (data) {
            if (data.result == '0') {

                if (data.t_refund_apply.status == 1) {
                    var order_id = $("#order_id").val();
                    $.ajax({
                        url: "../order/returnMoney",
                        type: "post",
                        data: {order_id: order_id},
                        dataType: "json",
                        success: function (data) {
                            if (data.result == 0) {
                                console.log("退款成功..")
                            }
                        }
                    });
                }
                layer.alert("操作成功！", function () {
                    window.parent.location.reload();
                });
            }

        }

    });
}



</script>
</html>