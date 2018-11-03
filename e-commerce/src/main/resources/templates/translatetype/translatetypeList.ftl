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
      <h4 class="box-title">视频分类</h4>


    </div>
    <div class="box-body">
        <span class=" posirelative select-out-div">

            <#--<span class="select-hide-span" >
                                                    <b class="select-show-b"  ></b></span>-->
        </span>
        <input id="type_name" type="text" placeholder="输入类型名称">

        <button id="searchBtn"  class="btn btn-small btn-red left-gap">
            <span>搜索</span>
        </button>
        <button id=""  onclick="toAddOrEdit('')" class="btn btn-red pull-right">
            <img src="../activity/img/add.png"/>
            <span>新增分类</span>
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
                url : '../translatetype/list',//组件创建完成之后请求数据的url
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
                colNames: ['ID','类型名称','顺序','操作'],//jqGrid的列显示名字
                colModel : [ //jqGrid每一列的配置信息。包括名字，索引，宽度,对齐方式.....
                    {
                        name: 'type_id',
                        index: 'type_id',
                        hidden:true,
                        key:"ture"
                    },

                    {
                        name: 'type_name',
                        index: 'type_name',
                        width: 20
                    },

                    {
                        name: 'sort',
                        index: 'sort',
                        width: 10,

                    },


                    {
                        name: 'oper',
                        index: 'oper',
                        width: '30',
                        formatter: function(cellvalue,options,rowObject) {

                            var type_id =rowObject.type_id;
                            var v_result = "";
                            v_result += "<a class='a_click' style='width:65px;border:none; cursor: pointer;' " +
                                    " onClick='toAddOrEdit(\"" + type_id + "\");'> 编辑</a>";
                            v_result += " <a class='a_click' style='width: 65px;border:none ;cursor: pointer'    onClick='deleteTranslateType(\"" + type_id + "\");'> 删除</a>";

                            return v_result;
                        }
                    }
                ],
                rowNum : 20,//一页显示多少条
                rowList : [ 10, 20, 30 ],//可供用户选择一页显示多少条
                pager : '#pager_list',//表格页脚的占位符(一般是div)的id
                sortname : 'sort',//初始化的时候排序的字段
                sortorder : "asc",//排序方式,可选desc,asc
                mtype : "post",//向后台请求数据的ajax的类型。可选post,get
                viewrecords : true,
                caption : "视频管理"//表格的标题名字
            });
    /*创建jqGrid的操作按钮容器*/
    /*可以控制界面上增删改查的按钮是否显示*/
    //jQuery("#list2").jqGrid('navGrid', '#pager2', {edit : false,add : false,del : false});

    //绑定查询事件
    $("#searchBtn").click(function(){
        var type_name = $("#type_name").val();
        //var commodity_type = $("#commodity_type").val();
        $("#table_list").jqGrid('setGridParam',{
            url:"../translatetype/list",
            postData:{type_name:type_name}, //发送数据
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

    function toAddOrEdit(type_id) {
        //iftranslate_id
        //$("#myiframe").load("sysuser/editUser?user_id="+user_id);
        window.location.href="../translatetype/toAddOrEdit?type_id="+type_id;
    }

    function deleteTranslateType(type_id) {
        layer.confirm("是否确认删除",function () {
            $.ajax({
                url:"../translatetype/deleteTranslateType",
                type:"post",
                data:{type_id:type_id},
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