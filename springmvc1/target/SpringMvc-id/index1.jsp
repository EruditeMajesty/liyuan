<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>很漂亮的用户登录界面HTML模板-柯乐义</title><base target="_blank" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<script src="js/jquery-2.1.1.min.js"></script>
<style>
*{
padding:0px;
margin:0px;
}
a{color:White}
body{
font-family:Arial, Helvetica, sans-serif;
background:url(http://keleyi.com/keleyi/phtml/divcss/21/images/grass.jpg) no-repeat center;
font-size:13px; 
}
img{
border:0;
}
.lg{width:468px; height:468px; margin:100px auto; background:url(http://keleyi.com/keleyi/phtml/divcss/21/images/login_bg.png) no-repeat;}
.lg_top{ height:200px; width:468px;}
.lg_main{width:400px; height:180px; margin:0 25px;}
.lg_m_1{
width:290px;
height:100px;
padding:60px 55px 20px 55px;
}
.ur{
height:37px;
border:0;
color:#666;
width:236px;
margin:4px 28px;
background:url(http://keleyi.com/keleyi/phtml/divcss/21/images/user.png) no-repeat;
padding-left:10px;
font-size:16pt;
font-family:Arial, Helvetica, sans-serif;
}
.pw{
height:37px;
border:0;
color:#666;
width:236px;
margin:4px 28px;
background:url(http://keleyi.com/keleyi/phtml/divcss/21/images/password.png) no-repeat;
padding-left:10px;
font-size:16pt;
font-family:Arial, Helvetica, sans-serif;
}
.bn{width:330px; height:72px; background:url(http://keleyi.com/keleyi/phtml/divcss/21/images/enter.png) no-repeat; border:0; display:block; font-size:18px; color:#FFF; font-family:Arial, Helvetica, sans-serif; font-weight:bolder;}
.lg_foot{
height:80px;
width:330px;
padding: 6px 68px 0 68px;
}
</style>
</head>

<body class="b">
<div class="lg">
<form id="fm" action="${ctx}/user/showUser" method="POST">
<div class="lg_top"></div>
<div class="lg_main">
<div class="lg_m_1">

<input name="username" value="李渊" class="ur" />
<input name="password" type="password" value="123" class="pw" />
<input name="id" value="1" type="hidden"/>
</div>
</div>
<div class="lg_foot">
<input type="button" value="点这里登录" class="bn" onclick="login()"/>
</div>
</form>
</div>
<div style="text-align:center;">
<p><a href="http://keleyi.com/">首页</a> <a href="http://keleyi.com/keleyi/phtml/">特效库</a> <a href="http://keleyi.com/a/bjae/6asac24d.htm">原文</a></p>
</div>
</body>
<script type="text/javascript">
		$(function() {
			
		});

	function login(){
		$.ajax({
			  async : false,
			  cache : false,
			  type: 'POST',
			  url: "${ctx}/login/userLogin",
			  data: $("#fm").serialize(),
			  success : function(data){
				  if(data=="SUCCESS"){
					  $("#fm").submit();
				  }else{
					  alert(data);
				  }
			  },
			  error : function(){
				  alert("ajax请求失败");
			  }
			});
	}
</script>
</html>