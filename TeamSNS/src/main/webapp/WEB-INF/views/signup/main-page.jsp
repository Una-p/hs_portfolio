<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="/error/viewErrorMessage.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">

	<title>Let's Team!</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="../resources/realcss/sidemenu.css" />
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	
	<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,600,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="../resources/realcss/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="../resources/realcss/style.css"> <!-- Resource style -->
	<script src="../resources/js/modernizr.js"></script> <!-- Modernizr -->
	
	<style>
	#container {
		display: flex;
		flex-direction: row;
	}
	
	@media ( max-width : 768px) {
		#container {
			flex-direction: column;
			
		}
	}
	
	
	@media (min-width: 425px) {
		#cd-lateral-nav {
			flex-basis: 220px;
			flex-shrink: 0;
		}
		.main_table_id {
			font-size:12px;
		}
		.main_table_date{
			font-size:12px;
		}
	}
	
	aside {
		flex-basis: 200px;
		flex-shrink: 0;
	}
	
	.content {
		display: flex;
		flex-direction: column;
	}
	
	@media ( min-width : 768px) {
		.content {
			min-width: 650px;
			max-width: 768px;
		}
	}
	
	#car {
		width: 100%;
	} 
	@media (max-width: 425px) {
		#car {
			display: none;
		}
	}
	
	#main-section {
		padding: 30px;
		background-color:;
	}
	
	@media ( max-width : 768px) {
		#main-section {
			padding: 20px;
			flex-direction: column;
		}
	}
	
	#section1, #section2, #section3, #section4 {
		padding: 10px 15px;
		width: 50%;
		height: auto;
		display: inline-block;
		margin: -2px;
	}
	
	@media ( max-width : 767px) {
		#section1, #section2, #section3, #section4 {
			width: 100%;
		}
	}
	
	.main_table {
		font-size: 0.9rem;
		table-layout: fixed;
		width: 100%;
		height: auto;
		border-left: 3px solid #2273AA;
		background-color: white;
	}
	
	.main_table_name {
		white-space: nowrap;
		text-overflow: ellipsis;
		overflow: hidden;
	}
	
	.main_table_id {
		width: 70%;
		white-space: nowrap;
		text-overflow: ellipsis;
		overflow: hidden;
	}
	
	.main_table_date {
		width: 30%;
		white-space: nowrap;
		text-overflow: ellipsis;
		overflow: hidden;
	}
	
	.main_table_caption {
		background-color: #1F2D42;
		font-size: 1rem;
	}
	
	h4 {
		color: #1F2D42;
		font-size: 1rem;
	}
	
	i {
		color: #1F2D42;
	}
	 
	#mainLogo {
		cursor: pointer !important;
	}
	
	@media (max-width: 768px) {
		#mainLogo {
			display: none;
		}
	}
	
	footer {
		border-top: 1px solid gray;
		margin: 
		
	}
	.main_header {
		display: flex;
		flex-direction: row;
	}
	.section_header {
		padding-left: 5px;
	}
	</style>
