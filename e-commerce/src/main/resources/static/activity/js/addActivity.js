"use strict";function previewImage(e){var r=new FileReader;r.readAsDataURL(e.files[0]),r.onload=function(e){$("#preview").attr("src",e.target.result)}}