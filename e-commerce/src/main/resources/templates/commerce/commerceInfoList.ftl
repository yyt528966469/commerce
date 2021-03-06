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

    <link rel="stylesheet" href="../activity/vendor/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="../activity/style/main.css">
    <link rel="stylesheet" href="../activity/style/addActivity.css">
    <link rel="stylesheet" href="../jqgrid/css/css/redmond/jquery-ui-1.8.16.custom.css?aa=1">
    <link rel="stylesheet" href="../jqgrid/css/ui.jqgrid.css">


    <#--<link href="" rel="stylesheet">-->
    <#--<script src="../activity/vendor/jquery-1.10.2.min.js"></script>-->
    <script src="../jqgrid/js/jquery-1.7.1.js"></script>
    <#--<script src="../activity/vendor/bootstrap.min.js"></script>-->
    <script src="../activity/vendor/moment.min.js"></script>
    <script src="../activity/vendor/moment-with-locales.min.js"></script>
    <script src="../activity/vendor/bootstrap-datetimepicker.min.js"></script>

    <script src="../activity/vendor/layer/layer.min.js"></script>
    <script src="../activity/vendor/layer/laydate/laydate.js"></script>
    <script src="../activity/js/main.js"></script>
    <script src="../activity/js/activityList.js"></script>
    <#--<script src="../activity/vendor/jquery.jqGrid.min.js"></script>-->
    <script src="../activity/js/addActivity.js"></script>
    <script src="../jqgrid/js/jquery.jqGrid.src.js"></script>
    <script src="../jqgrid/js/i18n/grid.locale-cn.js"></script>

    <style>
        .posirelative {
            position: relative;
        }
        .ui-jqgrid tr:nth-child(odd){
            background: #f8f8f8;
        }
        .select-out-div {
            width: 160px;
            overflow: hidden;
        }
        .m-wrap {

            background-color: #ffffff;
            background-image: none !important;
            filter: none !important;
            border: 1px solid #e5e5e5;
            outline: none;
            height: 25px !important;
            line-height: 25px;
        }
        .select-hide-span {
            height: 25px;
            position: absolute;
            top: 0;
            border-right: 1px solid #e5e5e5;
            right: 0;
            width: 20px!important;
            z-index: 999;
        }
        .select-show-b {
            border-color: #888 transparent transparent transparent;
            border-style: solid;
            border-width: 5px 4px 0 4px;
            margin-left: -4px;
            margin-top: 10px;
            position: absolute;
        }
.a_click:hover{
    color: red !important;
}
        input{
            border-radius: 5px;
            border: none;
            border: 1px solid rgb(223,223,223);
        }
        .ui-jqgrid .ui-icon-desc{
         margin-top: 15px !important;
        }
        .ui-jqgrid .ui-icon-asc{
            margin-top: 10px !important;
        }
        .ui-jqgrid tr.ui-row-ltr td{
            text-align: center;
        }
        .ui-jqgrid{
            border-radius:4px ;
        }
        .ui-jqgrid .ui-icon-asc{
            margin-right: -4px;
        }
        .ui-jqgrid .ui-icon-desc{
            margin-right: -4px;
        }
        #table_list_is_recommend{
            width: 72px !important;
        }
        /*.ui-jqgrid .ui-jqgrid-bdiv table.table-bordered td{*/
            /*width: 72px !important;*/
        /*}*/
        th ,td {
            text-align: center;
        }
        th>div{
            text-align: center;
        }

    </style>

