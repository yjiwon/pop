<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
	<title>Admin Modify Page</title>


<script src="/resources/jquery/jquery-3.3.1.min.js"></script>

<link rel="stylesheet" href="/resources/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="/resources/bootstrap/bootstrap-theme.min.css">
<script src="/resources/bootstrap/bootstrap.min.js"></script>



<style>
	body { font-family:'맑은 고딕', verdana; padding:0; margin:0; }
	ul { padding:0; margin:0; list-style:none;  }

	div#root { width:90%; margin:0 auto; }

	header#header { font-size:60px; padding:20px 0; }
	header#header h1 a { color:#000; font-weight:bold; }

	nav#nav { padding:10px; text-align:right; }
	nav#nav ul li { display:inline-block; margin-left:10px; }

 		section#container { padding:20px 0; border-top:2px solid #eee; border-bottom:2px solid #eee; }
	section#container::after { content:""; display:block; clear:both; }
	aside { float:left; width:200px; }
	div#container_box { float:right; width:calc(100% - 200px - 20px); }

	aside ul li { text-align:center; margin-bottom:10px; }
	aside ul li a { display:block; width:100%; padding:10px 0;}
	aside ul li a:hover { background:#eee; }

	footer#footer { background:#f9f9f9; padding:20px; }
	footer#footer ul li { display:inline-block; margin-right:10px; }
</style>


<style>
.inputArea { margin:10px 0; }
select { width:100px; }
label { display:inline-block; width:70px; padding:5px; }
label[for='gdsDes'] { display:block; }
input { width:150px; }
textarea#gdsDes { width:400px; height:180px; }
.select_img img { width:500px; margin:20px 0; }
</style>

</head>
<body>
<div id="root">
	<header id="header">
		<div id="header_box">
			<%@ include file="include/header.jsp" %>
		</div>
	</header>

	<nav id="nav">
		<div id="nav_box">
			<%@ include file="include/nav.jsp" %>
		</div>
	</nav>

	<section id="container">
		<aside>
			<%@ include file="include/aside.jsp" %>
		</aside>

		<div id="container_box">
			<h2>상품 수정</h2>

			<form role="form" method="post" autocomplete="off" enctype="multipart/form-data">

			<input type="hidden" name="gdsId" value="${goods.gdsId}" />


                <div class="inputArea">
                    <label>카테고리</label>
                    <select name="gdsCat" value="${goods.gdsCat}">
                        <option value="popcorn">팝콘</option>
                        <option value="drink">음료</option>
                        <option value="hotdog">핫도그</option>
                        <option value="snack">스낵</option>
                    <select>

                <div class="inputArea">
                    <label for="gdsName">상품명</label>
                    <input type="text" id="gdsName" name="gdsName" value="${goods.gdsName}" />
                    ${goods.gdsName}
                </div>

                <div class="inputArea">
                    <label for="gdsPrice">상품가격</label>
                    <input type="text" id="gdsPrice" name="gdsPrice" value="${goods.gdsPrice}" />
                    ${goods.gdsPrice}
                </div>

                <div class="inputArea">
                    <label for="gdsStock">상품수량</label>
                    <input type="text" id="gdsStock" name="gdsStock" value="${goods.gdsStock}" />
                    ${goods.gdsStock}
                </div>

                <div class="inputArea">
                    <label for="gdsDes">상품소개</label>
                    <textarea rows="5" cols="50" id="gdsDes" name="gdsDes" value="${goods.gdsDes}"> ${goods.gdsDes} </textarea>
                </div>

                    <tr>
                        <td><input type="file"  value="${goods.gdsImage}" name="attachFile" style="font-size:1.0em;"> ${goods.gdsImage}</td>
                    </tr>

                <div class="inputArea">
                    <button type="submit" id="update_Btn" class="btn btn-primary">수정</button>
                    <button type="button" id="back_Btn" class="btn btn-primary">취소</button>

                    <script>
                            $("#back_Btn").click(function(){
                                 //history.back();
                            location.href = "/admin/view?n=" + ${goods.gdsId};
                             });
                    </script>
                </div>
            </form>
           </div>
        </section>
                <footer id="footer">
		            <div id="footer_box">
			<%@ include file="include/footer.jsp" %>
		</div>
			</footer>

        </div>

        <script>

    </body>
</html>