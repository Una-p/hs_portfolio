<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정부 제공 정보 리스트</title>
<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 달력 -->
<link rel="stylesheet" href="/resources/demos/style.css">
<!-- 달력 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<!--
    << name 목록>>
    글번호 : ionfo_board_bno
    글제목 : info_title
    카테고리 : info_category
    URL : info_url
    작성자 : info_id
    마감일자 : info_end
    << 라디오 value >>
    창업교육
    멘토링
    행사
    -->
<style>
ul {
	list-style-type: none;
}

li {
	display: inline-block;
}
/* 달력크기 */
.ui-datepicker {
	width: 300px;
}

body {
	width: 1050px;
}

#div_info_list_main {
	width: 1000px;
	height: 900px;
	border: solid;
	margin: 20px
}

div, table {
	margin: 20px;
	font-size: 20px;
}

h1 {
	background-color: aquamarine;
}

.category {
	width: 310px;
}

table, td, tr, th {
	border: 1px solid;
	text-align: center;
}

table {
	width: 950px;
}

th {
	background-color: cornflowerblue;
}

#info_board_bno {
	width: 80px;
}

#info_title {
	width: 380px;
}

#info_category {
	width: 90px;
}

#info_id {
	width: 230px;
}

#info_end {
	width: 100px;
}
/* 모달창 시작 */
form>div {
	margin: 20px;
	font-size: 25px;
}

#div_info_register_main {
	width: 500px;
	border: solid;
	margin: 20px;
}

h1 {
	background-color: aquamarine;
}

.form-control {
	font-size: 20px;
}

#info_register_end {
	width: 6em;
}

#info_register_title, #info_register_url {
	width: 350px;
}

#info_register_category {
	width: 8em;
}
/* 모달창 끝 */
</style>

