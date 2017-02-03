<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>Let's Team! Project Detail</title>
    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<!-- 자바스크립트 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>

<style>
	@media ( min-width : 768px) {
	.content {
		padding: 40px;
	}
	}
	
	@media ( max-width : 767px) {
		.content {
			padding: 20px;
		}
	}
	
	#main-section {
		width: 100%;
		 border: solid;
        margin: 20px;
        float: left;
        overflow: hidden;
	}

    #main-section > div {
        margin: 20px;
        font-size: 20px;
    }
    

    .team_part {
        width: 420px;
    }
    
    #form_team_part {
        width: 350px;
    }
    
    #team_part_1 {
        background-color: goldenrod;
    }
    
    .required_skill {
        width: 240px;
        display: inline-block;
    }
    
    
    #register {
        width: 520px;
        margin: 20px;
        border: 1px solid darkgray;
        font-size: 20px;
    }
    /* 
    aside > div {
        margin: 20px;
        font-size: 20px;
    }
     */
    table {
        font-size: 15px;
    }
    
    .table_member_name {
        width: 80px;
    }
    
    #table_leader_phone {
        width: 100px;
    }
    
    #table_member_part {
        width: 320px;
    }
    
    .date {
        width: 200px;
    }
    
    #team_name {
        width: 480px;
    }
    
    #team_category {
        width: 300px;
    }
    
    #team_area {
        width: 200px;
    }
    
    #team_info_name {
        height: auto;
        font-size: 40px;
    }
    
    input, textarea {
   		cursor: default !important;
    }
    
</style>

