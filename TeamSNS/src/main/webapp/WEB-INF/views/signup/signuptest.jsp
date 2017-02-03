<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<div class="container">

	<h2>모달</h2>

	<!-- 버튼 -->
	<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#loginModal" >
	  Launch demo modal
	</button>

	<!-- 로그인 모달 팝업 -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
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

</div>


	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>  
    <script>
    $(document).ready(function(){
    	
    	var uid = $('#uid').val();
    	var pw = $('#pw').val();
    	var name = $('#name').val();
    	var nickname = $('#nickName').val();
    	var phone = $('#phone').val();
    	var kkoid = $('#kkoid').val();
    	var email = $('#email').val();
    	var M = $('#M').val();
    	var W = $('#W').val();
    	var birth = $('#birth').val();
    	var address = $('#address').val();
    	console.log(uid,pw,name, nickname,phone,kkoid,email,M,W,birth,address);
    	
    	
	$('#uid').change(function(){
		console.log(uid,pw,name, nickname,phone,kkoid,email,M,W,birth,adress);
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
    	
    	
    }); /*  end document */
    </script>
</body>
</html>