<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>管理者画面</title>

<style type="text/css">
/* ===========TAG LAYOUT============= */

		body{
			margin:0;
			padding:0;
			line-height:1.6;
			letter-spacing:1px;
			font-family:Verdana,Helvetica,sans-serif;
			font-size:12px;
			color:#333;
			background:#fff;
			}

		table{
			text-align:center;
			margin:0 auto;
			}

		/*=============ID LAYOUT==============*/

		#top{
			width:780px;
			margin:30px auto;
			border:1px solid #333;
			}

		#header{
			width:100%;
			height:80px;
			background-color:black;
			}

		#main{
			width:100%;
			height:500px;
			text-align:center;
			}

		#footer{
			width:100%;
			height:80px;
			background-color:black;
			clear:both;
			}

		#leftbox{
			width:50%;
			height:300px;
			text-align:left;
			background-color:#A9F5F2;
			float:left;
			}

		#syouhin{
			font-size:20px;
			text-align:center;
			}

		#rightbox{
			width:50%;
			height:300px;
			text-align:right;
			background-color:#F6CEF5;
			float:left;
			}

		.btn10 {
   			 background-color: #3169d1;
   			 color: #fff !important;
   			 margin: 0 0 10px 0;
   			 box-shadow: 0 5px #3B4BA8;
   			 font-size:30px;
		}
		.btn10:hover {
   			 -ms-transform: translateY(5px);
  			  -webkit-transform: translateY(5px);
  			  transform: translateY(5px);
  			  border-bottom: none;
  			  box-shadow: none;
}


</style>
</head>
<body>
	<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
		<p>管理者画面</p>
		</div>

		<div id="leftbox">
			<div id="syouhin">
			<p>商品</p>
			</div>
			<br>
			<br>
			<br>
			<s:form action="ItemCreateAction">
				<s:submit value="新規登録"/>
			</s:form>
			<br>
			<br>
			<br>
			<s:form action="ItemListAction">
				<s:submit value="一覧"/>
			</s:form>
		</div>

		<div id="rightbox">
			<div id="syouhin">
			<p>ユーザー</p>
			</div>
			<br>
			<br>
			<br>
			<s:form action="UserCreate2Action">
				<s:submit value="新規登録"/>
			</s:form>
			<br>
			<br>
			<br>
			<s:form action="UserListAction">
				<s:submit value="一覧"/>
			</s:form>
		</div>

		<br>
		<br>
		<a href='home.jsp' class="btn btn10">ホームへ戻る</a>


			<s:if test="#session.id !=null">
				<p>ログアウトする場合は
				<a href='<s:url action="LogoutAction"/>'>こちら</a>
			</p>
			</s:if>

	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>

</body>
</html>