<body>
	<div id="container">
		<jsp:include page="../signup/include.jsp" flush="false"></jsp:include>
		<div id="main-index">
			<section class="content">
				<header>
					<h1>Project Detail</h1>
				</header>
			<div id="main-section">
					<div>
						<input class="form-control" type="text" id="team_info_name" 
							name="title" value="${dto.recruit.title }" readonly="readonly"/> <br/>
						<label class="label label-default">프로젝트 이름</label>
						<input class="form-control" type="text" id="team_name" 
							name="pname"  value="${dto.project.pname }" readonly="readonly"/> <br/>
						
						<label class="label label-default">카테고리</label>
						<input class="form-control" type="text" id="team_category"
							name="category" value="${dto.project.category }" readonly="readonly"/> <br/>
						
						<div id="div_team_intro">
						<label for="team_intro" class="label label-default" id="label_team_intro">프로젝트 소개
							</label> <br/>
						<textarea class="form-control" id="team_intro" cols="50" rows="5"
							name="intro" readonly="readonly">${dto.project.intro }</textarea>
						</div> <br/>
					
						<div>
						<label class="label label-default" id="label_project_date">프로젝트 기간</label>
						<br/>
						<div class="form-group form-inline">
						<label class="label label-info day">시작일</label>
						<input type="text" id="project_start" class="form-control" 
							name="start" value="<fmt:formatDate value="${dto.project.start }" pattern="yy-MM-dd" />">
							 ~
						<label class="label label-info day">종료일</label>
						<input type="text" id="project_end" class="form-control" 
							name="end" value="<fmt:formatDate value="${dto.project.end }" pattern="yy-MM-dd"/>"> </div>
						</div> <br/>
						
						<hr style="border: solid 1px black;">
						<div>
						<label class="label label-default" id="label_project_recruit_date">모집 기간</label> <br/>
						<div class="form-group form-inline">
						<label class="label label-info day">시작일</label>
						<input type="text" id="project_recruit_start" class="form-control datepicker" 
							value = "<fmt:formatDate value="${dto.recruit.rcstart }" pattern="yy-MM-dd" />"> ~
						<label class="label label-info day">종료일</label>
						<input type="text" id="project_recruit_end" class="form-control datepicker" 
							value="<fmt:formatDate value="${dto.recruit.rcend }" pattern="yy-MM-dd" />"/>
						</div>
						</div><br/>
						
						<label class="label label-default">활동 구역</label>
						<input class="form-control" type="text" name="district"
							value="${dto.project.district }" id="team_area" readonly="readonly">
					</div><br/>
			
					<div>
						<label class="label label-default" id="label_team_part">모집 팀원 역할</label>
						<div>
						<c:forEach var="parts" items="${dto.parts }">
							<input type="text" class="form-control team_part" maxlength="20" 
								name="part" value="${parts.part }" readonly="readonly"/>
						</c:forEach>
			<!-- <input type="text" class="form-control team_part" maxlength="20" name="team_part_1" id="team_part_1">
			<input type="text" class="form-control team_part" maxlength="20" name="team_part_2">
			<input type="text" class="form-control team_part" maxlength="20" name="team_part_3">
			<input type="text" class="form-control team_part" maxlength="20" name="team_part_4">
			<input type="text" class="form-control team_part" maxlength="20" name="team_part_5">
			<input type="text" class="form-control team_part" maxlength="20" name="team_part_6"> -->
						</div> 
					</div><br/>
			
					<div>
						<label for="required_skill" class="label label-default" id="label_required_skill">업무관련 기술태그</label>
						<div>
							<input type="text" class="form-control required_skill" maxlength="10" id="required_skill" name="required_skill_1"
			                    value="${dto.skills.skill_1 }" readonly="readonly"/>
							<input type="text" class="form-control required_skill" maxlength="10" name="required_skill_2"
								value="${dto.skills.skill_2 }" readonly="readonly"/>
							<input type="text" class="form-control required_skill" maxlength="10" name="required_skill_3"
								value="${dto.skills.skill_3 }" readonly="readonly"/>
							<input type="text" class="form-control required_skill" maxlength="10" name="required_skill_4"
								value="${dto.skills.skill_4 }" readonly="readonly"/>
							<input type="text" class="form-control required_skill" maxlength="10" name="required_skill_5"
								value="${dto.skills.skill_5 }" readonly="readonly"/>
							<input type="text" class="form-control required_skill" maxlength="10" name="required_skill_6"
								value="${dto.skills.skill_6 }" readonly="readonly"/>
							<input type="text" class="form-control required_skill" maxlength="10" name="required_skill_7"
								value="${dto.skills.skill_7 }" readonly="readonly"/>
							<input type="text" class="form-control required_skill" maxlength="10" name="required_skill_8"
								value="${dto.skills.skill_8 }" readonly="readonly"/>
							<input type="text" class="form-control required_skill" maxlength="10" name="required_skill_9"
								value="${dto.skills.skill_9 }" readonly="readonly"/>
							<input type="text" class="form-control required_skill" maxlength="10" name="required_skill_10"
								value="${dto.skills.skill_10 }" readonly="readonly"/>
						</div>
					</div> <br/>
					<div> <a href="projectList" class="btn btn-primary btn-lg" role="button">목록으로</a> </div>
					
					<div id="register">
						<div>
					<label class="label label-default">팀장</label>
					<table class="table">
						<tr>
							<th class="table_member_name">이름</th>
							<th>ID</th>
							<th>EMAIL</th>
							<th id="table_leader_phone">PHONE</th>
						</tr>
						<tr>
							<td>${dto.team_leader.name}</td>
							<th>${dto.team_leader.kkoid }</th>
							<td>${dto.team_leader.email }</td>
							<td>${dto.team_leader.phone }</td>
						</tr>
					</table>
					</div><br/>
					
					<div>
					<label class="label label-default">모집 팀원 현황</label>
					<table class="table">
						<tr>
							<th class="table_member_name">이름</th>
							<th>ID</th>
							<th id="table_member_part">역할</th>
							</tr>
							
							<c:forEach var="parts" items="${dto.parts }">
								<c:if test="${parts.user_id  ne null}">
									<tr>
										<td>${parts.name }</td>
										<th>${parts.user_id }</th>
										<td>${parts.part }</td>
									</tr>
								</c:if>
							</c:forEach>
					</table>
					</div><br/><hr/>
					
			<!-- 		<div>
						<form action="">
						<div class="form-group"> -->
			<!-- <label for="form_team_part" class="label label-default">모집 팀원 역할</label>
			<input type="text" class="form-control" id="form_team_part" name="" maxlength="20" placeholder="역할을 입력하시오">  -->
					
			 		<form action="apply-project" method="POST">
						<select name="part_pk">
							<c:forEach var="parts" items="${dto.parts }">
								<c:if test="${parts.user_id eq null}">
									<option value="${parts.part_pk}">${parts.part}</option>
								</c:if>
							</c:forEach>
						</select>
						<input type="text" name="comment" placeholder="지원자 코맨트:3c"/><br/>
						<input type="text" name="user_id" value="${user_id}" hidden="hidden" />
						<input type="text" name="rbno" value="${dto.recruit.rbno }" hidden="hidden" />
						<input type="text" name="pid" value="${dto.project.pid }" hidden="hidden" />
						<input type="submit" class="btn btn-primary btn-lg" value="지원하기" />
			 		</form>
			<!-- 			<button id="btnApply" type="button" class="btn btn-primary btn-lg">지원하기</button> -->
			
						
						
					</div>
				
				
			</div> <!-- end main-section -->
			<footer>footer</footer>


			</section>
			<aside>날씨</aside>
		</div>
	</div>

<script>
$(document).ready(function () {
/* 	$('input').attr("readonly", "readonly");
	$('textarea').attr("readonly", "readonly");
	$('#form_team_part').attr("readonly", false);
	// 글자수 체크1 
	$('#form_team_part').keyup(function () {
		if ($(this).val().length > $(this).attr('maxlength')) {
			alert('제한길이 초과');
			$(this).val($(this).val().substr(0, $(this).attr('maxlength')));
		}
	}); */
	
/* 	$('#btnApply').click(function () {
		
		
		
	}); // end #btnApply */
	
	if('${apply_project}'=='success') {
		alert('프로젝트 지원 완료!');
	} else if('${apply_project}' == 'fail') {
		alert('프로제트 지원 실패');
	} else if('${apply_project}' == 'over_fail') {
		alert('이미 지원하신 프로젝트입니다! 중복 지원은 불가합니다');
	}

});
	


</script>
</body>

</html>