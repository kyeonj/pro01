<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="head.jsp" %>
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="header.css">
    <style>
    /* header.css*/
    .hd { position:fixed; }

    /* content */
    .vs { clear:both; width: 100%; height: 500px; overflow: hidden;}
    .vs img { display:block; width: 1200px; height:auto; margin: auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom: 3px solid #eee;}
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto;}
    .content { display:none; }
    .content:target { display:block; }
 
    .page_title {padding-top: 1em;}
    .home {color: #333;}
    .to_top { position:fixed; bottom:40px; right:40px; z-index:999; 
    background-color:aliceblue; color:lightskyblue; display:block; width: 50px;
    height: 50px; line-height: 50px; text-align: center; font-size:20px; border-radius:32px; 
    visibility:hidden; transition-duration:0.8s; }
    .to_top:hover { background-color:lightpink; color:hotpink;}
    .to_top.on { visibility: visible; }

    .txt1 {position: relative; bottom: 90px; font-size: 25px; color: #fff; line-height: 1.2; left: 60px;}
    .th1 {background-color: #ececec; width: 150px; padding-left: 50px; }
    .th2 { width: 400px; padding-left: 50px; }

    .thumb_lst { width:50%; float:left; margin-bottom: 50px; }
    .thumb_lst li { clear:both; border-bottom:3px solid #ececec; width: 1200px; height: 150px; border-right:3px solid #ececec; }
    .thumb_lst li:first-child { border-top:3px solid #ececec; }
    .thumb_lst li a { display:block; }
    .thumb_lst li .img_fr { width: 200px; height: 150px; overflow:hidden; float:left; }
    .thumb_lst li .img_fr img { display:block; width: 100%; height:140px; margin-top: 5px; }
    .thumb_lst li .com_fr { padding-left: 30px; float:left; color:#333; margin-top: -15px; }
    .thumb_tit { line-height: 2.4; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; margin-top: 20px;}
    .thumb_com { line-height:2; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }
    .thumb_num { line-height: 1.8; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }
    table {border-collapse: collapse; display: block; font-size: 20px; }
    th,td{/*width: 300px;*/ height: 50px; text-align: left; border: 1px solid #c5c5c5;; vertical-align: middle; }
    .txt {margin-top: 30px; font-size: 19px; } 
    /* footer */
    </style>
    <link rel="stylesheet" href="footer.css">
    <script>
    $(document).ready(function(){
        $(window).scroll(function(){
            var ht = $(window).height();
            var tp = $(this).scrollTop();
            if(tp>=300){
                $(".to_top").addClass("on");
                $(".to_top").attr("href", location.href);
            } else {
                $(".to_top").removeClass("on");
                $(".to_top").attr("href", location.href);
            }
        });
    });       
    </script>
</head>
<body>
<div class="wrap">
    <header class="hd">
      	  <%@ include file="nav.jsp" %>
    </header>
    <div class="content" id="page1">
        <figure class="vs">
            <img src="./img/company-overview-kv-m.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel1">
                    <option>기업정보</option>
                    <option value="2stmenu.jsp#page1">제품기술</option>
                    <option value="3stmenu.jsp#page1">지속가능경영</option>
                    <option value="4stmenu.jsp#page1">천안/아산인프라</option>
                    <option value="5stmenu.jsp#page1">인재/채용</option> 
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option>기업개요</option>
                    <option value="1stmenu.jsp#page2">CEO 인사말</option>
                    <option value="1stmenu.jsp#page3">사업장 정보</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">기업개요</h2>
                <div class="txt">
                <p>삼성디스플레이는 앞선 기술력을 바탕으로 세계 디스플레이 시장을 선도하고 있으며,<br>
                    끊임없는 기술혁신을 통해 상상 속에서만 가능했던 제품을 현실로 만드는 회사입니다.
                </p><br><br>
                </div>
                <h2 class="page_title">기업정보</h2>
                <br>
                <table>
                 <tr>
                    <th class="th1">기업명</th>
                    <th class="th2">삼성디스플레이</th>
                    <th class="th1">대표이사</th>
                    <th class="th2">최주선</th>
                </tr>
                <tr>
                    <td class="th1">설립일</td>
                    <td class="th2">2012년4월1일</td>
                    <td class="th1">업종</td>
                    <td class="th2">디스플레이 패널</td>
                </tr>
                <tr>
                    <td class="th1">본사소재</td>
                    <td class="th2">경기도 용인시 기흥구 삼성로1</td>
                    <td class="th1">종업원 수 </td>
                    <td class="th2">21,930</td>
                </tr>                    
                </table> 
                <div class="txt">
                    <p>삼성디스플레이는 2012년 OLED와 LCD의 합병으로 사업의 시너지를 극대화했으며, 독보적인 기술을 바탕으로 스마트폰, 노트북,<br> 
                    모니터, TV 등에 프리미엄 디스플레이 제품을 공급하고 있습니다. 세계 최초로 플렉서블 OLED와 폴더블 디스플레이를 양산하는 등<br> 
                    상상 속에만 존재하던 디스플레이를 현실로 만들어 가고 있습니다. 그리고 대형 디스플레이 시장의 판도를 뒤집을 QD-OLED라는<br> 
                    새로운 도전을 시작하고 있습니다.<br><br>
                    삼성디스플레이는 자연을 그대로 담아내는 뛰어난 화질, 더욱 가볍고 얇은 디스플레이를 만드는 기술로 고객이 필요로 하는 토털<br>
                    솔루션을 제공하고 있습니다. 다양한 디자인 혁신과, 120Hz 고주사율, 그리고 저전력 구동으로 5G 시대에 가장 알맞은 디스플레이,<br>
                    고객의 건강까지 고려하는 블루라이트 저감 기술 등 압도적인 초격차 기술 개발로 고객에게 새로운 가치를 제공합니다.<br><br>
                    글로벌 1위로서 시장을 이끌어 온 삼성디스플레이는 앞선 기술과 제품, 그리고 고객의 신뢰를 바탕으로 앞으로도 디스플레이<br>
                    리더로서의 역할을 다할 것입니다.</p>
                    </div>
                </div>
            </div>
        </div>
        </section>
    </div>
    <div class="content" id="page2">
        <figure class="vs">
            <img src="./img/company-overview-kv-m.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel3" id="sel3" class="sel">
                    <option>기업정보</option>
                    <option value="2stmenu.jsp#page1">제품기술</option>
                    <option value="3stmenu.jsp#page1">지속가능경영</option>
                    <option value="4stmenu.jsp#page1">천안/아산인프라</option>
                    <option value="5stmenu.jsp#page1">인재/채용</option> 
                </select> &gt; 
                <select name="sel4" id="sel4" class="sel">
                    <option>CEO 인사말</option>
                    <option value="1stmenu.jsp#page1">기업개요</option>
                    <option value="1stmenu.jsp#page3">사업장 정보</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">CEO 인사말</h2>
                <div class="txt">
                    <p>인간의 삶에 가치를 더하고 인류의 삶에 공헌하는 글로벌 초일류기업으로 항상 여러분과 함께 하겠습니다.</p><br><br>
                </div>
                <div>
                    <img class="img1" src="./img/1st_1.jpg" alt="최주선 대표이사" width="100%" height="500px">
                    <div class="txt1">
                        <p>삼성디스플레이 주식회사</p>
                        <strong>대표이사 사장 최주선</strong>
                    </div>
                    <div>
                    <h2>무한한 확장성을 가진 디스플레이 기술로 세상을 바꾸고 우리의 삶에 새로운 가치를 더하겠습니다.</h2><br><br>
                    <h3>안녕하세요. 삼성디스플레이 대표이사 최주선입니다.</h3>
                    </div>
                    <div class="txt">
                        <p>‘디스플레이’는 기술을 넘어 사람과 사람, 사람과 세상을 연결하는 ‘창’입니다. 4차 산업혁명이라는 거대한 물결 속에서 5G 이동통신을<br>
                        기반으로 하는 IoT가 현실이 되면 우리를 둘러싼 세상은 아주 빠른 속도로 변화할 것입니다.<br><br>
                        흑백에서 컬러TV로, CRT에서 평판 디스플레이로, 피처폰에서 스마트폰으로 진화했을 때처럼 기술의 변화가 우리의 생활방식과 사회의<br>
                        문화를 완전히 바꾸어 놓을 것입니다. 그때가 되면 인터넷을 통해 연결된 세상을 보다 생생하게 경험할 수 있도록 모든 제품, 모든 공간에<br>
                        삼성디스플레이의 최첨단 미래 기술이 함께할 것입니다.<br><br>
                        보다 큰 화면과 실제처럼 선명하고 생동감 넘치는 화질, 어떤 정형화된 형태가 아닌 새로운 디자인의 디스플레이가 우리의 시선이 닿는<br>
                        모든 곳에서 새로운 세상을 보여줄 것입니다. 삼성디스플레이는 앞으로도 기술로 세상을 바꾸고 기술로 삶에 새로운 가치를<br> 더하는 글로벌 초일류 기업으로 더 높이 성장하겠습니다.<br><br>
                        감사합니다.</p><br><br><br>
                    </div>
                 </div>
            </div>
        </section>
    </div>
    <div class="content" id="page3">
        <figure class="vs">
            <img src="./img/company-overview-kv-m.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <<option>기업정보</option>
                    <option value="2stmenu.jsp#page1">제품기술</option>
                    <option value="3stmenu.jsp#page1">지속가능경영</option>
                    <option value="4stmenu.jsp#page1">천안/아산인프라</option>
                    <option value="5stmenu.jsp#page1">인재/채용</option> 
                </select> &gt; 
                <select name="sel6" id="sel6" class="sel">
                    <option>사업장 정보</option>
                    <option value="1stmenu.jsp#page1">기업개요</option>
                    <option value="1stmenu.jsp#page2">CEO 인사말</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">사업장 정보</h2>
                <div class="txt">
                    <p>삼성디스플레이의 국내,외 사업장정보입니다</p><br>
                <div>
                    <img src="./img/1st_2.jpg" alt="사업장이미지" width="100%" height="auto"><br><br><br>
                    <ul class="thumb_lst">
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/1st_4.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">기흥캠퍼스(본사)</h3>
                                    <p class="thumb_com">용인시 기흥구 삼성로1</p>
                                    <p class="thumb_num">+82 31 5181 1114</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/1st_5.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">아산1캠퍼스</h3>
                                    <p class="thumb_com">아산시 탕정면 삼성로 181</p>
                                    <p class="thumb_num">+82 41 535 1114</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/1st_6.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">아산2캠퍼스</h3>
                                    <p class="thumb_com">아산시 탕정면 삼성로 181</p>
                                    <p class="thumb_num">+82 41 623 1114</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/1st_7.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">천안캠퍼스</h3>
                                    <p class="thumb_com">천안시 서북구 번영로 465</p>
                                    <p class="thumb_num">82+ 41 599 1114</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/1st_8.png" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">Samsung Display Tianjin(SDT)</h3>
                                    <p class="thumb_com">No. 25, MipFouch Road, Xiqing District, Tianjin, China</p>
                                    <p class="thumb_num">+86 22 2380 8100</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/1st_8.png" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">Samsung Display Dongguan(SDD)</h3>
                                    <p class="thumb_com">High Tech Industrial Zone, Houjie, Dongguan, Guangdong, China</p>
                                    <p class="thumb_num">+86 769 8290 1608</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/1st_8.png" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">Samsung Display Vietnam(SDV)</h3>
                                    <p class="thumb_com">Yen Phong Industrial Zone,Yen Trung Communes, Yen Phong District, Bac Ninh Province, Vietnam</p>
                                    <p class="thumb_num">+84 24 1390 5021</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/1st_8.png" alt=""></div>
                                <div class="com_fr">
                                    <h3 class="thumb_tit">SAMSUNG DISPLAY NOIDA PVT.LTD.(SDN)</h3>
                                    <p class="thumb_com">B-1D, Sector-81, Phase II, Noida PIN No. 201305, (U.P) India</p>
                                    <p class="thumb_num">+91 120 6275500</p>
                                </div>
                            </a>
                        </li>
                    </ul> 
                </div>
            </div>
        </section>
    </div>
    <script>
        var sel = document.getElementsByClassName("sel");
        for(var i=0;i<sel.length;i++){
            sel[i].addEventListener("change", function(){
                location.href = this.value;
            });
        }
        </script>
    <footer class="ft">
        <%@ include file="footer.jsp" %>
    </footer>
</div>
<a href="" class="to_top">↑</a><!-- .to_top.on -->
</body>
</html>