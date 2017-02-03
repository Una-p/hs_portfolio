<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="UTF-8">
<title>Let's Team! My page</title>
 <!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 자바스크립트 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>



@media ( min-width : 768px) {
	.content {
		padding: 40px;
		width: 650px;
	}
}

@media ( max-width : 767px) {
	.content {
		padding: 20px;
	}
}
#main-section {
	min-width: 400px;
	display: flex;
	flex-direction: column;
	font:bold;
}

#mypage_section1 {
	
	width: 100%;
	height: 30rem;
	margin-bottom: 1rem;
}
   
#mypage_section2 {
	
 	width: 100%; 
}

.mylabel {
	font-size: 3rem;
}

#section1_button {
	float: right;
}



.table_mypage_td1 {
	/* width: 12rem; */
}

.table_board_list {
	table-layout: fixed;
}

.table_mypage_board {
/* 	width: 17rem; */
	text-align: center;
}

.table_mypage_title {
	/* width: 50rem; */
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	text-align: center;
}

.table_mypage_bno {
	/* width: 7rem; */
}

.table_mypage_date {
	/* width: 12rem; */
	text-align: center;
}

.table_mypage_count {
	/* width: 8rem; */
}
#myinfo{
	border: 1px solid darkgray;
}
</style>

</head>
<body>
<%-- <jsp:include page="../signup/include.jsp" flush="false"></jsp:include> --%>

<%-- <a href="mypage?uid=${login_id}">내 정보 수정</a>
<a href="my-board?uid=${login_id}">작성한 글 목록</a>
 --%>