</head>
<body>

	<div id="container">
		
		<header id="mainHeader">
		
			<nav id="cd-top-nav">
				<ul>
					<li><a href="#0">로그인</a></li>
	
				</ul>
			</nav>
			<a id="cd-menu-trigger" href="#0"><span class="cd-menu-text">Menu</span><span class="cd-menu-icon"></span></a>
		</header>
		<nav id="cd-lateral-nav">
		<img  id="mainLogo" src="../resources/img/Logo_white.svg">
		<ul class="cd-navigation">
			<li class="item-has-children">
				<a href="#0">project</a>
				<ul class="sub-menu">
					<li id="project-list"><a href="#0" >프로젝트 리스트</a></li>
					<li id="project-register"><a href="#0">프로젝트 등록</a></li>
					<li id="project-info"><a href="#0">프로젝트 관리</a></li>
				</ul>
			</li> <!-- item-has-children -->

			<li class="item-has-children">
				<a href="#0">information</a>
				<ul class="sub-menu">
					<li id="info_board_edu"><a href="#0">창업교육</a></li>
					<li id="info_board_mentor"><a href="#0">멘토링</a></li>
					<li id="info_board_event"><a href="#0">행사</a></li>
				</ul>
			</li> <!-- item-has-children -->

			<li class="item-has-children">
				<a href="#0">community</a>
				<ul class="sub-menu">
					<li><a  id="tipAndTech" href="#0">tip & tech</a></li>
					<li><a id= "qaBoard" href="#0">Q & A</a></li>
					<li><a id="freeBoard" href="#0">자유게시판</a></li>
					<!-- <li><a href="#0">Paris</a></li> -->
				</ul>
			</li> <!-- item-has-children -->
		</ul> <!-- cd-navigation -->

		<ul class="cd-navigation cd-single-item-wrapper">
			<li><a id="signIn" href="#0" data-toggle="modal" data-target="#loginModal">로그인</a></li>
			<li><a id="signUp" data-toggle="modal" data-target="#signupModal" href="#0">회원가입</a></li>
			<li><a id="logout" href="#0">로그아웃</a></li>
			<li><a id="myPage" href="#0">마이페이지</a></li>
		</ul> <!-- cd-single-item-wrapper -->

		<ul class="cd-navigation cd-single-item-wrapper">
			<!-- <li><a class="current" href="#0">Journal</a></li> -->
			<li><a href="#0">Journal</a></li>
			<li><a href="#0">FAQ</a></li>
			<!-- <li><a href="#0">Terms &amp; Conditions</a></li>
			<li><a href="#0">Careers</a></li>
			<li><a href="#0">Students</a></li> -->
		</ul> <!-- cd-single-item-wrapper -->

		<div class="cd-navigation socials">
			<a class="cd-twitter cd-img-replace" href="#0">Twitter</a>
			<a class="cd-github cd-img-replace" href="#0">Git Hub</a>
			<a class="cd-facebook cd-img-replace" href="#0">Facebook</a>
			<a class="cd-google cd-img-replace" href="#0">Google Plus</a>
		</div> <!-- socials -->
	</nav>

		<div id="main-index">
			<section class="content">
				<header id="car">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<!-- Indicators -->
