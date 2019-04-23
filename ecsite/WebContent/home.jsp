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
<title>Home画面</title>

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

			}

		table{
			text-align:center;
			margin:0 auto;
			}

		/*=============ID LAYOUT==============*/

		/* 吹き出し本体 */
.balloon{

  position: relative;
  margin: 0 auto;
  padding: 15px;
  background-color: red;
  width:70%;
  border-radius: 10px;
  font-size: 40px;
  box-shadow: 6px 6px 0px 0px black;
  font-family:impact;         /* 吹き出し本体の影 */
}
/* 三角アイコン */
.balloon::before{
  content: '';
  position: absolute;
  display: block;
  width: 0;
  height: 0;
  left: 37%;
  bottom: -18px;
  border-top: 15px solid black;
  border-right: 15px solid transparent;
  border-left: 15px solid transparent;
}
/* 三角アイコンの影 */
.balloon::after{
  content: '';
  position: absolute;
  display: block;
  width: 0;
  height: 0;
  left: 37%;
  bottom: -15px;
  border-top: 15px solid red;
  border-right: 15px solid transparent;
  border-left: 15px solid transparent;
}

		#header{
			width:100%;
			height:80px;
			background-color:black;
			}

		#main{

			width:100%;
			min-height:700px;
			text-align:center;

			background-image:url("images/no1.jpg");
			background-size: auto 100%;
			 background-repeat:no-repeat;
			 background-position:center;
			}

		#footer{
			width:100%;
			height:80px;
			background-color:black;
			clear:both;
			bottom:0;
			}

		.don{
		position:absolute;
			top:90%;
			left:45%;
		}

		#text-center{
			position:absolute;
			top:70%;
			left:48%;
			}

</style>
</head>
<body >
	<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="main">
		<div class="balloon">
		Bobozonへようこそ。全て買っていけ。
		</div>

		<div id="text-center">

			<s:form action="HomeAction">
				<s:submit value="商品購入"/>
			</s:form>
				<div class="don">
		<s:if test="#session.id !=null" >

			<s:form action="LogoutAction">
				<s:submit value="ログアウト"/>
			</s:form>
		</s:if>
		</div>


		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>

</body>
</html>