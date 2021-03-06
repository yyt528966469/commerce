<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/x-icon" href="../activity/img/log.png">
    <title>后台管理系统</title>
    <link rel="stylesheet" href="../activity/vendor/font-awesome.min.css">
    <link rel="stylesheet" href="../activity/vendor/AdminLTE.min.css">
    <link rel="stylesheet" href="../activity/vendor/bootstrap.min.css">
    <#--<link rel="stylesheet" href="../activity/vendor/ui.jqgrid.css">-->
    <link rel="stylesheet" href="../activity/vendor/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="../activity/style/main.css">
    <link rel="stylesheet" href="../activity/style/addActivity.css">
    <link rel="stylesheet" href="../activity/style/addLottery.css">
    <link rel="stylesheet" href="../jqgrid/css/css/redmond/jquery-ui-1.8.16.custom.css?aa=1">
    <link rel="stylesheet" href="../jqgrid/css/ui.jqgrid.css">
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
   <#-- <script src="../activity/vendor/jquery.jqGrid.min.js"></script>-->
    <script src="../activity/js/addActivity.js"></script>
    <script src="../activity/js/addLottery.js"></script>
    <script src="../jqgrid/js/jquery.jqGrid.src.js"></script>
    <script src="../jqgrid/js/i18n/grid.locale-cn.js"></script>
</head>
<section class="content" height="100%" >
<div class="row">
  <div class="col-xs-12">
    <div class="box-header">
      <h4 class="box-title">优惠券管理</h4>

      <button id=""  onclick="toAddorEdit('')" class="btn btn-red pull-right">
        <img src="../activity/img/add.png"/>
        <span>新增优惠券</span>
      </button>

    </div>
    <div class="box-body">
        <div class="ibox" style="">
            <div class="ibox-content">

                <div  class=" jqGrid_wrapper sk-spinner sk-spinner-fading-circle">
                    <table id="table_list"></table>
                    <div id="pager_list"></div>
                </div>
            </div>
        </div>
      <!--<table id="userInfoTable" class="table table-bordered table-hover">
        <thead>
          <tr>
            <th>ID</th>
            <th>登录名</th>
            <th>密码</th>
            <th>创建日期</th>
            <th>使用权限</th>
            <th>操作</th>
          </tr>
        </thead>
      </table>-->
    </div>
  </div>
</div>
</section>


<script>
    $(document).ready(function () {
        $.jgrid.defaults.styleUI = 'Bootstrap';
        // Examle data for jqGrid
        var searchString='';

        //绑定表格数据
        $("#table_list").jqGrid({
            postData:{name: searchString},
            url:"../coupons/list",
            datatype: "json",
            height: "calc(100% - 185px)",
            autowidth: true,
            shrinkToFit: true,
            multiselect: false,
            multiboxonly:true,
            rownumbers: true,
            loadComplete:function(){
                $("#table_list").jqGrid('setLabel','rn', 'ID', {'text-align':'left'});
            },
            beforeSelectRow: beforeSelectRow,
            rowList: [10, 20, 30],
            root:"rows",
            colNames: ['ID','面值','起送金额','有效期','创建时间','操作'],
            colModel: [
                {
                    name: 'coupons_id',
                    index: 'coupons_id',
                    hidden:true,
                    key:"ture"
                },
                {
                    name: 'coupons_price',
                    index: 'coupons_price',
                    width: 30,
                    align : "center"
                },
                {
                    name: 'qs_je',
                    index: 'qs_je',
                    width: 30,
                    align : "center"
                },
                {
                    name: 'effective_day',
                    index: 'effective_day',
                    width: 30,
                    align : "center"
                },
                {
                    name: 'create_time',
                    index: 'create_time',
                    width: '30',
                    align : "center",
                    formatter: function(cellvalue,options,rowObject) {
                        var date=new Date(cellvalue);
                        var time=date.getFullYear()+"-";
                        time=time+toNum(date.getMonth()+1)+"-";
                        time=time+toNum(date.getDate())+" ";
                        time=time+toNum(date.getHours())+":";
                        time=time+toNum(date.getMinutes())+":";
                        time=time+toNum(date.getSeconds());
                        return time;
                    }

                },
                {
                    name: 'oper',
                    index: 'oper',
                    width: '25',
                    align : "center",
                    formatter: function(cellvalue,options,rowObject) {

                        var coupons_id =rowObject.coupons_id;
                            var v_result = "";
                            v_result += " &nbsp;&nbsp;&nbsp; <a  class='a_click' style='width:65px;border:none; cursor: pointer;'  onClick='toAddorEdit(\"" + coupons_id + "\");'> 编辑</a>";
                        v_result += " &nbsp;&nbsp;&nbsp; <a  class='a_click' style='width:65px;border:none; cursor: pointer;' onClick='deleteCoupons(\"" + coupons_id + "\");'> 删除</a>";
                        v_result += " <a class='a_click' style='width: 65px;border:none ;cursor: pointer'   onClick='getUrl(\"" + coupons_id + "\");'> 链接</a>";
                        /*]]>*/
                        return v_result;
                    }
                }
            ],
            sortable:true,
            sortname: 'create_time',
            sortorder: 'asc',
            pager: "#pager_list",
            caption: "分类管理",
        });

    });

    //绑定查询事件
   /* $("#searchBtn").click(function(){
        var start_time = $("#start_time").val();
        var end_time = $("#end_time").val();
        $("#table_list").jqGrid('setGridParam',{
            url:"../prizerecord/list",
            postData:{end_time:end_time,start_time:start_time}, //发送数据
            page:1
        }).trigger("reloadGrid"); //重新载入
    });*/

    //单选空间
    function beforeSelectRow()
    {
        $("#jqgridId").jqGrid('resetSelection');
        return(true);
    }

    function toNum(num){
       /* <![CDATA[*/
        if(num < 10){
            num="0"+num;
        }
        /*]]>*/
        return num;
    }

    function toAddorEdit(coupons_id) {
        //if(activit_id)
        //$("#myiframe").load("sysuser/editUser?user_id="+user_id);
        window.location.href="../coupons/toAddorEdit?coupons_id="+coupons_id;
    }
    
    function deleteCoupons(coupons_id) {
        layer.confirm("是否确认删除",function () {
            $.ajax({
                url:"../coupons/deleteCoupons",
                type:"post",
                data:{coupons_id:coupons_id},
                dataType:"json",
                success:function(data){
                    if(data.result=='0'){
                        layer.alert("删除成功",function (index) {
                            $("#table_list").jqGrid("setGridParam",{}).trigger("reloadGrid");
                            layer.close(index);
                        });
                    }
                }

            });
        });
    }
    function getUrl(id) {
        layer.open({
            type: 2,
            title: '查看链接',
            shadeClose: true,
            shade: false,
            maxmin: true, //开启最大化最小化按钮
            area: ['600px', '200px'],
            content: '../coupons/getUrl?coupons_id='+id,
            end: function(){

            }
        });
    }

</script>
</html>