<!-- 						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol> -->

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="../resources/realcss/carousel01.svg" alt="...">
								<div class="carousel-caption"></div>
							</div>
							<div class="item">
								<img src="../resources/realcss/carousel02.svg" alt="...">
								<div class="carousel-caption"></div>
							</div>
							<div class="item">
								<img src="../resources/realcss/carousel03.svg" alt="...">
								<div class="carousel-caption"></div>
							</div>
						</div>

						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic"
							role="button" data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"
							aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>
					</div>
				</header>
				<!-- end carousel -->
				<!-- 메인섹션 시작 테이블 4개  -->
				<div id="main-section">
					<div id="section1">
						<!-- <div class="label label-info main_table_caption">프로젝트</div> -->
						<div class="main_header">
							<i class="material-icons" style="font-size: 1.7rem;">subject</i>
							<div class="section_header">프로젝트 리스트</div>
						</div>
						<table class="table main_table">
							<c:forEach var="vo" items="${projectList }">
							<tr>
								<%-- <td class="main_table_name"><a href="">${vo.pname }</a></td> --%>
								<td class="main_table_id">${vo.pname }</td>
								<td class="main_table_date">${vo.district }</td>
							</tr>
							</c:forEach>
						</table>
					</div>
					<div id="section2">
						<!-- <div class="label label-info main_table_caption">정보</div> -->
						<div class="main_header">
							<i class="material-icons" style="font-size: 1.7rem;">widgets</i>
							<div class="section_header">Tip & Tech</div>
						</div>
						<table class="table main_table">
						<c:forEach var="vo" items="${ttList }">
							<tr>
								<!-- <td class="main_table_name"><a href="">jasdkfjklasjfklsajflsaasdfsafafafsafsafsfsafsadasfdfsafsafsaf</a></td> -->
								<td class="main_table_id">${vo.title }</td>
								<td class="main_table_date">${vo.nickname }</td>
							</tr>
						</c:forEach>
						</table>
					</div>
					<div id="section3">
						<!-- <div class="label label-info main_table_caption">커뮤니티</div> -->
						<div class="main_header">
							<i class="material-icons" style="font-size: 1.7rem;">forum</i>
							<div class="section_header"> Q & A</div>
						</div>
						<table class="table main_table">
						<c:forEach var="vo" items="${qaList }">
							<tr>
								<!-- <td class="main_table_name"><a href="">jasdkfjklasjfklsajflsaasdfsafafafsafsafsfsafsadasfdfsafsafsaf</a></td> -->
								<td class="main_table_id">${vo.title }</td>
								<td class="main_table_date">${vo.nickname }</td>
							</tr>
						</c:forEach>	
						</table>
					</div>
					<div id="section4">
						<!-- <div class="label label-info main_table_caption">몰라</div> -->
						<div class="main_header">
							<i class="material-icons" style="font-size: 1.7rem;">info</i> 
							<div class="section_header">정보 게시판</div>
						</div>
						<table class="table main_table">
							<c:forEach var="vo" items="${infoList }">
							<tr>
								<!-- <td class="main_table_name"><a href="">jasdkfjklasjfklsajflsaasdfsafafafsafsafsfsafsadasfdfsafsafsaf</a></td> -->
								<td class="main_table_id">${vo.title }</td>
								<fmt:formatDate value="${vo.regdate }" pattern="yyyy.MM.dd" var="regdate"/>
								<td class="main_table_date">${regdate }</td>
							</tr>
							</c:forEach>
						</table>
					</div>
				</div>
				<!-- 메인섹션 테이블 4개 끝 -->
				<footer> footer </footer>
			</section>
		</div>
		<!-- end main-index -->
		<aside>날씨</aside>

	</div>
	<!-- end container -->
    
    <!-- 로그인 모달 팝업 -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel">Login</h4>
	      </div>
	      <div class="modal-body">
		        <form class="form-horizontal" action="/teamsns/signup/login" method="post">
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">ID</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="uid" placeholder="ID">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-10">
                      <input type="password" class="form-control" name="pw" placeholder="Password">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Remember me
                        </label>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <input type="submit" class="btn btn-default" value="Sign in">
                    </div>
                  </div>
            </form>
	      </div>
	      <div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		
	      </div>
	    </div>
	  </div>
	</div>	
	
	<!-- 회원가입 모달 팝업 -->
	<div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel">Login</h4>
	      </div>
	      <div class="modal-body">
		        <form id="register" class="form-horizontal" action="signup" method="post">
                  <div id ="a" class="form-group has-feedback">
                      <label for="inputPassword3" class="col-sm-2 control-label">ID</label>
                          <div class="col-sm-10">
                              <input type="text" class="form-control" id="uid" name="uid" placeholder="Id" onkeydown="fn_press_han(this);">
                              <span id="successC" class="" aria-hidden="true"></span>
                              <span id="failC" class="" aria-hidden="true"></span>
	  						  <span id="successI" class="sr-only">사용 할 수 있는 아이디입니다.</span>
	  						  <span id="failI" class="sr-only">사용 할 수 없는 아이디입니다.</span>
                          </div>
                      <span id="inputSuccess2Status" class="help-block sr-only">성공</span>
                 </div>
                  <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-10">
                      <input type="password" class="form-control" id="pw" name="pw" placeholder="Password">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Name</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                    </div>
                  </div>
                  <div id="b" class="form-group has-feedback">
                      <label for="inputPassword2" class="col-sm-2 control-label">NickName</label>
                          <div class="col-sm-10">
                              <input type="text" class="form-control" id="nickName" name="nickname" placeholder="NickName">
                              <span id="successD" class="" aria-hidden="true"></span>
                              <span id="failD" class="" aria-hidden="true"></span>
                              <span id="successN" class="sr-only">사용 할 수 있는 닉네임입니다.</span>
	  						  <span id="failN" class="sr-only">사용 할 수 없는 닉네임입니다.</span>
                          </div>
                 </div>
                  
                  <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">phone</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone" maxlength="13">
                    </div>
                  </div>
                  <div class="form-group has-feedback">
                      <label for="inputPassword3" class="col-sm-2 control-label">Kakaoid</label>
                          <div class="col-sm-10">
                              <input type="text" class="form-control" id="kkoid" name="kkoid" placeholder="KakaoId">
                              
                          </div>
                      <span id="inputSuccess2Status" class="sr-only">(success)</span>
                 </div>
                  <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-10">
                      <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">gender</label>
                    <div class="col-sm-10">
                      <label class="radio-inline">
                      <input type="radio" name="gender" id="M" value="0"> M
                    </label>
                    <label class="radio-inline">
                      <input type="radio" name="gender" id="W" value="1"> W
                    </label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Birth</label>
                    <div class="col-sm-10">
                      <input type="date" class="form-control" id="birth" name="birth" placeholder="Password">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Adress</label>
                    <div class="col-sm-10">
                      <select id="address" name="address" class="form-control">
                          <option>서울특별시</option>
                          <option>부산광역시</option>
                          <option>대구광역시</option>
                          <option>인천광역시</option>
                          <option>광주광역시</option>
                          <option>대전광역시</option>
                          <option>울산광역시</option>
                          <option>세종특별자치시</option>
                          <option>경기도</option>
                          <option>강원도</option>
                          <option>충청북도</option>
                          <option>충청남도</option>
                          <option>전라북도</option>
                          <option>전라남도</option>
                          <option>경상북도</option>
                          <option>경상남도</option>
                          <option>경상북도</option>
                          <option>제주특별자치도</option>
                          <option>해외</option>
                     </select>
                    </div>
                  </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  
                </div>
              </div>
            </form>
	      </div> <!--end body-->
	      <div class="modal-footer">
	      <button type="button" class="btn btn-primary" id="signup">Sign Up</button>
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		
	      </div>
	    </div>
	  </div>
	</div>
	
	<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ자바스크립트ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
	<script src="../resources/js/main.js"></script> <!-- Resource jQuery -->
	<script>
		
		$(document).ready(function() {
			if ('${insert_result}' == 'success') {
				alert('신규 회원 가입 성공!');
			} else if ('${insert_result}' == 'fail') {
				alert('신규 회원 가입 실패!');
			}

			if ('${success}' == 'success') {
				$('#signIn').hide();
				$('#signUp').hide();
			} else {
				$('#logout').hide();
				$('#myPage').hide();
				$('#project-info').hide();
				$('#project-register').hide();
			}

			$('#logout').click(function() {
				alert('${login_id}님 로그아웃 되셧습니다!');
				location = '/teamsns/signup/logout';
			});
			$('#myPage').click(function() {
				location = '/teamsns/user/mypage';
			});

			$('#project-list').click(function() {
				location = '/teamsns/project/projectList';
			});

			$('#project-info').click(function() {
				location = '/teamsns/project/projectInfo';
			});

			$('#project-register').click(function() {
				location = '/teamsns/register/project-register';
			});

			$('#tipAndTech').click(function() {
				location = '/teamsns/board/tipAndTech';
			});
			$('#info_board_edu').click(function() {
				location = '/teamsns/info_board/edu';
			});
			$('#info_board_event').click(function() {
				location = '/teamsns/info_board/event';
			});
			$('#info_board_mentor').click(function() {
				location = '/teamsns/info_board/mentor';
			});
			$('#qaBoard').click(function() {
				location = '/teamsns/qaboard/qaBoard';
			});	
			$('#freeBoard').click(function() {
				location = '/teamsns/freeboard/freeBoard';
			});
			$('#mainLogo').click(function() {
				location = '/teamsns/signup/main-page';
			});
			
			$("#start, #end").datepicker(
					{
						dateFormat : 'yymmdd',
						monthNamesShort : [ '1월', '2월', '3월',
								'4월', '5월', '6월', '7월', '8월',
								'9월', '10월', '11월', '12월' ],
						dayNamesMin : [ '일', '월', '화', '수',
								'목', '금', '토' ],
						changeMonth : true, //월변경가능
						changeYear : true, //년변경가능
						showMonthAfterYear : true
					//년 뒤에 월 표시
					});
			/* 글자수 체크1 */
			$('#pname, .part').keyup(function() {
								if ($(this).val().length > $(this).attr('maxlength')) {
									alert('제한길이 초과');
									$(this).val($(this).val().substr(0,$(this).attr('maxlength')));
								}
							});
				
			/* 회원가입 JS  */
			$('#uid').change(function(){
				
		    		var uid = $("#uid").val();
		    		console.log(uid);
		    		$.ajax({
		        		type:'post',
		        	    url: '/teamsns/signup/selectId',
		        	    headers: {
		    				'Content-Type': 'application/json',
		    				'X-Http-Method-Override': 'POST'
		    			},
		    			data: JSON.stringify({
		    				uid: uid
		    			}),
		    			success: function(result){
		    				if(result == 1){
		    					console.log(result);
		    					$('#a').addClass("has-error");
		    					$('#a').removeClass("has-success");
		    					$('#failI').removeClass("sr-only");
		    					$('#failI').addClass("help-block");
		    					$('#successI').addClass("sr-only");
		    					$('#failC').addClass("glyphicon glyphicon-remove form-control-feedback");
		    					$('#successC').removeClass("glyphicon glyphicon-ok form-control-feedback");
		    				} else{
		    					$('#a').addClass("has-success");
		    					$('#a').removeClass("has-error");
		    					$('#successI').removeClass("sr-only");
		    					$('#successI').addClass("help-block");
		    					$('#failI').addClass("sr-only");
		    					$('#failC').removeClass("glyphicon glyphicon-remove form-control-feedback");
		    					$('#successC').addClass("glyphicon glyphicon-ok form-control-feedback");
		    				}
		    			}
		        	}); /* end ajax */
		        	
		    	}); /*  end uid */
		    	
				$('#nickName').change(function(){
		    		
		    		var nickname = $("#nickName").val();
		    		console.log(nickName);
		    		$.ajax({
		        		type:'post',
		        	    url: '/teamsns/signup/selectNick',
		        	    headers: {
		    				'Content-Type': 'application/json',
		    				'X-Http-Method-Override': 'POST'
		    			},
		    			data: JSON.stringify({
		    				nickname: nickname
		    			}),
		    			success: function(result){
		    				if(result == 1){
		    					console.log(result);
		    					$('#b').addClass("has-error");
		    					$('#b').removeClass("has-success");
		    					$('#failN').removeClass("sr-only");
		    					$('#failN').addClass("help-block");
		    					$('#successN').addClass("sr-only");
		    					$('#failD').addClass("glyphicon glyphicon-remove form-control-feedback");
		    					$('#successD').removeClass("glyphicon glyphicon-ok form-control-feedback");
		    				} else{
		    					$('#b').addClass("has-success");
		    					$('#b').removeClass("has-error");
		    					$('#successN').removeClass("sr-only");
		    					$('#successN').addClass("help-block");
		    					$('#failN').addClass("sr-only");
		    					$('#failD').removeClass("glyphicon glyphicon-remove form-control-feedback");
		    					$('#successD').addClass("glyphicon glyphicon-ok form-control-feedback");
		    					
		    				}
		    			}
		        	}); /* end ajax */
		        	
		    	}); /*  end uid */
		    	
		    	$('#signup').click(function(){
		    		var frm = $('#register');
		    		var address = $('#address').val();
		    		console.log(address);
		    		
		    		frm.attr('action', 'signup');
					frm.attr('method', 'post');
					console.log("업데이트 버튼 확인");
					frm.submit();
		    	}); /* submit */
			
			
			
		}); /*  end doucument */
						
		/* 한글입력 방지 */
        function fn_press_han(obj) {
            //좌우 방향키, 백스페이스, 딜리트, 탭키에 대한 예외
            if (event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 || event.keyCode == 39 || event.keyCode == 46) return;
            //obj.value = obj.value.replace(/[\a-zㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
            obj.value = obj.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
        } /*  end 한글입력 방지 */
        
        /* 전화번호 입력 */
        function autoHypenPhone(str) {
            str = str.replace(/[^0-9]/g, '');
            var tmp = '';
            if (str.length < 4) {
                return str;
            }
            else if (str.length < 7) {
                tmp += str.substr(0, 3);
                tmp += '-';
                tmp += str.substr(3);
                return tmp;
            }
            else if (str.length < 11) {
                tmp += str.substr(0, 3);
                tmp += '-';
                tmp += str.substr(3, 3);
                tmp += '-';
                tmp += str.substr(6);
                return tmp;
            }
            else {
                tmp += str.substr(0, 3);
                tmp += '-';
                tmp += str.substr(3, 4);
                tmp += '-';
                tmp += str.substr(7);
                return tmp;
            }
            return str;
        } /* end  autoHypenPhone */
        var cellPhone = document.getElementById('phone');
        cellPhone.onkeyup = function (event) {
            event = event || window.event;
            var _val = this.value.trim();
            this.value = autoHypenPhone(_val);
        } /* end cellphone */
        
        
        
        
	</script>

</body>
</html>