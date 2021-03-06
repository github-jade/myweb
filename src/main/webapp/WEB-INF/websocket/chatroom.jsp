<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>聊天室</title>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resource/chatroom/css/bootstrap.min.css">    
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resource/chatroom/css/style.css">    
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resource/chatroom/css/jquery.mobile.flatui.css" />
</head>
<body>
<div data-role="page">
	<div data-role="header" class="header linear-g">
        <a href="#panel-left" data-iconpos="notext" class="glyphicon glyphicon-th-large col-xs-2 text-right"> </a>
        <a class="text-center col-xs-8">聊天室</a>
        <a href="#panel-right" data-iconpos="notext" class="glyphicon glyphicon-user col-xs-2 text-left"> </a>
    </div>
    <div data-role="panel" data-position="left" data-display="push" class="list-group shortcut_menu dn linear-g" id="panel-left">
        <a href="#" class="list-group-item"><span class="glyphicon glyphicon-home"> </span> &nbsp;菜单1</a>
        <a href="#" class="list-group-item"><span class="glyphicon glyphicon-edit"> </span> &nbsp;菜单2</a>
        <a href="#" class="list-group-item"><span class="glyphicon glyphicon-list"> </span> &nbsp;菜单3</a>
        <a href="#" class="list-group-item"><span class="glyphicon glyphicon-list-alt"> </span> &nbsp;菜单4</a>
    </div>
    <div data-role="panel" data-position="right" data-display="push" class="user_box text-center dn linear-g" id="panel-right">
        <div class="u_info">
            <img class="avatar" src="images/avatar.png" alt="头像">
            <span class="username">developer</span>
        </div>
        <ul class="user_menu">
          <li class="menu"><a href="#"><span class="glyphicon glyphicon-cog"> </span> &nbsp;基本设置</a></li>
          <li class="menu"><a href="#"><span class="glyphicon glyphicon-lock"> </span> &nbsp;修改密码</a></li>
          <li class="menu"><a href="#"><span class="glyphicon glyphicon-picture"> </span> &nbsp;上传头像</a></li>
          <li class="menu"><a href="#"><span class="glyphicon glyphicon-off"> </span> &nbsp;安全退出</a></li>
        </ul>
    </div>
    <div data-role="content" class="container" role="main">
        <ul class="content-reply-box mg10">
            <li class="odd">
                <a class="user" href="#"><img class="img-responsive avatar_" src="<%= request.getContextPath() %>/resource/chatroom/images/avatar-1.png" alt=""><span class="user-name">奔波儿灞</span></a>
                <div class="reply-content-box">
                	<span class="reply-time">03-08 15：00</span>
                    <div class="reply-content pr">
                    	<span class="arrow">&nbsp;</span>
                    	为什么小鑫的名字里有三个金呢？
                    </div>
                </div>
            </li>
            <li class="even">
                <a class="user" href="#"><img class="img-responsive avatar_" src="<%= request.getContextPath() %>/resource/chatroom/images/avatar-1.png" alt=""><span class="user-name">灞波儿奔</span></a>
                <div class="reply-content-box">
                	<span class="reply-time">03-08 15：10</span>
                    <div class="reply-content pr">
                    	<span class="arrow">&nbsp;</span>
                    	他命里缺金，所以取名叫鑫，有些人命里缺水，就取名叫淼，还有些人命里缺木就叫森。
                    </div>
                </div>
            </li>
            <li class="odd">
                <a class="user" href="#"><img class="img-responsive avatar_" src="<%= request.getContextPath() %>/resource/chatroom/images/avatar-1.png" alt=""><span class="user-name">奔波儿灞</span></a>
                <div class="reply-content-box">
                	<span class="reply-time">03-08 15：20</span>
                    <div class="reply-content pr">
                    	<span class="arrow">&nbsp;</span>
                    	那郭晶晶命里缺什么？
                    </div>
                </div>
            </li>
            <li class="even">
                <a class="user" href="#"><img class="img-responsive avatar_" src="<%= request.getContextPath() %>/resource/chatroom/images/avatar-1.png" alt=""><span class="user-name">灞波儿奔</span></a>
                <div class="reply-content-box">
                	<span class="reply-time">03-08 15：30</span>
                    <div class="reply-content pr">
                    	<span class="arrow">&nbsp;</span>
                    	此处省略一百字...
                    </div>
                </div>
            </li>
        </ul>
        <ul class="operating row text-center linear-g">
        	<li class="col-xs-4"><a href="#"><span class="glyphicon glyphicon-tags"></span> &nbsp;标签</a></li>
        	<li class="col-xs-4"><a href="#"><span class="glyphicon glyphicon-comment"></span> &nbsp;回复</a></li>
        	<li class="col-xs-4"><a href="#"><span class="glyphicon glyphicon-heart"></span> &nbsp;喜欢</a></li>
        </ul>
    </div>
</div>
<script type="text/javascript" src="<%= request.getContextPath() %>/resource/chatroom/js/jquery.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/resource/chatroom/js/jquery.mobile-1.4.0-rc.1.js"></script>
<script type="text/javascript">
	$(function(){
		/* 
		** 不同页面切换转场效果
		** $.mobile.changePage ('/test.html', 'slide/pop/fade/slideup/slidedown/flip/none', false, false);
		*/
		$('.list-group-item,.menu a').click(function(){
			$.mobile.changePage($(this).attr('href'), {
				transition : 'flip', //转场效果
				reverse : true       //默认为false,设置为true时将导致一个反方向的转场
			});	
		});
	});
</script>
</body>
</html>