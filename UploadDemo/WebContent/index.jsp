<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="plugin/uploadify/uploadify.css" rel="stylesheet" type="text/css" />
<script src="plugin/uploadify/jquery-1.11.3.js" type="text/javascript"></script>
<script src="plugin/uploadify/jquery.uploadify.js" type="text/javascript"></script>
<script type="text/javascript">  
$(document).ready(function() {  
    $("#uploadify").uploadify({  
        'swf'       : 'plugin/uploadify/uploadify.swf',  
        'uploader'  : 'UploadServlet',    
        'folder'         : '/upload',  
        'queueID'        : 'fileQueue',
        'cancelImg'      : 'plugin/uploadify/uploadify-cancel.png',
        'buttonText'     : '上传文件',
        'auto'           : false, //设置true 自动上传 设置false还需要手动点击按钮 
        'multi'          : true,  
        'wmode'          : 'transparent',  
        'simUploadLimit' : 999,  
        'fileTypeExts'        : '*.*',  
        'fileTypeDesc'       : 'All Files'
    });  
});  

</script>  
</head>
<body>

	<div>
        <%--用来作为文件队列区域--%>
        <div id="fileQueue" style="position:absolute; right:50px; bottom:100px;z-index:999">
        </div>
        <input type="file" name="uploadify" id="uploadify"/>
        <p>
            <a href="javascript:$('#uploadify').uploadify('upload','*')">上传</a>| 
            <a href="javascript:$('#uploadify').uploadify('cancel','*')">取消上传</a>
        </p>
        
    </div>
    
</body>
</html>