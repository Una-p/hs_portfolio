<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../resources/realcss/sidemenu.css" />

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
	
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
}

aside {
	flex-basis: 200px;
	flex-shrink: 0;
}

/* 768px 이하 일 때: column으로 정렬됨 */
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
}

</style>
</head>
<body>
	<header id="mainHeader">
		
		<nav id="cd-top-nav">
			<ul>
				<li><a href="#0">로그인</a></li>

			</ul>
		</nav>
		<a id="cd-menu-trigger" href="#0"><span class="cd-menu-text">Menu</span><span class="cd-menu-icon"></span></a>
	</header>
	
	<nav id="cd-lateral-nav">
		<img id="mainLogo" src="../resources/img/Logo_white.svg">
		<ul class="cd-navigation">
			<li class="item-has-children">
				<a href="#0">project</a>
				<ul class="sub-menu">
					<li id="project-list"><a href="#0">프로젝트 리스트</a></li>
					<li id="project-register"><a href="#0">프로젝트 등록</a></li>
					<li id="projectInfo"><a href="#0">프로젝트 관리</a></li>
				</ul>
			</li> <!-- item-has-children ..-->

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
					<li id="tipAndTech"><a href="#0">tip & tech</a></li>
					<li><a id="qaBoard" href="#0">Q & A</a></li>
					<li><a id="freeBoard" href="#0">자유 게시판</a></li>
					<!-- <li><a href="#0">Paris</a></li> -->
				</ul>
			</li> <!-- item-has-children -->
		</ul> <!-- cd-navigation -->

		<ul class="cd-navigation cd-single-item-wrapper">
			<li><a id="singIn" href="#0" data-toggle="modal" data-target="#loginModal">로그인</a></li>
			<li><a id="signUp" href="#0" data-toggle="modal" data-target="#signupModal">회원가입</a></li>
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
                              <input type="text" class="form-control" id="uid" name="uid" placeholder="Id">
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
                      <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone">
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
	      <button type="button" class="btn btn-default" id="signup">Sign Up</button>
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		
	      </div>
	    </div>
	  </div>
	</div>
	
	<script src="../resources/js/main.js"></script> <!-- Resource jQuery -->
	<script>
		$(function() {
			$("#accordian h3").click(function() {
				$("#accordian ul ul").slideUp();
				if (!$(this).next().is(":visible")) {
					$(this).next().slideDown();
				}
			});
		});

		$(document).ready(function(){
							if ('${insert_result}' == 'success') {
								alert('신규 회원 가입 성공!');
							} else if ('${insert_result}' == 'fail') {
								alert('신규 회원 가입 실패!');
							}

							if ('${success}' == 'success') {
								$('#singIn').hide();
								$('#signUp').hide();
							} else {
								$('#logout').hide();
								$('#myPage').hide();
								$('#projectInfo').hide();
								$('#project-register').hide();
							}
							$('#myPage').click(function() {
								location = '/teamsns/user/mypage';
							});
							
							$('#logout').click(function() {
								alert('${login_id}님 로그아웃 되셧습니다!');
								location = '/teamsns/signup/logout';
							});

							$('#project-list').click(function() {
								location = '/teamsns/project/projectList';
							});

							$('#projectInfo').click(function() {
								location = '/teamsns/project/projectInfo';
							});

							$('#project-register').click(function() {
								location = '/teamsns/register/project-register';
							});

							$('#tipAndTech').click(function() {
								location = '/teamsns/board/tipAndTech';
							});
							$('#logo').click(function() {
								location = '/teamsns/signup/main-page';
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
									$(this).val($(this).val().substr(0,
											$(this).attr('maxlength')));}
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
						    	});
							
			});
	</script>
</body>
</html>