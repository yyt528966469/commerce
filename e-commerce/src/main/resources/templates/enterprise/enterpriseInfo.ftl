<html >
<head >
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/x-icon" href="../activity/img/log.png">
    <title>活动后台管理系统</title>
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
            <div class="box-header">
                <h4 class="box-title">
                    我的店铺
                </h4>
            </div>
            <div class="box-body">
                <form id="myform">

                    <input type="hidden" name="store_id" value="${t_enterprise.enterprise_id!''}"/>
                    <div class="box-line">
                        <span class="title mid-inline-block">认证类型：</span>
                    ${t_enterprise.type!'' }
                    </div>
                    <div class="box-line">
                        <span class="title mid-inline-block">企业名称：</span>
                    ${t_enterprise.enterprise_name!'' }
                    </div>
                    <div class="box-line">
                        <span class="title mid-inline-block">店铺名称：</span>
                        ${t_enterprise.store_name!'' }
                    </div>

                    <div class="box-line">
                        <span class="title mid-inline-block">创建时间：</span>
                        ${t_enterprise.create_time?string('yyyy.MM.dd HH:mm:ss') }
                    </div>


                    <div class="box-line">
                        <span class="title mid-inline-block">店铺图片：</span>
                        <label for="cover" style="width: 25%;">
                            <img src="${t_enterprise.certificates_img!''}">
                        </label>
                    </div>

                </form>
                <div class="box-line">
                    <span class="title mid-inline-block"></span>
                    <button onclick="getStoreEdit()" class="btn btn-red">
                        <span>修改</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>

<script>

function getStoreEdit() {
    window.location.href="../store/getStoreEdit";
}



</script>
</html>