</head>
<section class="content" height="100%" >
<div class="row">
  <div class="col-xs-12">
    <div class="box-header">
      <h4 class="box-title">商品管理</h4>


    </div>
    <div class="box-body">
        <span class=" posirelative select-out-div">
        <select id="commodity_type" class="m-wrap" style="width: 150px;height: 35px;line-height: 35px; padding: 2px 0;border-radius: 5px;" name="commodity_type">
            <option value="">==请选择==</option>
            <#list typeList as type>
                <option value="${type.type_id}">${type.type_name}</option>
            </#list>
        </select>
            <#--<span class="select-hide-span" >
                                                    <b class="select-show-b"  ></b></span>-->
        </span>
        <input id="commerce_name" type="text" placeholder="输入商品名称">

        <button id="searchBtn"  class="btn btn-small btn-red left-gap">
            <span>搜索</span>
        </button>
        <button id=""  onclick="toAddOrEdit('')" class="btn btn-red pull-right">
            <img src="../activity/img/add.png"/>
            <span>新增商品</span>
        </button>

        <div class="ibox" style="margin-top: 5px;">
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

    //创建jqGrid组件
    jQuery("#table_list").jqGrid(
            {
                url : '../commerce/list',//组件创建完成之后请求数据的url
                datatype : "json",//请求数据返回的类型。可选json,xml,txt
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
                colNames: ['ID','商品名','商品类型','价格','邮费','状态','库存','操作'],//jqGrid的列显示名字
                colModel : [ //jqGrid每一列的配置信息。包括名字，索引，宽度,对齐方式.....
                    {
                        name: 'commerce_id',
                        index: 'commerce_id',
                        hidden:true,
                        key:"ture"
                    },

                    {
                        name: 'commerce_name',
                        index: 'commerce_name',
                        width: 20
                    },
                    {
                        name: 't_commodity_type.type_name',
                        index: 't_commodity_type.type_name',
                        width: 20
                    },
                    {
                        name: 'price',
                        index: 'price',
                        width: 10,

                    },
                    {
                        name: 'postage_price',
                        index: 'postage_price',
                        width: 10,

                    },


                    {
                        name: 'status',
                        index: 'status',
                        width: 10,
                        formatter: function(cellvalue,options,rowObject) {
                            //var id = rowObject.activit_id;

                            var result='';
                            if(cellvalue==0){
                                result="<i class=\"fa fa-fw fa-ban text-red\"></i>";
                            }else {
                                result="<i class=\"fa fa-fw fa-check-circle text-green\"></i>";
                            }
                            return result;
                        }
                    },
                    {
                        name: 'stock',
                        index: 'stock',
                        width: 10,

                    },

                    {
                        name: 'oper',
                        index: 'oper',
                        width: '30',
                        formatter: function(cellvalue,options,rowObject) {

                            var commerce_id =rowObject.commerce_id;
                            var status=rowObject.status;
                            var v_result = "";
                            v_result += "<a class='a_click' style='width:65px;border:none; cursor: pointer;' " +
                                    " onClick='toAddOrEdit(\"" + commerce_id + "\");'> 编辑</a>";
                            v_result += " <a class='a_click' style='width: 65px;border:none ;cursor: pointer'    onClick='deleteCommerce(\"" + commerce_id + "\");'> 删除</a>";

                            if (status==0){
                                v_result += " <a class='a_click' style='width: 65px;border:none ;cursor: pointer'    onClick='updateStatus(\"" + commerce_id + "\",\"1\");'> 上架</a>";
                            }else {
                                v_result += " <a class='a_click' style='width: 65px;border:none ;cursor: pointer'   onClick='updateStatus(\"" + commerce_id + "\",\"0\");'> 下架</a>";
                                v_result += " <a class='a_click' style='width: 65px;border:none ;cursor: pointer'   onClick='getUrl(\"" + commerce_id + "\");'> 链接</a>";
                            }

                            return v_result;
                        }
                    }
                ],
                rowNum : 20,//一页显示多少条
                rowList : [ 10, 20, 30 ],//可供用户选择一页显示多少条
                pager : '#pager_list',//表格页脚的占位符(一般是div)的id
                sortname : 'create_time',//初始化的时候排序的字段
                sortorder : "desc",//排序方式,可选desc,asc
                mtype : "post",//向后台请求数据的ajax的类型。可选post,get
                viewrecords : true,
                caption : "商品管理"//表格的标题名字
            });
    /*创建jqGrid的操作按钮容器*/
    /*可以控制界面上增删改查的按钮是否显示*/
    //jQuery("#list2").jqGrid('navGrid', '#pager2', {edit : false,add : false,del : false});

    //绑定查询事件
    $("#searchBtn").click(function(){
        var commerce_name = $("#commerce_name").val();
        var commodity_type = $("#commodity_type").val();
        $("#table_list").jqGrid('setGridParam',{
            url:"../commerce/list",
            postData:{commerce_name:commerce_name,commerce_type:commodity_type}, //发送数据
            page:1
        }).trigger("reloadGrid"); //重新载入
    });

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

    function toAddOrEdit(commerce_id) {
        //if(activit_id)
        //$("#myiframe").load("sysuser/editUser?user_id="+user_id);
        window.location.href="../commerce/toAddOrEdit?commerce_id="+commerce_id;
    }

    function getUrl(id) {
        layer.open({
            type: 2,
            title: '查看链接',
            shadeClose: true,
            shade: false,
            maxmin: true, //开启最大化最小化按钮
            area: ['600px', '200px'],
            content: '../commerce/getUrl?commerce_id='+id,
            end: function(){

            }
        });
    }
    

    
    function updateStatus(commerce_id,status) {
        var title="上架";
        if(status==0){
            title="下架";
        }

        //alert(commerce_id+"---"+status);

        layer.confirm("是否确认"+title+"该商品",function () {
            $.ajax({
                url:"../commerce/updateStatus",
                type:"post",
                data:{commerce_id:commerce_id,status:status},
                dataType:"json",
                success:function(data){
                    if(data.result=='0'){
                        layer.alert(title+"成功",function (index) {
                            $("#table_list").jqGrid("setGridParam",{}).trigger("reloadGrid");
                            layer.close(index);
                        });
                    }
                }

            });
        });
    }

    function deleteCommerce(commerce_id) {
        layer.confirm("是否确认删除",function () {
            $.ajax({
                url:"../commerce/deleteCommerce",
                type:"post",
                data:{commerce_id:commerce_id},
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

       /* if(confirm("是否确认"+result+"该用户")){

        }*/
</script>
</html>