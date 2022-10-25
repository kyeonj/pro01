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
    .home {color: #333;}
    .to_top { position:fixed; bottom:40px; right:40px; z-index:999; 
    background-color:aliceblue; color:lightskyblue; display:block; width: 50px;
    height: 50px; line-height: 50px; text-align: center; font-size:20px; border-radius:32px; 
    visibility:hidden; transition-duration:0.8s; }
    .to_top:hover { background-color:lightpink; color:hotpink;}
    .to_top.on { visibility: visible; }
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
            <img src="./img/4st_1.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel1">
                    <option>천안/아산인프라</option>
                    <option value="1stmenu.jsp#page1">기업정보</option>
                    <option value="2stmenu.jsp#page1">제품기술</option>
                    <option value="3stmenu.jsp#page1">지속가능경영</option>
                    <option value="5stmenu.jsp#page1">인재/채용</option> 
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option>디스플레이의 메카</option>
                    <option value="4stmenu.jsp#page2">교통/주거 인프라</option>
                    <option value="4stmenu.jsp#page3">교육/문화/복지 인프라</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">디스플레이의 메카</h2><br>
                <div class="txt">
                    <p>천안과 아산은 디스플레이와 2차전지 등 첨단 산업의 급성장에 힘입어 눈부신 속도로 발전하고 있습니다.<br>
                    대규모 택지 개발과 산업단지 조성으로 유입되는 인구가 빠르게 늘어나면서 주거·문화·교육 인프라도 급속히 발전하고 있습니다.<br>
                    천안·아산지역은 삼성디스플레이를 비롯한 디스플레이 기업 및 협력업체가 밀집되어있는 디스플레이의 메카 입니다.<br>
                    삼성디스플레이는 이곳에 AMOLED 라인 2개와 TFT-LCD 라인 6개를 보유하고 있습니다.<br>
                    또한 LCD용 유리기판을 비롯해 첨단 재료를 만드는 삼성코닝정밀소재 공장이 가동중입니다.<br><br></p>
                    <img src="./img/4st_2.jpg" alt="천안아산이미지" width="100%" height="500px">
                    <div class="txt" id="txt1">
                        <h2>황해 경제권이 중심 천안·아산</h2><br><br>
                        <p>천안·아산지역은 황해경제권의 중심입니다.<br>
                        충남은 당진·평택항 인근의 충남(송악·인주·지곡) 및 경기(포승·항남)지역을 중심으로 지정된 황해경제 지유구역의 중심지입니다.<br>
                        황해경제자유구역에는 2025년까지 3단계에 걸쳐 총 7조 4450억원의 사업비가투입되어 첨단산업생산, 국제물류, 관광, 연구단지가<br>
                        조성될 예정입니다. 황해경제자유구역 개발이 끝나면 첨단 전자·정보 산업의 메카로서 충남의 입지는 더욱 굳건해질 것입니다.</p><br><br><br> 
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="content" id="page2">
        <figure class="vs">
            <img src="./img/4st_1.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel3" id="sel3" class="sel">
                    <option>천안/아산인프라</option>
                    <option value="1stmenu.jsp#page1">기업정보</option>
                    <option value="2stmenu.jsp#page1">제품기술</option>
                    <option value="3stmenu.jsp#page1">지속가능경영</option>
                    <option value="5stmenu.jsp#page1">인재/채용</option>    
                </select> &gt; 
                <select name="sel4" id="sel4" class="sel">
                    <option>교통/주거 인프라</option>
                    <option value="4stmenu.jsp#page1">디스플레이의 메카</option>
                    <option value="4stmenu.jsp#page3">교육/문화/복지 인프라</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">교통/주거 인프라</h2>
                <div class="txt">
                    <img src="./img/4st_3.jpg" alt="천안아산이미지" width="100%" height="500px"><br><br>
                    <h2>KTX 천안 아산역</h2><br>
                    <p>KTX 이용시 서울역에서는 34분, 대전에서는 20분이 걸립니다, 2009년 개통된 서수원-오산-평택간 고속도로와 연계된<br>
                        서울-용인 고속도로, 용인-동탄-오산 도로를 통하면 자동차로도 서울에서 1시간 가량의 시간으로 도착할 수 있습니다.<br>
                        아산 신도시 전용출구인 북천안 IC가 개통되면 시간대를 제외한다면 서울 강남에서 자동차로 40분만에 도착하는 거리가 될 것입니다.</p><br><br>
                        <img src="./img/4st_4.jpg" alt="천안아산이미지" width="100%" height="500px"><br><br>
                    <h2>도시계획에 따른 수도권 거점도시</h2><br>
                    <p>천안시는 청당지구, 북부지구, 천안아산 신도시 2단계 지구 등에서 계획적인 도시계발을 추진하고 있습니다.<br>
                        복합테마파크타운조성, 동서관통도로 개설 등 원도심 활성화와 남부대로~신방통정지구 연결도로를 개설할 예정이며,<br>
                         천안 경전철, 천안~청주공항 복선전철 연결, 풍세 및 제5산업단지 진입도로 등 기간 도로망을구축하고 있습니다.</p><br><br>
                </div>
            </div>
        </section>
    </div>
    <div class="content" id="page3">
        <figure class="vs">
            <img src="./img/4st_1.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <option>천안/아산인프라</option>
                    <option value="1stmenu.jsp#page1">기업정보</option>
                    <option value="2stmenu.jsp#page1">제품기술</option>
                    <option value="3stmenu.jsp#page1">지속가능경영</option>
                    <option value="5stmenu.jsp#page1">인재/채용</option>  
                </select> &gt; 
                <select name="sel6" id="sel6" class="sel">
                    <option>교육/문화/복지 인프라</option>
                    <option value="4stmenu.jsp#page1">디스플레이의 메카</option>
                    <option value="4stmenu.jsp#page2">교통/주거 인프라</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">교육/문화/복지 인프라</h2>
                <div class="txt">
                    <img src="./img/4st_5.jpg" alt="천안아산이미지" width="100%" height="500px"><br><br>
                    <h2>교육인프라</h2><br>
                    <p>천안 아산 지역에는 18개 대학교 및 대학교 캠퍼스가 위치해 있습니다.<br>
                     충남 지역 최초의 외국어고등학교인 충남외고가 2008년 개교함으로써 명실상부한 교육도시로서의 위상을 확고히 해나가고 있습니다.</p><br><br>
                    <img src="./img/4st_6.jpg" alt="천안아산이미지" width="100%" height="500px"><br><br>
                    <h2>문화인프라</h2><br>
                    <p>천안사는 신방 도서관 및 문화청소년수련관 건립 등으로 지식경제 시대에 평생 교육도시로서 기반을 쌓아나가고 있습니다.<br>
                     천안시는 흥타령 축제의 특색화, 천안종합문화예술회관 건립, 문화광장 조성, 천안시 문화재단 설립 등 문화예술 인프라가 확충되고 있습니다.<br>
                     아산시는 디스플레이 산업 발전과 함께 녹색 첨단 도시로 빠르게 성장하고 있습니다.<br>
                     충무공의 얼을 기르는 현충사와 역대 임금들이 애용해 온 온양온천 등 풍성한 문화유산과 영인산 자연휴양림, 신정호 관광지 등<br>
                      아름다운 자연환경을 자랑합니다.</p><br><br>
                    <img src="./img/4st_7.jpg" alt="천안아산이미지" width="100%" height="500px"><br><br>
                    <h2>복지인프라</h2><br>
                    <p>WHO (세계보건기구) 국제안전도시 인증 확정 천안시는 WHO국제안전-건강도시 내실 운영을 위해 내실 있는 <br>
                        시민 안정 및 건강증진 프로그램을 적극적으로 개발하고 있습니다.<br>
                        또한 관계 기관 및 단체와의 긴밀한 협력 네트워크를 구축함으로써, 시민들이 생활 속에서 <br>
                        안전하고 건강한 삶을 영위할 수 있도록 지원하고 있습니다.</p>
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