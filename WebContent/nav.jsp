<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% 
	String id = (String) session.getAttribute("id");
	String name = (String) session.getAttribute("name");
	String email = (String) session.getAttribute("email");
	String msg = (String) application.getAttribute("msg");
 %>
<div class="hd_wrap">
	<a href="index.jsp" class="logo"><img src="./img/logo.png" alt="로고"></a>
	<nav class="tnb">
	<%
			if(id!=null && id.equals("admin")) {
	%>
       		<div>
       			<span class="ip_print"><%=name %>님</span>
       			<a href="logout.jsp">로그아웃</a>
       			<a href="memList.jsp">회원 관리</a>
            	<a href="boardList.jsp">고객문의관리</a>
            	<a href="faqList.jsp">Q&A관리</a>
           </div>
     <%
			} else if(id!=null) {
     %>
     	<div>
       			<span class="ip_print"><%=name %>님</span>
            	<a href="logout.jsp">로그아웃</a>
            	<a href="memInfo.jsp">회원정보</a>
            	<a href="boardList.jsp">고객문의</a>
            	<a href="faqList.jsp">Q&A</a>
           </div>
	<%
      	 	}  else {
	%> 
        	<div>
        		<a href="login.jsp">로그인</a>
           	 	<a href="term.jsp">회원가입</a>
            	<a href="boardList.jsp">고객문의</a>
            	<a href="faqList.jsp">Q&A</a>
        	</div>
<%
      	 	}
%>
            </nav>
            <nav class="gnb">
                <ul>
                    <li class="item1">
                        <a href="index.jsp" class="dp1">기업정보</a>
                        <ul class="sub">
                            <li><a href="1stmenu.jsp#page1">기업개요</a></li>
                            <li><a href="1stmenu.jsp#page2">CEO 인사말</a></li>
                            <li><a href="1stmenu.jsp#page3">사업장 정보</a></li>
                        </ul>
                    </li>
                    <li class="item2">
                        <a href="index.jsp" class="dp1">제품기술</a>
                        <ul class="sub">
                            <li><a href="2stmenu.jsp#page1">OLED Display</a></li>
                            <li><a href="2stmenu.jsp#page2">QD-OLED</a></li>
                            <li><a href="2stmenu.jsp#page3">어플리케이션별 특징</a></li>
                        </ul>
                    </li>
                    <li class="item3">
                        <a href="index.jsp" class="dp1">지속가능경영</a>
                        <ul class="sub">
                            <li><a href="3stmenu.jsp#page1">인권정책</a></li>
                            <li><a href="3stmenu.jsp#page2">녹색경영</a></li>
                            <li><a href="3stmenu.jsp#page3">준법경영</a></li>
                        </ul>
                    </li>
                    <li class="item4">
                        <a href="index.jsp" class="dp1">천안/아산인프라</a>
                        <ul class="sub">
                            <li><a href="4stmenu.jsp#page1">디스플레이의 메카</a></li>
                            <li><a href="4stmenu.jsp#page2">교통/주거 인프라</a></li>
                            <li><a href="4stmenu.jsp#page3">교육/문화/복지 인프라</a></li>
                        </ul>
                    </li>
                    <li class="item5">
                        <a href="index.jsp" class="dp1">인재/채용</a>
                        <ul class="sub">
                            <li><a href="5stmenu.jsp#page1">인재상</a></li>
                            <li><a href="5stmenu.jsp#page2">직무소개</a></li>
                            <li><a href="5stmenu.jsp#page3">회사생활</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>