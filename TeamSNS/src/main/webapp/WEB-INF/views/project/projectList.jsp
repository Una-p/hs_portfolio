<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="UTF-8">
<title>Let's Team! Project List</title>
<link href="../resources/realcss/teamList.css" rel="stylesheet" type="text/css"></link>
<link href="../resources/realcss/fonts.css" rel="stylesheet" type="text/css"></link>
<style>
	#part1{
		visibility: visible;
	}
	@media ( max-width : 768px) {
	.content {
		font-size: 20px;
	}
}
</style>
</head>
<body>
	<div id="container">
		<jsp:include page="../signup/include.jsp" flush="false"></jsp:include>
		<div id="main-index">
			<section class="content">
				<header class="districtset">
				   <h1 style="font-size: 36px">Project List</h1>
				      <ul class="district">
				         <!-- <li id ="all">전체선택</li> -->
				         <li id ="seoul">서울특별시 </li>
				         <li id ="busan">부산광역시 </li>
				         <li id ="daegu">대구광역시 </li>
				         <li id ="inchen">인천광역시 </li>
				         <li id ="gwangju">광주광역시 </li>
				         <li id ="daejeon">대전광역시 </li>   
				         <li id ="ulsan">울산광역시 </li>
				         <li id ="sejong">세종특별자치시 </li>
				         <li id ="gyeonggi">경기도 </li>
				         <li id ="gangwon">강원도 </li>
				         <li id ="nChungcheong">충청북도 </li>
				         <li id ="sChungcheong">충청남도 </li>
				         <li id ="nJeolla">전라북도 </li>
				         <li id ="sJeolla">전라남도 </li>
				         <li id ="nGyeongsang">경상북도 </li>
				         <li id ="sGyeongsang">경상남도 </li>
				         <li id ="jeju">제주특별자치도 </li>
				         <li id ="foreignCountry">해외</li>
				      </ul>
				    
				</header>
				<div id="main-section">
				
				
				<ul id="cardContainer">
				<c:forEach var="vo" items="${projectCardList }">
				<li  id="${vo.rbno }" data-target="#projectModal" data-toggle="modal" class="projectCard">
				   <div class="cardTop">
				        <div class="cardCom01">
				        	<p class="districtOfProject">${vo.district }</p>
				        	<p class="category">${vo.category }</p>
				            <p class="title">${vo.title}</p>
				            <p  class="pname">${vo.pname }</p>
				        </div>
				        <p class="cardCom02"> 조회수 ${vo.recruit_hits }
				            <br>
				            <br>모집마감일
				            <fmt:formatDate value="${vo.rcend }" pattern="yyyy.MM.dd" var="rcend"/>
				            <br>${rcend } </p>
				            
				    </div>
				    <p class="intro">${vo.intro }</p>
				    <div class="cardCom03">
				        <p>요구기술</p>
				        <ul>
				        <c:forTokens var="skill" items="${vo.skills }" delims=",">
				            <li>${skill }</li>
				        </c:forTokens>
				        </ul>
				    </div>
				    <div class="cardCom04">
				        <p>모집역할</p>
				        <ul>
				        <c:forTokens var="part" items="${vo.parts }" delims=",">
				            <li>${part }</li>
				        </c:forTokens>
				        </ul>
				    </div>
				    <p class="cardCom05"></p>
				</li>
				</c:forEach>
				</ul>
				<form id="frm">
				   <input type="hidden" name="rbno">
				</form>
				
				</div><!-- end main-section -->


				<footer>footer</footer>
			
		
		</section>
		</div>
		<aside>날씨</aside>
	</div>
	<!-- 모달 팝업 -->
	<div class="modal fade bs-example-modal-lg" id="projectModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel">Modal title</h4>
	      </div>
	      <div class="modal-body">
		    <input class="form-control" type="text" id="title" name="title" value="${dto.recruit.title }" readonly="readonly"/><br>
		    
		    <label>프로젝트 이름</label>
			<input class="form-control" type="text" id="pname" 	name="pname"  value="${dto.project.pname }" readonly="readonly"/><br>
		    
		    <label>카테고리</label>
			<input class="form-control" type="text" id="category" name="category" value="${dto.project.category }" readonly="readonly"/> <br/>
		    
		    <div id="div_team_intro">
			<label for="team_intro" id="label_team_intro">프로젝트 소개
				</label> <br/>
			<textarea class="form-control" id="intro" cols="50" rows="5"
				name="intro" readonly="readonly">${dto.project.intro }</textarea>
			</div> <br/>
		    
		    <div>
			<label id="label_project_date">프로젝트 기간</label>
			<br/>
			<div class="form-group form-inline">
			<label class="label label-info day">시작일</label>
			<input type="text" id="project_start" class="form-control" 
				name="start" value="<fmt:formatDate value="${dto.project.start }" pattern="yy-MM-dd" />">
				 ~
			<label class="label label-info day">종료일</label>
			<input type="text" id="project_end" class="form-control" 
				name="end" value="<fmt:formatDate value="${dto.project.end }" pattern="yy-MM-dd"/>">  </div>
			</div> <br/>
        
            <div>
			<label id="label_project_recruit_date">모집 기간</label> <br/>
			<div class="form-group form-inline">
			<label class="label label-info day">시작일</label>
			<input type="text" id="project_recruit_start" class="form-control datepicker" 
				value = ""> ~
			<label class="label label-info day">종료일</label>
			<input type="text" id="project_recruit_end" class="form-control datepicker" 
				value=""/>
			</div>
			</div><br/>
		    
		    <label>활동 구역</label>
			<input class="form-control" type="text" name="district"
				value="${dto.project.district }" id="team_area" readonly="readonly"><br>
		    
		   <label id="label_team_part">모집 팀원 역할</label>
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
			</div> <br> 
            
            <label for="required_skill" id="label_required_skill">업무관련 기술태그</label>
			<div>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill" name="required_skill_1"
                    value="${dto.skills.skill_1 }" readonly="readonly"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_2" name="required_skill_2"
					value="${dto.skills.skill_2 }" readonly="readonly"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_3" name="required_skill_3"
					value="${dto.skills.skill_3 }" readonly="readonly"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_4" name="required_skill_4"
					value="${dto.skills.skill_4 }" readonly="readonly"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_5" name="required_skill_5"
					value="${dto.skills.skill_5 }" readonly="readonly"/>
				<input type="text" class="form-control required_skill" maxlength="10"  id="required_skill_6" name="required_skill_6"
					value="${dto.skills.skill_6 }" readonly="readonly"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_7" name="required_skill_7"
					value="${dto.skills.skill_7 }" readonly="readonly"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_8" name="required_skill_8"
					value="${dto.skills.skill_8 }" readonly="readonly"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_9" name="required_skill_9"
					value="${dto.skills.skill_9 }" readonly="readonly"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_10" name="required_skill_10"
					value="${dto.skills.skill_10 }" readonly="readonly"/>
			</div>
		    <hr/>
		    
		      <div>
                <label>팀장</label>
                <table class="table">
                    <tr>
                        <th class="table_member_name">이름</th>
                        <th>ID</th>
                        <th>EMAIL</th>
                        <th id="table_leader_phone">PHONE</th>
                    </tr>
                    <tr>
                        <td id="teamname">${dto.team_leader.name}</td>
                        <th id="teamkkoid">${dto.team_leader.kkoid }</th>
                        <td id="teamemail">${dto.team_leader.email }</td>
                        <td id="teamphone">${dto.team_leader.phone }</td>
                    </tr>
                </table>
		      </div>   
		      
		      <div>
                <label>모집 팀원 현황</label>
                
                <table id="partTest" class="table">
                    	<tr id="part1">
                        <th class="table_member_name">이름</th>
                        <th>ID</th>
                        <th id="table_member_part">역할</th>
                        </tr>
                </table>
                
                
		      </div>
                                           
            <form action="apply-project" method="POST">
                <select id="partselect" name="part_pk" class="">
                    
                      <option value="${parts.part_pk}">${parts.part}</option>
                    
                </select>
                <input type="text" name="comment" placeholder="지원자 코맨트:3c"/><br/><br>
                <input type="text" id="user_id" name="user_id" value="" hidden="hidden" />
                <input type="text" name="rbno" value="${dto.recruit.rbno }" hidden="hidden" />
                <input type="text" name="pid" value="${dto.project.pid }" hidden="hidden" />
                <input type="submit" class="form-control btn-primary" value="지원하기" />
 		    </form>           
		                                       
	      </div> <!-- main content-->
	      <div class="modal-footer">
	   
		<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		<button type="button" class="btn btn-primary">목록으로</button>
	      </div>
	    </div>
	  </div>
	</div>
	


	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="../resources/js/projectList.js"></script>
	<script type="text/javascript" src="../resources/js/jquery-ui.min.js"></script>
	<script>
		$(document).ready(function(){
			$('.projectCard').click(function(){
				var rbno = $(this).attr('id');
				var user_id = '${login_id}';
				$("#user_id").val(user_id);
				console.log("유저저저저저저저아이디" + user_id);
				console.log(rbno);
				
				var url = '/teamsns/project/projectInfo/' + rbno;
				
				 $.getJSON(url,projectInfo);
				
				
				function projectInfo(result){
					
					console.log(result);
					console.log(result.recruit.title);
					
				    var title = result.recruit.title;
					var pname = result.project.pname;
					var category = result.project.category;
					var intro = result.project.intro;
					
					var start = result.project.start;
					var end = result.project.end;
					var rcstart = result.recruit.rcstart;
					var rcend = result.recruit.rcend;
					
					var district = result.project.district;
					var part = result.parts.part;
					
					var skill_1 = result.skills.skill_1;
					var skill_2 = result.skills.skill_2;
					var skill_3 = result.skills.skill_3;
					var skill_4 = result.skills.skill_4;
					var skill_5 = result.skills.skill_5;
					var skill_6 = result.skills.skill_6;
					var skill_7 = result.skills.skill_7
					var skill_8 = result.skills.skill_8;
					var skill_9 = result.skills.skill_9;
					var skill_10 =result.skills.skill_10;
					
					var teamname = result.team_leader.name;
					var teamemail = result.team_leader.email;
					var teamkkoid = result.team_leader.kkoid;
					var teamphone = result.team_leader.phone;
					
					
					
					console.log(teamname);
					
					/* var name
					var user_id
					var part 
					 */
					$('#title').val(title);
					$('#pname').val(pname);
					$('#category').val(category);
					$('#intro').val(intro);
					$('#project_start').val(start);
					$('#project_end').val(end);
					$('#project_recruit_start').val(rcstart);
					$('#project_recruit_end').val(rcend);
					$('#team_area').val(district);
					$('#required_skill').val(skill_1);
					$('#required_skill_2').val(skill_2);
					$('#required_skill_3').val(skill_3);
					$('#required_skill_4').val(skill_4);
					$('#required_skill_5').val(skill_5);
					$('#required_skill_6').val(skill_6);
					$('#required_skill_7').val(skill_7);
					$('#required_skill_8').val(skill_8);
					$('#required_skill_9').val(skill_9);
					$('#required_skill_10').val(skill_10);
					$('#teamname').html(teamname);
					$('#teamkkoid').html(teamemail);
					$('#teamemail').html(teamkkoid);
					$('#teamphone').html(teamphone);
					
					
					
					
				var list = '';
				var list2 = '';
				var i = result.parts.length;
				console.log(i);
   				console.log(result.parts[0].name);
   				 $(result.parts).each(function(i){
							 list += '<tr><td>'+result.parts[i].name +'</td><th>'+result.parts[i].user_id 
							 +'</th><td>'+result.parts[i].part +'</td></tr>'
   				});
   				
   				$('#partTest').html(list);
   				console.log(list);
   				
   				$(result.parts).each(function(i){
					 list2 += '<option value="' +result.parts[i].part_pk +'">' +result.parts[i].part + '</option>';
				});
   				
   				$('#partselect').html(list2);
					
				} /* end project  */ 
				
			}); /* end click */
		}); /* end document */
	</script>
</body>
</html>