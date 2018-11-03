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
    <script src="../js/laydate/laydate.js"></script>
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
                    编辑店铺信息
                </h4>
            </div>
            <div class="box-body">
                <form id="myform">

                    <input type="hidden" name="store_id" value="${store_info.store_id!''}"/>

                    <div class="box-line">
                        <span class="title mid-inline-block">店铺名称：</span>
                        <input class="long"  maxlength="20" aria-required="true" required=""  name="store_name"  value="${store_info.store_name!'' }" placeholder="请输入店铺名称"/>
                    </div>
                    <div class="box-line">
                        <span class="title mid-inline-block">店铺简介：</span>
                        <input class="long" maxlength="25" aria-required="true" required="" name="store_intro" value="${store_info.store_intro!'' }" placeholder="请输入店铺简介"/>
                    </div>
                    <#--<div class="box-line">
                        <span class="title mid-inline-block">机构负责人：</span>
                        <input class="long" maxlength="25" aria-required="true" required="" name="responsibility" value="${store_info.responsibility!'' }" placeholder="请输入负责人姓名"/>
                    </div>-->
                    <div class="box-line">
                        <span class="title mid-inline-block">电话号码：</span>
                        <input class="long" maxlength="20" aria-required="true" required="" name="phone" value="${store_info.phone!'' }" placeholder="请输入电话"/>
                    </div>
                    <div class="box-line">
                        <span class="title mid-inline-block">工作日：</span>
                        <input class="long" maxlength="30" aria-required="true" required="" name="work_time" value="${store_info.work_time!'' }" placeholder="请输入微信号"/>
                    </div>
                    <div class="box-line">
                        <span class="title mid-inline-block">营业时间：</span>
                        <input style="width: 100px;"  aria-required="true" id="start_str" value="${store_info.start_str!'' }" required="" name="start_str" readonly placeholder="请输入开始时间"/>
                        <input style="width: 100px;" aria-required="true" id="end_str" value="${store_info.end_str!'' }" required="" name="end_str" readonly  placeholder="请输入结束时间"/>
                    </div>
                    <div class="box-line">
                        <span class="title mid-inline-block">店铺图片：</span>
                        <label for="cover" style="width: 30%;">
                            <input id="image_file" name="image_file" dir=rtl class="file-loading" type="file" >
                            <input type="hidden" id="img_src" name="img_src" value="${store_info.img_src!''}">
                            <span class="upload-prompt" style="color: red">支持jpg、png格式，大小不超过2.0M</span>
                        </label>

                    </div>
                    <div class="box-line">
                        <span class="title mid-inline-block">店铺坐标：</span>
                        <input style="width: 100px;" maxlength="25" aria-required="true" required="" id="longitude" name="longitude" value="${store_info.longitude!'' }" placeholder="经度"/>
                        <input style="width: 100px;" maxlength="25" aria-required="true" required="" id="latitude" name="latitude" value="${store_info.latitude!'' }" placeholder="纬度"/>
                        <input type="button" onclick="toMap()" value="点击">
                    </div>
                    <div class="box-line">
                        <span class="title mid-inline-block">店铺地址：</span>
                        <input style="width: 100px;" maxlength="8" aria-required="true" required="" id="province" name="province" value="${store_info.province!'' }" placeholder="省份"/>
                        <input style="width: 100px;" maxlength="8" aria-required="true" required="" id="city" name="city" value="${store_info.city!'' }" placeholder="城市"/>
                        <input style="width: 100px;" maxlength="8" aria-required="true" required="" id="county" name="county" value="${store_info.county!'' }" placeholder="区(县)"/>
                        <input class="long" maxlength="25" aria-required="true" required="" id="details_addr" name="address" value="${store_info.address!'' }" placeholder="详细地址"/>
                    </div>
                    <#--<div class="box-line">
                        <span class="title mid-inline-block">&nbsp;&nbsp;&nbsp;包装费：</span>
                        <input style="width: 100px;" maxlength="5" aria-required="true" required="" name="packing_price" value="${t_base.packing_price!'0' }" placeholder="请输入包装费"/>
                    </div>
                    <div class="box-line">
                        <span class="title mid-inline-block">&nbsp;&nbsp;&nbsp;配送费：</span>
                        <input style="width: 100px;" maxlength="5" aria-required="true" required="" name="distribution_price" value="${t_base.distribution_price!'0'}" placeholder="请输入配送费"/>
                    </div>
                    <div class="box-line">
                        <span class="title mid-inline-block">桌号范围：</span>
                        <input  maxlength="3" style="width: 100px;" aria-required="true" required="" name="table_start" value="${t_base.table_start!'0'}" placeholder="起始桌号"/>
                        <input  maxlength="3" style="width: 100px;" aria-required="true" required="" name="table_end" value="${t_base.table_end!'0'}" placeholder="结束桌号"/>
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
                                        //时间选择器
                                        laydate.render({
                                            elem: '#start_str'
                                            ,type: 'time',
                                            format : 'HH:mm'
                                        });

                                        laydate.render({
                                            elem: '#end_str'
                                            ,type: 'time',
                                            format : 'HH:mm'
                                        });


                                        /* //日期范围限制
                                         var start = {
                                             elem : '#start_str',
                                             type:'time',
                                             format : 'HH:mm',
                                             //min: laydate.now(), //设定最小日期为当前日期
                                             choose : function(datas) {
                                                 end.min = datas; //开始日选好后，重置结束日的最小日期
                                                 end.start = datas //将结束日的初始值设定为开始日
                                             }
                                         };
                                         var end = {
                                             elem : '#end_str',
                                             format : 'YYYY-MM-DD',
                                             choose : function(datas) {
                                                 start.max = datas; //结束日选好后，重置开始日的最大日期
                                             }
                                         };
                                         laydate(start);
                                         laydate(end);*/

                                        function toMap() {
                                            var lng= $("#longitude").val();
                                            var lat=$("#latitude").val();
                                            layer.open({
                                                type: 2,
                                                title: '点击获取经纬度',
                                                shadeClose: true,
                                                shade: 0.8,
                                                area: ['80%', '80%'],
                                                content: "../store/toMap?lng="+lng+"&lat="+lat //iframe的url
                                            });
                                        }

                            $("#myform").submit(function () {



                                $.ajax({
                                    url:"../store/saveStoreInfo",
                                    type:"post",
                                    data:$("#myform").serialize(),
                                    dataType:"json",
                                    success:function(data){
                                        if(data.result=='0'){
                                            layer.alert("保存成功",function (index) {
                                                layer.close(index);
                                                window.location.href="../store/loadmain";
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

                            $(document).ready(function () {
                                //上传封面图
                                var imageInputId = "image_file";
                                var uploadImagePath = "../store/uploadImages";
                                initImageInput(imageInputId, uploadImagePath);




                            });
                            var v_img_url = '${store_info.img_src!""}';

                            function initImageInput(inputId,uploadUrl) {
                                var control = $("#" + inputId);
                                //alert(control);
                                control.fileinput({
                                    language: "zh", //设置语言
                                    theme: "fa",
                                    uploadUrl: uploadUrl,  //上传地址
                                    uploadAsync: true, //是否异步上传   默认异步上传
                                    uploadExtraData:function (previewId, index) {//上传文件时额外传递的参数设置 动态获取
                                        var filePathString = $("#filePathString").val();
                                        if(filePathString==null || filePathString==undefined) filePathString="";
                                        var obj = {"filePathString": filePathString};
                                        return obj;
                                    },
                                    showUpload: false, //是否显示上传按钮
                                    showRemove: true,  //是否显示移除按钮
                                    showPreview :true, //是否显示预览
                                    showCaption: true,//是否显示文件标题。默认为true。
                                    //browseClass:"btn btn-primary", //按钮样式
                                    dropZoneEnabled: false,//是否显示拖拽区域
                                    showClose: false, //是否在预览中显示关闭图标
                                    showUploadedThumbs: false,// 是否在预览窗口中持续显示上传的文件缩略图（用于ajax上传）
                                    //showBrowse: true, //是否显示文件浏览按钮

                                    //enctype: 'multipart/form-data',
                                    rtl: false,//预览显示从右往左  选择文件按钮 从左到右

                                    layoutTemplates:{
                                        actionDelete:"",//去除缩略图上面的删除按钮
                                        actionUpload:"",//去除缩略图上面的上传按钮
                                        //actionZoom:"",//去除缩略图上面的查看详情按钮
                                    },
                                    autoReplace: true, //是否自动替换当前图片，设置为true时，再次选择文件， 会将当前的文件替换掉。
                                    //minImageWidth: 50, //图片的最小宽度
                                    //minImageHeight: 50,//图片的最小高度
                                    //maxImageWidth: 1000,//图片的最大宽度
                                    //maxImageHeight: 1000,//图片的最大高度
                                    //minFileCount: 0, //表示同时最小上传的文件个数
                                    maxFileCount:1, //表示允许同时上传的最大文件个数
                                    validateInitialCount:true,

                                    allowedPreviewTypes: ["image"], //预览文件类型
                                    allowedFileTypes: ["image"],
                                    allowedFileExtensions:  ["jpg","png"],
                                    maxFileSize : 2048, //单位为kb，如果为0表示不限制文件大小

                                    overwriteInitial: true,
                                    initialPreviewAsData: true, // identify if you are sending preview data only and not the raw markup
                                    initialPreviewFileType: "image",
                                    initialPreview: v_img_url

                                }).on("filebatchselected", function (event, files) {
                                    $(this).fileinput("upload");
                                }).on("filepreupload", function(event, data, previewId, index) {     //上传中
                                    var form = data.form, files = data.files, extra = data.extra,
                                            response = data.response, reader = data.reader;
                                    console.log("图片正在上传");
                                }).on("fileuploaded", function (event, data, previewId, index) {    //一个文件上传成功
                                    console.log('文件上传成功！'+data);
                                    //获取后台返回的json对象
                                    var response_result = data.response;
                                    //获取json对象中的Object值
                                    var v_fileSrc = response_result.success;

                                    $("#img_src").val(v_fileSrc);
                                }).on("fileerror", function(event, data, msg) {  //一个文件上传失败
                                    console.log("图片上传失败！"+data.id);
                                    layer.alert(msg,{icon: 2});
                                }).on("filecleared", function(event) {  //点击移除按钮 清除预览中的文件后触发的事件
                                    console.log("删除预览图片！"+event);
                                    $("#img_src").val("");//清除预览中的文件后同时将图片地址置为空
                                });
                            }



                            function getlngAndlat(lng,lat,province,city,district,street,streetNumber,obj) {
                                $("#longitude").val(lng);
                                $("#latitude").val(lat);
                                console.log(obj);
                                $("#province").val(province);
                                $("#city").val(city);
                                $("#county").val(district);
                                $("#details_addr").val(street+streetNumber);
                                //alert(province+"--"+city);
                            }



                            </script>
</html>