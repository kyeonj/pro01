<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="ft_wrap">
            <div class="ft_logo"><img src="./img/logo.png"width="150" height="50" alt="하단로고"></div>
            <div class="mid_box">
                <nav class="fnb">
                    <a href="sitemap.html" class="dpc">사이트맵</a>
                    <a href="member1.html" class="dpc">개인정보 처리 방침</a>
                    <a href="member2.html">윤리경영</a>
                    <a href="member3.html">특허/상표</a>
                </nav>
                <p class="addr">
                    SAMSUNG DISPLAY | 대표이사 | 최주선 <br>
                    경기도 용인시 기흥구 삼성로 1 | +82 31 5181 1114
                </p>
                <p class="copyright"> Copyright © SAMSUNG DISPLAY All rights reserved.<br> <대표번호 : 031-5181-1114></p>
            </div>
            <div class="sel_box">
                <select name="sel" id="sel" class="sel" onchange="sel_link(this)">
                    <option value="">패밀리 사이트</option>
                    <option value="https://www.samsung.com">삼성전자</option>
                    <option value="https://www.samsungsvc.co.kr">삼성전자 서비스</option>
                    <option value="https://www.samsungsdi.co.kr">삼성 SDl</option>
                </select>
            </div>
            <script>
            function sel_link(sel){
                location.href = sel.value;
            }
            </script>
        </div>