# 포트폴리오

## 프로젝트 목차
1. 팀 프로젝트(1) - 안드로이드앱 개발 : 다이어리 어플
2. 팀 프로젝트(2) - 웹-스프링 : 팀 모집 웹사이트 개발 <프로젝트 멤버모집 SNS 플랫폼>

*****
##팀프로젝트(2): < 프로젝트 멤버모집 SNS 플랫폼 >
## 1. 프로젝트 소개

### 1.1. 프로젝트 개요
>1. 기존의 문제점<br/>
소규모 프로젝트를 위한 플랫폼의 부재<br/>
공모전, 포트폴리오 등을 위한 그룹구성이 어려움<br/>
원하는 능력을 갖춘 멤버를 구하기 어려움<br/>

>2. 제시 해결책<br/>
소규모 그룹을 만들 수 있는 플랫폼 제공 <br/>
개인별 역량을 확인 가능한 서비스 제공

### 1.2. 개발 및 배포환경
>Spring기반의 Web Application 개발<br/>
언어: Java, JavaScript, HTML, CSS<br/>
라이브러리: JQuery, JSTL, EL<br/>
프레임워크: Spring<br/>
SCM: GitHub	

>Amazon EC2 서비스를 이용 <br/>
AMI: Amazon Linux AMI <br/>
Web Server: NginX <br/>
WAS: Tomcat 9.0 <br/>
RDBMS: MySQL 5.6(Work Bench) <br/>

<!--
목표 및 현실
프로젝트 목표: Web Application 을 완성하는데 필요한 모든 절차를 경험 
이상: 미팅 → 문서화 → 개발 → 회의 → 버전관리 → 테스팅 → 디플로이
현실: 미팅 → 개발 → 회의 → 디플로이
-->

### 1.3. 담당 업무
>DB 설계 및 쿼리문 작성<br/>

<br/>
## 2. 담당 업무 상세

### 2.1 프로젝트 전체적인 DB 테이블 설계 및 관리 <br/>
![Alt text](/hs_portfolio/ERD.png)

- 18개의 테이블로 구성
- 크게 User, Project, Board 라는 주제에 맞춰 테이블을 세분화
- 서로 연관된 테이블끼리는 외래키를 지정해줘서 제약조건을 부여
- 실제 수업에서 배운것은 Oracle 이었으나 AWS 를 사용해보기 위해서 mySQL로 DB를 설계

### 2.2 Query / Backend
#### 1) 프로젝트 모집글 상세보기 화면 구현
> #####1. 프로젝트 모집글 리스트 화면에서 사용자가 클릭한 모집글의 번호를 받아와서 해당 프로젝트의 id(PK)를 찾아줌 
>> -해당 쿼리문을 사용한 mapper 파일 : [**recruit-detail-mapper.xml**](https://github.com/itosamto/hs_portfolio/blob/master/TeamSNS/src/main/resources/mappers/recruit-detail-mapper.xml) (line: 7~48)<br/>
>> include를 사용해서 각각의 테이블에서 selecr를 할때 pid를 찾는 문장의 중복 사용을 줄임
<pre>
<code>
SELECT pid FROM pentacore.recruit_project WHERE rbno = #{rbno }
</code>
</pre>


> #####2. 각각의 테이블에서 pid를 사용하여 해당 프로젝트 상세보기 화면에서 필요한 정보들을 불러옴
>> 상세보기 화면에서 필요한 정보들을 모든 테이블을 조인시켜서 하나의 쿼리문으로 작성하기엔 가져올 컬럼이 많아서 각각 테이블의 조회결과를 VO로 생성한 후 이 VO들로 이루어진 DTO를 RecruitDetailDAOImple에서 생성하여 Controller에 넘겨줌<br/>
> <a href="https://github.com/itosamto/hs_portfolio/blob/master/TeamSNS/src/main/java/edu/penta/hyunsun/persistence/RecruitDetailDAOImple.java#L28">RecruitDetailDAOImple.java</a><br/>
<a href="https://github.com/itosamto/hs_portfolio/blob/master/TeamSNS/src/main/java/edu/penta/hyunsun/controller/RecruitDetailController.java#L19">RecruitDetailController.java</a>

<pre>
<code>
SELECT * FROM pentacore.recruit_project WHERE rbno = #{rbno }

SELECT * FROM pentacore.project 
	WHERE pid = ( &lt;include refid="find_pid" /&gt; )

SELECT part.*, user.name
	FROM pentacore.manage_project_part AS part
	LEFT JOIN pentacore.user AS user ON user.uid = part.user_id
	WHERE part.pid = (&lt;include refid="find_pid" /&gt;)

SELECT * FROM pentacore.required_skill
	WHERE pid = ( &lt;include refid="find_pid" /&gt; )

SELECT * FROM pentacore.user
	WHERE uid = 
	(
	SELECT leader_uid FROM pentacore.project_leader
	WHERE pid = ( (&lt;include refid="find_pid" /&gt;) )
	)
</code>
</pre>

<br/>
#### 2) 모집글 상세 화면에서 해당 프로젝트에 지원하기 기능 구현