<body>
	<div id="div_info_list_main">
		<div>
			<h1>정보 리스트</h1>
		</div>
		<br>
		<div id="category">
			<input type="button" class="category btn btn-info" value="창업교육"
				onclick="location.href='edu'" /> <input type="button"
				class="category btn btn-default" value="멘토링"
				onclick="location.href='mentor'" /> <input type="button"
				class="category btn btn-default" value="행사"
				onclick="location.href='event'" />
		</div>
		<table>
			<tr>
				<th>글번호</th>
				<th>글제목</th>
				<th>카테고리</th>
				<th>정보제공</th>
				<th>마감일자</th>
			</tr>
			<c:forEach var="vo" items="${eduList }">
				<tr>
					<td id="info_board_bno">${vo.bno }</td>
					<td id="info_title"><a href="${vo.url }">${vo.title }</a></td>
					<td id="info_category">${vo.category }</td>
					<td id="info_id">${vo.user_id }</td>
					<td id="info_end"><fmt:formatDate value="${vo.end }"
							pattern="yyMMdd HH:mm:ss" /></td>
				</tr>
			</c:forEach>

		</table>
		<br>


		<ul class="page-links">
			<c:if test="${pageMaker.hasPrev }">
				<li><a href="${pageMaker.startPageNum -1 }">이전</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPageNum }"
				end="${pageMaker.endPageNum }" var="num">
				<li><a href="${num }">${num }</a></li>

			</c:forEach>
			<c:if test="${pageMaker.hasNext }">
				<li><a href="${pageMaker.endPageNum + 1 }">다음</a></li>
			</c:if>
		</ul>

		<form id="pageForm">
			<input type="hidden" name="page" value="${pageMaker.criteria.page }" />
		</form>
		<!-- <div>
			현재 페이지에서 이동 <input type="button" value="parkDex" name="parkDexBtn"
				onclick="location.href='http://parkDex.tistory.com'"> <br />
			<br /> 새 창에서 이동 <input type="button" value="parkDex2"
				name="parkDex2Btn"
				onclick="window.open('http://parkDex.tistory.com')">
		</div> -->
		<!-- 모달 시작 -->
		<div>
			<!-- 버튼 -->
			<button type="button" class="btn btn-primary btn-lg"
				data-toggle="modal" data-target="#myModal" id="btnReset">
				새글 작성</button>
			<!-- 모달 팝업 -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">×</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title" id="myModalLabel"></h4>
						</div>
						<div class="modal-body">
							<!-- 모달안에 들어갈 내용 -->
							<div id="div-main">
								<form action="edu" method="post">
									<div>
										<div>
											<h1>정부 정보 등록</h1>
										</div>
										<br>
										<div class="form-group form-inline" id="div_info_board_title">
											<label for="info_register_title" class="label label-default">제목</label>
											<br> <input type="text" class="form-control"
												id="info_register_title" name="title" placeholder="20글자">
										</div>
										<div class="form-group form-inline" id="div_info_category">
											<label for="info_category" class="label label-default">카테고리</label>
											<br> <label class="radio-inline"> <input
												type="radio" name="category" id="category_register_edu"
												value="창업교육"> 창업교육
											</label> <label class="radio-inline"> <input type="radio"
												name="category" id="category_register_mentor" value="멘토링">
												멘토링
											</label> <label class="radio-inline"> <input type="radio"
												name="category" id="category_register_event" value="행사">
												행사
											</label>
										</div>
										<div class="form-group form-inline" id="div_info_url">
											<label for="info_register_url" class="label label-default">URL</label>
											<br> <input type="url" class="form-control"
												id="info_register_url" name="url"
												placeholder="http:// 반드시 넣을것!!">
										</div>
										<div class="form-group form-inline" id="div_info_id">
											<label for="info_register_id" class="label label-default">작성자</label>
											<br> <input type="text" class="form-control"
												id="info_register_id" name="user_id" placeholder="12글자">
										</div>
										<!-- 마감일자의 저장방식 << 1) 날짜선택 : info_end=20161201 >> << 2) 상시모집 : info_end_every=상시모집 >> -->
										<div class="form-group form-inline" id="div_info_end">
											<label for="info_end" class="label label-default">마감일자</label>
											<br> <input type="text" class="form-control datepicker"
												id="info_register_end" name="iend"> <br> <input
												type="checkbox" id="info_end_every" value="상시모집"
												onclick="checkDisable(this.form)"> <label
												for="info_end_every">상시모집</label>
										</div>
										<br> <input type="submit" class="btn btn-primary btn-lg"
											value="등록 하기">
									</div>
								</form>
							</div>
						</div>
						<!-- 모달 내용 끝 -->
					</div>
				</div>
			</div>
		</div>
		<!-- <script>
			/* 달력 */
			$(document).ready(function() {
				/* $("#info_register_end").datepicker(
						{
							dateFormat : 'yymmdd',
							monthNamesShort : [ '1월', '2월', '3월', '4월',
									'5월', '6월', '7월', '8월', '9월',
									'10월', '11월', '12월' ],
							dayNamesMin : [ '일', '월', '화', '수', '목',
									'금', '토' ],
							changeMonth : true, //월변경가능
							changeYear : true, //년변경가능
							showMonthAfterYear : true
						//년 뒤에 월 표시
						}); */
				/* 폼 초기화 */

			});

			/* 상시모집 체크박스 */
		</script> -->
	</div>

	<!-- <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
	<script>
		function checkDisable(frm1) {
			if (frm1.info_end_every.checked == true) {
				frm1.info_end.disabled = true;
			} else {
				frm1.info_end.disabled = false;
			}
		}
		$(document).ready(function() {
			var frm = $("#pageForm");

			$(".page-links li a").click(function() {
				event.preventDefault();
				var targetPage = $(this).attr("href");
				frm.find("[name='page']").val(targetPage);
				frm.attr("action", "edu");
				frm.attr("method", "get");
				frm.submit();
			});
			$("#btnReset").click(function() {
				$("form").each(function() {
					this.reset();
				});
			});

		});
	</script>


</body>
</html>