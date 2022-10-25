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
    table {border-collapse: collapse;}
    th,td{ width: 600px; height: 60px; text-align: center; border: 1px solid #000; vertical-align: middle; font-size:16px;}
    
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
            <img src="./img/5st_0.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel1">
                    <option>인재/채용</option>
                    <option value="1stmenu.jsp#page1">기업정보</option>
                    <option value="2stmenu.jsp#page1">제품기술</option>
                    <option value="3stmenu.jsp#page1">지속가능경영</option>
                    <option value="4stmenu.jsp#page1">천안/아산인프라</option> 
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option>인재상</option>
                    <option value="5stmenu.jsp#page2">직무소개</option>
                    <option value="5stmenu.jsp#page3">회사생활</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">인재상</h2><br>
                <img src="./img/5st_1.jpg" alt="" width="100%" height="500px"><br><br>
                <div class="txt">
                    <h2>창의적 인재</h2><br>
                    <p>기존의 형식에서 벗어나 새로운 생각을 가지고 발상과 인식의 전환을 이끌어 낼 수 있는 창의적인인재, 목표의식과<br>
                    위기의식을 갖고 끊임없는 창의적인 개선을 통해 위기를 극복해 나갈 수 있는 인재. 바로 삼성디스플레이가 바라는 인재입니다.</p><br><br>
                    <img src="./img/5st_2.jpg" alt="" width="100%" height="500px"><br><br>
                    <h2>글로벌 인재</h2><br>
                    <p>한국을 넘어 세계로, 글로벌 초일류 기업을 향하여 나가는 삼성디스플레이와 함께할 인재,<br>
                      뛰어난 외국어 실력과 다양한 문화에 쉽게 적응할 수 있는 인재. 바로 삼성디스플레이가 꿈꾸는 인재입니다.</p><br><br>
                      <img src="./img/5st_3.jpg" alt="" width="100%" height="500px"><br><br>
                    <h2>도전적 인재</h2><br>
                    <p>어렵고 남들이 기피하는 분야에도 도전하는 개척정신과 변화의 개혁을 선도하려는 강한 모험정신을 가진 인재,<br>
                     실패를 두려워 하지않는 인재. 바로 삼성디스플레이가 원하는 인재입니다.</p><br><br>
                    <img src="./img/5st_4.jpg" alt="" width="100%" height="500px"><br><br>
                    <h2>전문인재</h2><br>
                    <p>한 분야의 전문 지식을 기반으로 다양한 분야의 지식을 창출할 수 있는 인재, 이러한 전문성을 통하여 <br>
                    고객의 Needs를 파악해 끊임없이 기술과 시장의 영역을 넓혀가는 인재. 바로 삼성디스플레이가 꿈꾸는 인재입니다.</p><br><br><br>
                </div>
            </div>
        </section>
    </div>
    <div class="content" id="page2">
        <figure class="vs">
            <img src="./img/5st_0.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel3" id="sel3" class="sel">
                    <option>인재/채용</option>
                    <option value="1stmenu.jsp#page1">기업정보</option>
                    <option value="2stmenu.jsp#page1">제품기술</option>
                    <option value="3stmenu.jsp#page1">지속가능경영</option>
                    <option value="4stmenu.jsp#page1">천안/아산인프라</option>    
                </select> &gt; 
                <select name="sel4" id="sel4" class="sel">
                    <option>직무소개</option>
                    <option value="5stmenu.jsp#page1">인재상</option>
                    <option value="5stmenu.jsp#page3">회사생활</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">직무소개</h2>
                <div class="txt">
                    <p>삼성디스플레이의 다양한 직무를 소개해 드립니다.</p><br>
                    <img src="./img/5st_5.jpg" alt="" width="100%" height="500px"><br><br>
                    <h2>연구개발 부문</h2><br>
                    <p>제품개발 단계의 연구개발 직접활동 또는 제품수율/특성및 품질향상을 위한 구동/소재/공정/시스템 개선 등의 직·간접적 엔지니어링 업무</p><br>
                    <table>
                        <tr>
                            <th>직무</th>
                            <th>내용</th>
                            <th>전공계열</th>
                        </tr>
                        <tr>
                            <td>패널개발</td>
                            <td>디스플레이 화면의 구조를 설계하고. 설계된 디스플레이의 구현 및 특성·신뢰성 확보를 위해 공정을 최적화하는 업무입니다.</td>
                            <td>전기전자(HW), 재료/금속, 화학/화공, 섬유/고분자, 기계, 물리</td>
                        </tr>
                        <tr>
                            <td>구동개발</td>
                            <td>디스플레이 화면의 구동을 위한 부품의 개발 및 전기회로를 설계하고, 전기적 특성 평가 및 최적화를 통해 제품의 특성을 향상시키는 업무입니다.</td>
                            <td>전기전자(HW), 물리</td>
                        </tr>
                        <tr>
                            <td>설비개발</td>
                            <td>디스플레이 생산을 위한 첨단 설비를 개발하고, Smart Factory 구현을 위한 H/W, S/W 기술을 개발합니다.</td>
                            <td>기계, 전기전자(HW), 물리</td>
                        </tr>
                        <tr>
                            <td>재료개발</td>
                            <td>유/무기 재료의 합성 및 신뢰성 평가/분석을 통해 제품의 성능과 수명을 개선하는 업무를 수행합니다.</td>
                            <td>화학/화공, 재료/금속, 섬유/고분자, 물리</td>
                        </tr>
                        <tr>
                            <td>공정개발</td>
                            <td>디스플레이 생산 공정의 최적화 및 수율 안정화를 위해 단위 공정별 요소기술을 개발하고, 검사, 측정, 분석 등을 진행합니다.</td>
                            <td>전기전자(HW), 재료/금속, 화학/화공, 섬유/고분자, 기계, 물리, 산공, 수학, 통계</td>
                        </tr>
                        </table><br><br><br>
                        <h2>소프트웨어 부문</h2><br>
                        <p>효율적인 시스템 개발, 유지보수 활동 또는 시스템으로 작성한 모델링을 통한 설계 전 해석, 예측(simulation)하는 업무</p><br>
                        <table>
                            <tr>
                                <th>직무</th>
                                <th>내용</th>
                                <th>전공계열</th>
                            </tr>
                            <tr>
                                <td>시스템 소프트웨어</td>
                                <td>Smart Factory 구현을 위한 시스템 및 S/W를 개발/운영하는 업무입니다.</td>
                                <td>전기전자(SW), 전산/컴퓨터, 물리, 수학</td>
                            </tr>
                            </table><br><br><br>
                            <h2>설비엔지니어 부문</h2><br>
                            <p>설비 개선분석, 유지보수, Facility(생산Infra), Utility 운영/개선을 통한 기술 활동 및 계측/검교정 등 설비 엔지니어링 업무</p><br>
                            <table>
                            <tr>
                                <th>직무</th>
                                <th>내용</th>
                                <th>전공계열</th>
                            </tr>
                            <tr>
                                <td>설비기술</td>
                                <td>제품의 품질 및 생산성 향상을 위한 설비의 성능개선, 오류대응, 유지관리, 설비조건 설계, 제어기술 개발, 자동화 설비제작 기술지원을 수행합니다.</td>
                                <td>전기전자(HW), 재료/금속, 화학/화공, 기계, 물리, 수학</td>
                            </tr>
                            <tr>
                                <td>Infra기술</td>
                                <td>국내/외 사업장의 Gas, Chemical 및 전력을 안정적으로 공급하고, 관련 설비를 유지 및 관리하기 위한 업무입니다.</td>
                                <td>전기전자(HW), 기계, 수학</td>
                            </tr>
                            </table><br><br>
                            <h2>경영지원 부문</h2><br>
                            <p>경영지원의 효율적인 관리 및 운영, 지원 업무</p><br>
                            <table>
                                <tr>
                                    <th>직무</th>
                                    <th>내용</th>
                                    <th>전공계열</th>
                                </tr>
                                <tr>
                                    <td>기획</td>
                                    <td>사업전략 및 기술전략 수립, 시장/경쟁사 분석, 투자 운영 등을 진행합니다.</td>
                                    <td>전공무관</td>
                                </tr>
                                <tr>
                                    <td>재무</td>
                                    <td>재무 관리, 회계, 결산, 수출입, 세무, 자금 기획/운영하는 업무입니다.</td>
                                    <td>전공무관</td>
                                </tr>
                                <tr>
                                    <td>인사</td>
                                    <td>인적 자원의 효율적 관리, 인재 채용/양성을 위한 업무를 수행합니다.</td>
                                    <td>전공무관</td>
                                </tr>
                                <tr>
                                    <td>법무</td>
                                    <td>법무 기획, 라이센싱, 컴플라이언스, 법률 자문/컨설팅, 준법 교육 등의 업무를 진행합니다.</td>
                                    <td>전공무관</td>
                                </tr>
                                <tr>
                                    <td>홍보</td>
                                    <td>사내/외 홍보 전략 수립, 언론/소셜미디어 홍보, 임직원들의 소통을 위한 컨텐츠를 기획/제작하는 업무입니다.</td>
                                    <td>전공무관</td>
                                </tr>
                                <tr>
                                    <td>구매</td>
                                    <td>장/단기 구매 전략 수립, 설비 구매, 조달 기획, 자재 관리를 진행합니다.</td>
                                    <td>전공무관</td>
                                </tr>
                                </table><br><br>
                                <h2>영업마케팅 부문</h2><br>
                                <p>국내외 판매활동을 위한 고객 확보, 수주 출하에 걸친 직·간접적 영업 업무</p><br>
                                <table>
                                    <tr>
                                        <th>직무</th>
                                        <th>내용</th>
                                        <th>전공계열</th>
                                    </tr>
                                    <tr>
                                        <td>영업</td>
                                        <td>고객관리, 수주물량 확보, 양산물량 및 판가관리를 진행합니다.</td>
                                        <td>전공무관</td>
                                    </tr>
                                    <tr>
                                        <td>마케팅</td>
                                        <td>수요 전망 예측/분석, 마케팅전략 수립, 수익성 관리를 진행합니다.</td>
                                        <td>전공무관</td>
                                    </tr>
                                </table><br><br>
                            </table>
                    </table>
                </div>
            </div>
        </section>
    </div>
    <div class="content" id="page3">
        <figure class="vs">
            <img src="./img/5st_0.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <option>인재/채용</option>
                    <option value="1stmenu.jsp#page1">기업정보</option>
                    <option value="2stmenu.jsp#page1">제품기술</option>
                    <option value="3stmenu.jsp#page1">지속가능경영</option>
                    <option value="4stmenu.jsp#page1">천안/아산인프라</option> 
                </select> &gt; 
                <select name="sel6" id="sel6" class="sel">
                    <option>회사생활</option>
                    <option value="5stmenu.jsp#page1">인재상</option>
                    <option value="5stmenu.jsp#page2">직무소개</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">회사생활</h2>
                <div class="txt">
                    <p>삼성디스플레이는 우수한 인재가 마음껏 역량을 발휘해 나갈 수 있는 기반들을 마련하고 있습니다.</p><br>
                    <img src="./img/5st_6.jpg" alt="" width="100%" height="500px"><br><br>
                    <h2>복리후생</h2><br>
                    <p>법정 복리후생(건강보험, 국민연금, 고용보험, 산업재해보상보험) 외에도 다양한 복지혜택을 누리실 수 있습니다.</p><br>
                    <table>
                        <tr>
                            <th>혜택</th>
                            <th>내용</th>
                        </tr>
                        <tr>
                            <td>생활 지원</td>
                            <td>통근버스, 사내식당, 기숙사 제공 및 자녀 학자금, 경조사 지원,각종 연금 및 보험 혜택 등 생활 전반에 대한 지원</td>
                        </tr>
                        <tr>
                            <td>건강 보장 및 의료 혜택</td>
                            <td>개개인의 체력과 건강관리를 위해 정기 건강진단 및 의료비 지원,
                                휘트니스 센터 및 사내병원 운영</td>
                        </tr>
                        <tr>
                            <td>여가 지원</td>
                            <td>콘도 및 에버랜드/캐리비안 베이 등 각종 레져시설 이용 및 동호회 활동 등 여가생활 지원</td>
                        </tr>
                        <tr>
                            <td>복지포인트</td>
                            <td>복리후생 항목을 선택하여 사용할 수 있는 복지포인트 제공</td>
                        </tr>
                        <tr>
                            <td>기타 서비스</td>
                            <td>상담센터, 법률 상담 서비스, 결혼/출산 기념 복지포인트 지급</td>
                        </tr>
                    </table><br><br>
                    <h2>워킹맘의 지원군 '탕정삼성어린이집'</h2><br>
                    <img src="./img/5st_7.jpg" alt="" width="100%" height="500px"><br><br>
                    <p>삼성디스플레이에서는 일과 가정의 양립을 위해 고민하는 워킹맘 임직원을 지원하기 위해 직장 어린이집을 운영하고 있습니다.</p><br><br>
                    <h2>꽃 향기 가득한 삼성디스플레이 사무공간</h2><br>
                    <img src="./img/5st_8.jpg" alt="" width="100%" height="500px"><br><br>
                    <p>쉴 틈 없이 흘러가는 일상 속 삼성디스플레이 사무실에는 매주마다 쉼표 하나씩 배달됩니다. 잠깐의 휴식을 가져다 주는 ‘원테이블 원플라워’<br>
                         서비스 덕분입니다.</p><br>
                    <h2>편리한 출퇴근을 책임지는 삼성디스플레이 통근버스</h2><br>
                    <img src="./img/5st_9.jpg" alt="" width="100%" height="500px"><br><br>
                    <p>각 지역에서 생활하는 임직원들과 삼성디스플레이 아산, 기흥의 각 사업장을 잇는 든든한 두 다리가 되어주는 통근버스의 이모저모를<br>
                         소개해 드립니다.</p><br>
                    <h2>따뜻한 식사를 책임지는 에너지 충전소, ‘사내 식당’</h2><br>
                    <img src="./img/5st_10.jpg" alt="" width="100%" height="500px"><br><br>
                    <p>맛과 영양을 모두 잡은 따뜻한 끼니를 먹을 수 있어 임직원들의 발길이 끊이지 않는 그곳, 아산 1캠퍼스의 사내 식당 블루홀입니다.</p><br>
                    <h2>임직원들의 힐링스팟, 삼성디스플레이 열린상담센터</h2><br>
                    <img src="./img/5st_11.jpg" alt="" width="100%" height="500px"><br><br>
                    <p>삼성디스플레이는 임직원들의 스트레스 증상 관리와 정신 건강 정보 제공 등을 위해 사내 열린상담센터를 운영하고 있습니다.</p><br>
                    <h2>사우들의 편안한 주거공간, 삼성디스플레이 기숙사</h2><br>
                    <img src="./img/5st_12.jpg" alt="" width="100%" height="500px"><br><br>
                    <p>삼성디스플레이는 장거리 출퇴근이 어려운 사우들을 위해 기숙사를 운영하고 있으며, 사우들이 보다 편리한 주거 생활이 가능하도록 다양한 시설들을 지원하고 있습니다.</p><br>
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