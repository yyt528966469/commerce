<html >
<head >
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/x-icon" href="../activity/img/log.png">
    <title></title>
    <link rel="stylesheet" href="../activity/vendor/font-awesome.min.css">
    <link rel="stylesheet" href="../activity/vendor/AdminLTE.min.css">
    <link rel="stylesheet" href="../activity/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="../activity/vendor/ui.jqgrid.css">
    <link rel="stylesheet" href="../activity/vendor/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="../activity/style/main.css">
    <link rel="stylesheet" href="../activity/style/addActivity.css">
    <link rel="stylesheet" href="../activity/style/addLottery.css">
    <link rel="stylesheet" href="../activity/vendor/viewer.min.css">

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
    <script src="../activity/vendor/viewer.min.js"></script>

    <script src="../activity/vendor/bootstrap-fileinput/js/fileinput.min.js"></script>
    <script src="../activity/vendor/bootstrap-fileinput/js/locales/zh.js"></script>
    <style>
        .title{
            font-weight：bold;
            font-size：30px;
        }
    </style>
</head>
<section class="content" height="100%" >
<div class="row">
  <div class="col-xs-12">
    <div class="box-body">
        <form id="myform">

            <input type="hidden" id="org_id" name="org_id" value="${edu_org.org_id!''}"/>
            <div class="box-line">
                <span class="title mid-inline-block">机构类型：</span>
                ${edu_org.t_org_type.type_name}
                &nbsp;&nbsp;
                <span class="title mid-inline-block">机构名称：</span>
                    ${edu_org.org_name!'' }&nbsp;&nbsp;
                <span class="title mid-inline-block">机构简介：</span>
            ${edu_org.org_intro!'' }

            </div>

      <div class="box-line">
          <span class="title mid-inline-block">机构负责人：</span>
      ${edu_org.responsibility!'' }
          &nbsp;&nbsp;
          <span class="title mid-inline-block">负责人电话：</span>
      ${edu_org.phone!'' }
          &nbsp;&nbsp;
          <span class="title mid-inline-block">负责人微信：</span>
      ${edu_org.wechat_num!'' }
          负责人身份证：
      ${edu_org.id_card!'' }
      </div>
            <div class="box-line">
                <span class="title mid-inline-block">头像：</span>

                    <img src="${edu_org.index_img!''}" width="80px" height="64px">

            </div>

            <div class="box-line" >
                <span class="title mid-inline-block">机构图片：</span>

                <span id="sucaihuo">
                        <img width="80px;" height="64px;" title="点击预览" src="http://192.168.0.168:8080/wmedu-web/upload/act_img//20180730112454362640.png" style="cursor:pointer;" alt="图片1">
                        <img  width="80px;" height="64px;" title="点击预览"  src="http://192.168.0.168:8080/wmedu-web/upload/act_img//20180730112454362640.png"  style="cursor:pointer;" alt="图片2">
                        <img  width="80px;" height="64px;" title="点击预览" src="http://192.168.0.168:8080/wmedu-web/upload/act_img//20180730112454362640.png"  style="cursor:pointer;" alt="图片3">
                        <img  width="80px;" height="64px;" title="点击预览"  src="http://192.168.0.168:8080/wmedu-web/upload/act_img//20180730112454362640.png"  style="cursor:pointer;" alt="图片4">
                        <img  width="80px;" height="64px;"  title="点击预览" src="http://192.168.0.168:8080/wmedu-web/upload/act_img//20180730112454362640.png"  style="cursor:pointer;" alt="图片5">
                        <img  width="80px;" height="64px;" title="点击预览" src="http://192.168.0.168:8080/wmedu-web/upload/act_img//20180730112454362640.png"  style="cursor:pointer;" alt="图片6">
</span>
                    <#--<ul class="images" id="imgWin" style="display:none;"></ul>-->
                    <#--<img src="${edu_org.index_img!''}" width="40px" height="30px">
                    <img src="${edu_org.index_img!''}" width="40px" height="30px">
                    <img src="${edu_org.index_img!''}" width="40px" height="30px">
                    <img src="${edu_org.index_img!''}" width="40px" height="30px">
                    <img src="${edu_org.index_img!''}" width="40px" height="30px">-->


            </div>
            <div class="box-line">
                <span class="title mid-inline-block">机构地址：</span>
                ${edu_org.province!'' }
                ${edu_org.city!'' }
                ${edu_org.county!'' }
                ${edu_org.details_addr!'' }
            </div>
            <#--<div class="box-line">
                <span class="title mid-inline-block">备注：</span>
                <input class="long" maxlength="25" aria-required="true" required="" name="remarks" value="${edu_org.remarks!'' }" placeholder="请输备注"/>
            </div>-->

            <div class="box-line">
                <span class="title mid-inline-block">机构详情：</span>
                <label for="cover" style="width: 80%" >
                ${edu_org.details}
                </label>

            </div>

      <div class="box-line">
        <span class="title mid-inline-block">审核结果</span>
          <input type="radio" checked onclick="changeStatus()" name="examine_name" value="1"> 通过
          <input type="radio" onclick="changeStatus()" name="examine_name" value="2"> 不通过



         <#-- <button class="btn btn-red">
              <span>不通过</span>
          </button>-->
      </div>
            <div class="box-line">
                <span class="title mid-inline-block">用户名：</span>
                <input type="text" id="user_name" name="user_name" value="${edu_org.phone!'' }" readonly>

            </div>
            <div class="box-line">
                <span class="title mid-inline-block">密码：</span>
                <input type="text" id="password" name="password" value="${edu_org.phone!'' }">
            </div>
            <div class="box-line">
                <span class="title mid-inline-block">未通过原因：</span>
                <input type="text" id="examin_result"  name="examin_result" value="">
            </div>
            <div class="box-line">
                <input value="提交" onclick="changeType()" class="btn btn-red"/>
            </div>
        </form>
    </div>
  </div>
</div>
</section>

<script>

    var viewer = new Viewer(document.getElementById('sucaihuo'), {
        url: 'src'
    });

    changeStatus();
    
    function changeStatus() {
        var  status=getStatus();
        if(status==1){
            $("#user_name").parent().show();
            $("#password").parent().show();
            $("#examin_result").parent().hide();
        }else {
            $("#user_name").parent().hide();
            $("#password").parent().hide();
            $("#examin_result").parent().show();
        }
    }
    //获取是否通过状态
    function getStatus() {
        var arr=document.getElementsByName("examine_name");
        var  status=1
        $(arr).each(function () {
            var checked =this.checked;
            if(checked){
                status=this.value;
            }
        });
        return status;
    }
    function changeType() {
        var  status=getStatus();
        var org_id=$("#org_id").val();
        var title="通过";
        if(status==2){
            title="不通过";
        }

        layer.confirm("是否确认"+title+"该机构",function () {
            var user_name=$("#user_name").val();
            var password=$("#password").val();
            var examin_result=$("#examin_result").val();
            $.ajax({
                url:"../eduorg/examine",
                type:"post",
                data:{org_id:org_id,examine_status:status,username:user_name,password:password,examin_result:examin_result},
                dataType:"json",
                success:function(data){
                    if(data.result=='0'){
                        layer.alert(title+"成功",function (index) {
                            window.parent.location.reload();
                        });
                    }
                }

            });
        });
    }

</script>
</html>