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
    .vs { clear:both; width: 100%; height:500px; overflow: hidden;}
    .vs img { display:block; width: 1200px; height:auto; margin: auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom: 3px solid #eee;}
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    .content { display:none; }
    .content:target { display:block; }
 
    .page_title {padding-top: 1em;}
    .page_title1 {text-decoration: underline;}
    .home {color: #333;}
    .to_top { position:fixed; bottom:40px; right:40px; z-index:999; 
    background-color:aliceblue; color:lightskyblue; display:block; width: 50px;
    height: 50px; line-height: 50px; text-align: center; font-size:20px; border-radius:32px; 
    visibility:hidden; transition-duration:0.8s; }
    .to_top:hover { background-color:lightpink; color:hotpink;}
    .to_top.on { visibility: visible; }
    .txt {margin-top: 30px; font-size: 19px; }
    .text-bold { font-weight: bold; }
    .half { position: relative; }
    .half .half-obj { width: calc(50% - 10px); position: relative;}
    .half .half-txt { position: absolute; width: calc(100% - 550px); height: 100%; top: 0; right: 0; }
    .half .half-txt > div { position: absolute; top: 50%; transform: translateY(-50%); padding: 0 83px 0 77px; }
    .half .half-txt > div {padding: 0 5px 0 84px; }
    .half .half-txt .txt-desc { font-size: 17px; line-height: 1.5; letter-spacing: -0.05em;  }
    .half .half-txt .txt-desc p + p { margin-top: 32px; }
    .txt1 {position: relative; bottom: 90px; font-size: 25px; color: #fff; line-height: 1.2; left: 60px;}
    .txt2 {position: relative; bottom: 90px; font-size: 25px; color: #fff; line-height: 1.2; left: 370px; margin-top: -30px;}
    /* .half-obj { margin-left:10px; position: relative;}
    .half.reverse .half-txt { left: 0; right: auto; }
    .no_text02 .desc {position: relative; float: left; width: 50%; height: 100%;}
    .no_text02 .desc > div {width: 100%; position: absolute; bottom: 6.4%;}
    .no_text02 .desc.left > div {right: 0%; text-align: right; }
    /*.no_text02 .desc.left p:first-child {}*/
    /* .no_text02 .desc.left p:last-child {font-size: 40px; line-height: 1.25;}
    .no_text02 .desc.right > div {left: 0%; text-align: left; padding-left: 22%;}
    .no_text02 .desc.right > div {left: 0%; text-align: left; padding-left: 22%;}
    .no_text02 .desc.right p:first-child {font-size: 25px; line-height: 1.42;}
    .no_text02 .desc.right p:last-child {font-size: 48px; line-height: 1.12; }
    .no_text02 p {text-shadow: 0px 0px 5px rgba(0, 0, 0, 1);}  */

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
            <img src="./img/oled-kv-m.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel1">
                    <option>제품기술</option>
                    <option value="1stmenu.jsp#page1">기업정보</option>
                    <option value="3stmenu.jsp#page1">지속가능경영</option>
                    <option value="4stmenu.jsp#page1">천안/아산인프라</option>
                    <option value="5stmenu.jsp#page1">인재/채용</option> 
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option>OLED Display</option>
                    <option value="2stmenu.jsp#page2">QD-OLED</option>
                    <option value="2stmenu.jsp#page3">어플리케이션별 특징</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">OLED Display</h2>
                <div class="txt">
                <p>삼성의 OLED 디스플레이는 선명한 화질과 슬림한 디자인, 낮은 소비전력 등 다양한 혁신 기술을 통해<br>
                    글로벌 중소형 디스플레이 시장을 선도하고 있습니다.</p><br><br>
                </div>
                <h2 class="page_title1">What is OLED?</h2><br><br>
                <h2>OLED디스플레이의 구조와 원리</h2><br>
                <div class="half">
                    <div class="half-obj">
                        <img class="" src="./img/2st_1.jpg" alt="" width="100%" height="auto">
                    </div>
                    <div class="half-txt">
                        <div>
                            <div class="txt-desc">
                                <p>OLED(Organic Light Emitting Diodes) 디스플레이는 전류가 흐르면 <br><span class="text-bold">스스로 빛을 내는 유기물질을 이용한 ‘자발광형 디스플레이’</span>입니다.</p>
								<p>백라이트 광원을 활용해 액정과 컬러필터를 거쳐 색을 표현하는 LCD와 달리 OLED는 유기발광층에 전류를 가했을 때 이에  반응하는 빛의 3원색인 RGB 발광물질을 통해 색을 표현합니다.</p>
								<p>픽셀 하나하나가 자체적으로 빛을 내기 때문에 화질,두께, 소비전력 측면에서 매우 우수할 뿐 아니라, 유연하게 구부리고 접을 수 있어 다양한 어플리케이션에 활용할 수 있습니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <h2 class="page_title">Why 삼성 OLED™?</h2><br><br>
                <h2>압도적인 화질</h2><br>
                <div class="half">
                    <div class="half-obj">
                        <img class="" src="./img/2st_2.jpg" alt="" width="100%" height="350px"><br><br><br><br>
                    </div>
                    <div class="half-txt">
                        <div>
                            <div class="txt-desc">
                                <p>삼성 OLED™는 스스로 빛을 내는 자발광 특성으로 인해 <span class="text-bold large_font">뛰어난 색재현성</span>을 자랑합니다. DCI-P3 120%에 해당하는 넓은 색재현력을 갖춰, 다양한 컬러를 실물처럼 생생하게 표현합니다. <span class="wsnr">또한 1,500cd/㎡</span> 이상의 높은 밝기와 낮은 반사율로 <span class="text-bold">햇빛이 강한 야외에서도 <span class="large_font">또렷하고 선명한 화질</span></span>을 볼 수 있어 실내외 관계없이 어느 곳에서든 효과적으로 콘텐츠를 감상할 수 있습니다.</p>
						        <p>*DCI-P3 : 디지털 영상 시대에 맞는 색영역으로 기존 sRGB보다 25% 넓은 색역표현이 가능</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="half">
                    <div class="half-obj">
                         <img class="" src="./img/2st_3.jpg" alt="" width="100%" height="auto">
                    </div>
                    <div class="half-txt">
                        <div>
                            <div class="txt-desc">
                                <p>삼성 OLED™는 0.0005nit 미만의 <span class="text-bold large_font">‘리얼 블랙(Real Black)’</span>을 구현하기 때문에 <span class="text-bold">명암비가 무한대</span>에 가깝습니다. 명암비는 디스플레이의 최대 휘도(화이트)와 최소 휘도(블랙) 차이를 수치로 표현한 것으로, 밝고 어두움의 정도를 세세히 표현할 수 있는 만큼 화질을 좌우하는 중요한 요소입니다.</p>
								<p>삼성 OLED™는 1,000,000:1 이상의 명암비로 디테일하면서 보다 깊고 입체감 있는 이미지 표현이 가능해 <span class="text-bold">HDR(High Dynamic Range)을 구현하는데 최적의 디스플레이</span>입니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>
    <div class="content" id="page2">
        <figure class="vs">
            <img src="./img/oled-kv-m.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel3" id="sel3" class="sel">
                    <option>제품기술</option>
                    <option value="1stmenu.jsp#page1">기업정보</option>
                    <option value="3stmenu.jsp#page1">지속가능경영</option>
                    <option value="4stmenu.jsp#page1">천안/아산인프라</option>
                    <option value="5stmenu.jsp#page1">인재/채용</option>  
                </select> &gt; 
                <select name="sel4" id="sel4" class="sel">
                    <option>QD-OLED</option>
                    <option value="2stmenu.jsp#page1">OLED Display</option>
                    <option value="2stmenu.jsp#page3">어플리케이션별 특징</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">QD-OLED</h2>
                <div class="txt"> 
                    <p>스스로 빛을 내는 퀀텀닷은 명암 단계별로 광범위하고 세밀하게 정확한 색 구현이 가능하며,<br>
                    효율적인 빛의 활용과 간단한 구조로 차세대 대형 디스플레이에 사용되고 있습니다.</p><br>
                    <img class="" src="./img/2st_6.jpg" alt="" width="100%" height="500px"><br><br>
                    <h2>What is QD-OLED?<br><br>퀀텀닷이란?</h2><br>
                    <img class="" src="./img/2st_7.jpg" alt="" width="100%" height="500px">
                    <div class="txt">
                        스스로 빛을 내는 퀀텀닷은 명암 단계별로 광범위하고 세밀하게 정확한 색 구현이 가능하며, <br>
                        효율적인 빛의 활용과 간단한 구조로 차세대 대형 디스플레이로 주목받고 있습니다.
                    </div>
                    <h2 class="page_title">QD-OLED 구조와 원리</h2><br>
                    <img class="" src="./img/2st_8.jpg" alt="" width="100%" height="500px">
                    <div class="txt1">
                        <p>Blue Self-emitting Layer</p>
                    </div>
                    <div class="txt2">
					    <p>QD Layer</p>
                    </div>
                    <div class="txt">
                        자발광 디스플레이인 QD-OLED는 발광원층을 조정하는 전자회로인 TFT층, 빛을 내는 발광원, 발광원의 빛을 활용해<br>
                         색을 표현해내는 QD 발광층으로 구성되어 있습니다.<br><br>
                        QD-OLED의 발광원으로는 빛 에너지가 가장 강한 BLUE를 활용하기 때문에 보다 밝은 휘도 표현이 가능합니다.<br><br>
                        특히 삼성디스플레이의 QD기술은 빛을 효율적으로 활용하는 전면 발광 방식을 활용하여, <br>
                        백라이트가 필요한 LCD에 비해 심플하고 효율적인 구조로 설계되어 얇고 가벼운 디스플레이를 제공합니다.<br><br><br>
                    </div>
                </div>

            </div>
        </section>
    </div>
    <div class="content" id="page3">
        <figure class="vs">
            <img src="./img/oled-kv-m.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <option>제품기술</option>
                    <option value="1stmenu.jsp#page1">기업정보</option>
                    <option value="3stmenu.jsp#page1">지속가능경영</option>
                    <option value="4stmenu.jsp#page1">천안/아산인프라</option>
                    <option value="5stmenu.jsp#page1">인재/채용</option>  
                </select> &gt; 
                <select name="sel6" id="sel6" class="sel">
                    <option>어플리케이션별 특징</option>
                    <option value="2stmenu.jsp#page1">OLED Display</option>
                    <option value="2stmenu.jsp#page2">QD-OLED</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">어플리케이션별 특징</h2><br>
                <h3>모바일</h3><br>
                <div class="half">
                    <div class="half-obj">
                        <img class="" src="./img/2st_10.jpg" alt="" width="100%" height="auto"><br><br><br>
                    </div>
                    <div class="half-txt">
                        <div>
                            <div class="txt-desc">
                                <p>삼성 OLED™는 언제, 어디에서나 선명하고 생생한 화질을 보여줍니다. 주변 환경이 상대적으로 밝은 야외에서는 디스플레이의 밝기, 색표현력, 채도 등이 실내보다 떨어져 보여 정확한 글자나 색을 인지하기 어려워집니다.</p>
								<p>삼성 OLED™는 <span class="text-bold">높은 휘도와 낮은 반사율</span>로 밝은 태양 아래의 야외 환경에서도 우수한 화질을 선사합니다. 10000lux가 넘는 밝은 환경에서도 LCD보다 2배가 넘는 DCI-P3 73%의 색영역을 충족하며 최고 휘도가 1500nit 이상을 구현해 글로벌 인증 기관 UL로부터 <span class="text-bold large_font">우수한 ‘야외 시인성(Sunlight Visibility)’</span>을 인증받았습니다.</p>
                            </div>
                        </div>
                    </div>
                </div> 
                <h3>IT(노트북/태블릿></h3>
                <div class="half">
                    <div class="half-obj">
                        <img class="" src="./img/2st_11.jpg" alt="" width="100%" height="auto"><br><br><br>
                    </div>
                    <div class="half-txt">
                        <div>
                            <div class="txt-desc">
                                <p><span class="text-bold">생생한 색표현력</span> 뿐만 아니라 <span class="text-bold">빠른 응답 속도</span>로 삼성 OLED™는 게이밍 제품으로도 크게 각광 받고 있습니다. 삼성디스플레이 OLED는 역동적이며 스피디한 액션 게임을 즐길 때 특히 중요한 화질 요소인 이미지 끌림(Blur Length)과 동영상 응답속도(MPRT)에서 각각 1.4mm 이하, 15.4ms이하를 기록해 글로벌 인증업체 SGS의 <span class="text-bold"><span class="large_font">‘게이밍 퍼포먼스</span>(Gaming Performance)’ 인증</span>을 획득했습니다.</p>
								<p>삼성 OLED™는 움직임이 많은 게임을 플레이할 때도 <span class="text-bold">끌림없이 매끄러운 화면 전환</span>으로 게임 몰입감을 한층 높였을 뿐 아니라, 순간적인 컨트롤이 중요한 게이머의 퍼포먼스를 최대로 발휘할 수 있는 환경을 제공합니다.</p>
								<p>생생하면서도 선명한 화질과 더불어 삼성 OLED™의 빠른 응답속도는 역동적이고 화려한 고사양 게임을 즐기는 소비자들에게 최고의 디스플레이 환경을 선사해줍니다.</p><br><br>
                            </div>
                        </div>
                    </div>
                </div> 
                <div class="half">
                    <div class="half-obj">
                        <img class="" src="./img/2st_12.jpg" alt="" width="100%" height="auto"><br><br><br>
                    </div>
                    <div class="half-txt">
                        <div>
                            <div class="txt-desc">
                                <p>삼성 OLED™는 디지털영화협회기준(DCI-P3) 컬러 볼륨 120%가 넘는 넓은 색 표현력과 0.0005nit 미만의 완벽한 블랙을 표현하는 화질 우수성을 인정받아 <span class="text-bold"><span class="large_font">‘시네마틱 익스피리언스(Cinematic Experience)’</span> 인증</span>을 받았습니다.</p>
								<p>UHD 해상도의 고화질 프리미엄 OLED 노트북은 빠른 응답속도, 탁월한 블랙표현, 높은 명암비와 뛰어난 색재현력 등 최고의 디스플레이 성능으로 영화나 영상 등을 감상할 때 <span class="text-bold">압도적인 화질</span>을 선사해줍니다.</p>
								<p>고성능 HDR 기술로 밝은 장면은 실제처럼 밝게, 어두운 장면은 보다 깊은 블랙을 표현해 마치 작은 영화관을 체험하는 듯 생생한 화면을 보여줍니다. 또한 <span class="text-bold">‘블레이드 베젤’ 기술</span>을 적용해 노트북 기기에서 화면이 차지하는 비율을 93%까지 구현해 <span class="text-bold">몰입감을 극대화</span>했습니다.</p>
                            </div>
                        </div>
                    </div>
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