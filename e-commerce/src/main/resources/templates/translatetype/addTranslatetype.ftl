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
<script type="text/javascript" src="../activity/vendor/ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="../activity/vendor/ueditor/ueditor.all.js"></script>

<script type="text/javascript" src="../activity/vendor/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    select,input{
        height: 35px;
        border-radius: 4px;
    }
    input{
        border: none;
        border: 1px solid rgb(223,223,223);
        text-align: center;
    }

</style>
<section class="content" height="100%" >
<div class="row">
  <div class="col-xs-12">
    <div class="box-header">
      <h4 class="box-title">
              编辑分类
          </h4>
    </div>
    <div class="box-body">
        <form id="myform">

            <input type="hidden" name="type_id" value="${t_translate_type.type_id!''}"/>

      <div class="box-line">
        <span class="title mid-inline-block">类型名称：</span>
        <input class="long"  maxlength="30" aria-required="true" required=""  name="type_name"  value="${t_translate_type.type_name!'' }" placeholder="请输入类型名称"/>
      </div>
      <div class="box-line">
        <span class="title mid-inline-block">顺序：</span>
        <input class="long" maxlength="3" aria-required="true" required="" name="sort" value="${t_translate_type.sort!'' }" placeholder="请输入视频顺序"/>
      </div>


           <#-- <div class="box-line">
                <span class="title mid-inline-block">商品邮费：</span>
                <input class="long" maxlength="5" aria-required="true" required="" name="postage_price" value="${t_translate_type.postage_price!'' }" placeholder="商品邮费"/>输入0表示包邮
            </div>-->


      <div class="box-line">
        <span class="title mid-inline-block"></span>
        <button class="btn btn-red">
          <span>保存</span>
        </button>
      </div>
        </form>
    </div>
  </div>
</div>
</section>

<script>



    //changeRan();

    $("#myform").submit(function () {

        $.ajax({
            url:"../translatetype/saveTranslateType",
            type:"post",
            data:$("#myform").serialize(),
            dataType:"json",
            success:function(data){
                if(data.result=='0'){
                    layer.alert("保存成功",function (index) {
                        //layer.close(index);
                        window.location.href="../translatetype/main";
                    });

                }else {
                    return false;
                }
            },
            error : function() {
                alert('保存异常');
            }

        });
        return false;
    });



</script>
</html>