<div id="container">
		<jsp:include page="../signup/include.jsp" flush="false"></jsp:include>
		<div id="main-index">
			<section class="content">
				<header>
					<h1>My Page</h1>
				</header>
				<div id="main_section">
					<div id="mypage_section1" >
						<h1>내정보</h1>
						<br/><br/><br/>
						<table id="myinfo" class="table table-borerd">
							<tr>
							<td class="table_mypage_td1">ID</td>
							<td>${user.uid}</td>
							</tr>
							<tr>
							<td class="table_mypage_td1">이름</td>
							<td>${user.name }</td>
							</tr>
							<tr>
							<td class="table_mypage_td1">이메일</td>
							<td>${user.email }</td>
							</tr>
							<tr>
							<td class="table_mypage_td1">카톡</td>
							<td>${user.kkoid }</td>
							</tr>
							<tr>
							<td class="table_mypage_td1">주소</td>
							<td>${user.address }</td>
							</tr>
						</table>
						<div id="section1_button">
				    <!-- <input type="button" class="btn btn-primary btn-lg" value="수정하기"> -->
							<a class="btn btn-default btn-lg" data-toggle="modal" data-target="#myinfoModal">수정</a>
						</div>
					</div>
		
					<div id="mypage_section2">
					<h1>내가 쓴 글</h1>
					<br>
					<br>
					<br>
					<table class="table table_board_list">
					<tr>
					<th class="table_mypage_bno">글번호</th>
					<th class="table_mypage_board">게시판</th>
					<th class="table_mypage_title">제목</th>
					<th class="table_mypage_date">등록일</th>
					<th class="table_mypage_count">조회수</th>
					</tr>
				
					
					<c:forEach var="board" items="${boardVO }">
					<tr>
					<td class="table_mypage_bno">${board.bno }</td>
					<td class="table_mypage_board">${board.bk }</td>
					<td class="table_mypage_title">${board.title }</td>
					<td class="table_mypage_date">${board.regdate }</td>
					<td class="table_mypage_count">${board.hits }</td>
					</tr>
					</c:forEach>
				
					</table>페이지 링크 하든가 </div>
				</div><!-- end main-section -->

				<footer>footer</footer>


			</section>
			
		</div>
		<aside>날씨</aside>
	</div> <!-- end container -->
	
	<!-- 내정보 수정 모달 팝업 -->
	<div class="modal fade" id="myinfoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel">내정보 수정</h4>
	      </div>
	      <div class="modal-body">
		    
		    <form id="user_info">
		    
            <label for="user_id" class="label label-default">아이디</label>
            <input type="text" class="form-control user_register" id="user_id" name="uid" value="${user.uid }" placeholder="아이디" readonly>
            
		    
            <label for="user_pw" class="label label-default">비밀번호</label>
            <input type="password" class="form-control user_register" id="user_pw" name="pw" value="${user.pw }" placeholder="비밀번호 입력">
            
            
            
            <label for="user_email" class="label label-default">이메일</label>
            <input type="email" class="form-control user_register" id="user_email" name="email"
                value="${user.email }" placeholder="이메일 입력">
            
            
            
            <label for="user_name" class="label label-default">이름</label>
            <input type="text" class="form-control user_register" id="user_name" name="name" 
                value="${user.name }" placeholder="이름" readonly>
            
            
            
            <label for="user_nickname" class="label label-default">닉네임</label>
            <input type="text" class="form-control user_register" id="user_nickname" name="nickname" 
                value="${user.nickname }" placeholder="닉네임을 입력하시오">
            
            
            <div class="form-group form-inline" id="div_team_category">
            <label for="info_category" class="label label-default">성별</label> <br/>	
            <div class="input-group user_gender">
            <span class="input-group-addon">
            <input type="radio" name="user_gender" value="남" aria-label="" disabled>
            </span>
            <input type="text" class="form-control" aria-label="" value="남" disabled> </div>
            <div class="input-group user_gender">
            <span class="input-group-addon">
            <input type="radio" name="user_gender" value="여" aria-label="" disabled>
            </span>
            <input type="text" class="form-control" aria-label="" value="여" disabled> </div>
            </div>
            
            
            <label class="label label-default" id="label-team-area">주소</label> <br/>
            <select name="address">
                                <option value="서울특별시">서울시</option>
                                <option value="부산광역시">부산시</option>
                                <option value="대구광역시">대구시</option>
                                <option value="인천광역시">인천시</option>
                                <option value="광주광역시">광주시</option>
                                <option value="대전광역시">대전시</option>
                                <option value="울산광역시">울산시</option>
                                <option value="제주특별자치도">제주도</option>
                                <option value="경기도">경기도</option>
                                <optgroup label="충청도">
                                <option value="충청북도">충청북도</option>
                                <option value="충청남도">충청남도</option>
                                </optgroup>
                                <optgroup label="전라도">
                                <option value="전라북도">충청북도</option>
                                <option value="전라남도">충청남도</option>
                                </optgroup>
                                <optgroup label="경상도">
                                <option value="경상북도">경상북도</option>
                                <option value="경상남도">경상남도</option>
                                </optgroup>
                                <option value="해외">해외</option>
            </select> <br>
            
            
            
            <label for="user_number" class="label label-default">전화번호</label>
            <input type="tel" class="form-control user_register" id="user_number" name="phone"
                value="${user.phone }" placeholder="전화번호를 입력하시오">
            
            
            
            <label for="user_kkoid" class="label label-default">카카오톡</label>
            <input type="text" class="form-control user_register" id="user_kkoid" name="kkoid"
                value="${user.kkoid }" placeholder="카톡아이디 입력">
            
            </form>
		    
	      </div> <!--모달 콘텐츠-->
	      <div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		<button id="user_update" type="button" class="btn btn-primary">수정완료</button>
	      </div>
	    </div>
	  </div>
	</div> <!--end modal-->
	
	
<script>
$(document).ready(function() {
	if('${update_result}' == 'success') {
		alert('내 정보 수정 성공!');
	} else if('${update_result}' == 'fail') {
		alert('내 정보 수정 실패ㅠㅠ');
	}
	
	var user = $('#user_info');
	
	$('#user_update').click(function () {
		user.attr('action', 'update');
		user.attr('method', 'post');
		user.submit();
	});
	
});

</script>



</body>
</html>