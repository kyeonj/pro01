<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
    .txt {margin-top: 30px; font-size: 18px; }

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
            <img src="./img/3st_1.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel1">
                    <option>지속가능경영</option>
                    <option value="1stmenu.jsp#page1">기업정보</option>
                    <option value="2stmenu.jsp#page1">제품기술</option>
                    <option value="4stmenu.jsp#page1">천안/아산인프라</option>
                    <option value="5stmenu.jsp#page1">인재/채용</option> 
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option>인권정책</option>
                    <option value="3stmenu.jsp#page2">녹색경영</option>
                    <option value="3stmenu.jsp#page3">준법경영</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">인권정책 <br><br> Responsible Labor Practice</h2>
                <div class="txt">
                    <p>삼성디스플레이는 임직원이 가지는 존엄의 가치를 존중하고,
                    행복을 추구할 권리를 보장하는 등 인권보호에 앞장서고 있습니다.<br><br><br>
                    <h2>Global Labor Practice</h2><br>
                    삼성디스플레이는 UN 및 ILO를 포함한 노동 관련 국제기구의 기준뿐만 아니라,<br>
                    RBA(Responsible Business Alliance)에서 요구하는 엄격한 근로조건을 준수하기 위해<br>
                    지속적으로 노력하고 있습니다. 이에 아래와 같이 'Global Labor Practice'를 제정하였으며,<br>
                    인권 및 노동과 관련된 모든 정책에 대해서는 아래 규정의 내용을 반영하고,<br>
                    만일 위 규정과 각 국가 및 지역의 노동 관련 법령이 상이할 경우, 보다 엄격한 기준을 적용하고 있습니다.<br><br>
                    1. 임직원들의 인권을존중합니다.<br>
                    회사는 모든 임직원이 가지는 기본적 인권을 확인하고 이를 보장 하도록 적극 노력합니다.<br>
                    만일 회사가 폭언 · 폭행뿐만 아니라 성희롱, 직장 내 괴롭힘 등 비인격적인 행위를 확인할 경우, 사내 규정에 의해 즉시 조치합니다.<br><br>
                    2. 차별을 하지않습니다.<br>
                    회사는 임직원의 성별, 나이, 출신 국가, 인종, 종교, 혼인, 임신 또는 출산 등의 사유로<br>
                     합리적인 이유 없이 채용 또는 임금, 승격 등의 근로조건을 다르게 하거나 그 밖에 불리한 조치를 하지 않습니다.<br><br>
                    3. 최저임금 이상의 급여를 적기에 지급합니다.<br>
                    회사는 각 국가에서 정한 노동관계법에 따라 최저임금 이상의 급여를 적기에 지급하고 
                    이에 대한 급여명세서를 제공하고있습니다. <br>
                    또한 연장 · 야간 · 휴일 근로가 발생할 경우, 각 법령에서 요구하는 수당을 지급하고 있습니다.<br><br>
                    4. 강제노동을금지합니다.<br>
                    회사는 폭행, 협박, 감금, 그 밖에 신체 · 정신상의 자유를 부당하게 구속하는 수단으로 임직원의 자유의사에 <br>
                     어긋나는 노동을 강요하지 않습니다. 또한 회사는 강제노동이 발생하지 않도록 국제적으로 인정하는 신분증 원본 일체의 <br>
                     양도를 금지하고 있으며, 퇴직의 자유도 보장합니다.<br><br>
                    5. 근로시간 및 휴무 규정을 준수합니다.
                    회사는 각 국가의 노동관계법에서 정한 근로시간, 연장·야간·휴일 근로, 휴게시간, 휴무 규정을 준수<br>
                    하고 있으며, 이행 여부를 정기적으로 확인하고 있습니다.<br>
                    또한 임직원이 연속 6일 근무를 하였을 경우에는 1일 이상의 휴일을 부여하도록 조치하고 있습니다.<br>
                    만일 각 국가에서 관련된 규정이 없을 경우에는, RBA 기준에 따라 1주의 총 근로시간이 60시간을 초과하지 않도록 관리하고 있습니다.<br><br>
                    6. 아동 근로자를 채용하지 않습니다.<br>
                    회사는 각 국가에서 지정하는 최저 고용 연령을 준수함과 동시에 만 18세 미만의 청소년을 고용하지 않도록<br>
                    채용 프로세스를 운영하고 있습니다.<br>
                    또한 회사는 만 18세 미만의 청소년 고용 여부를 주기적으로 점검하고 있으며, 만일 이를 확인할 경우 생산에 직접적인 업무뿐만 아니라<br>
                    안전보건상 유해한 업무를 부여하지 않도록 조치하고 야간 및 초과근무가 발생하지 않도록 관리합니다.<br>
                    인턴 혹은 실습활동을 운영할 경우에는 각 국가의 관련 법령을 준수하는지 지속적으로 확인합니다.<br><br>
                    7. 결사의 자유를 보장합니다.<br>
                    회사는 각 국가에서 정한 노동관계법 및 국제노동기구(ILO)에서 규정한 단결권, 단체교섭권 및 단체행동권을 보장하고 있으며,<br>
                    노동조합 가입 및 활동을 이유로 부당한 처우를 하지 않습니다.<br>
                    이는 결사의 자유로서, 평화로운 집회에 참여할 자유뿐만 아니라 참여하지 않을 자유도 보장합니다.<br><br>
                    8. 온/오프라인 고충처리 프로세스를 운영하고 있습니다.<br>
                    회사는 사내 게시판(Say+), 신문고, 상담센터, 현장관리자 등을 통하여 임직원의 고충을 온/오프라인으로 365일 확인하고 있습니다.<br>
                    만일 임직원의 고충이 확인되면, 사내 정책에 따라 적의 처리하고 있으며, 필요에 따라 제보자 보호 정책을 시행하고 있습니다.<br><br>
                    9. 연 1회 인권 보호 여부를 점검합니다.
                    회사는 국제노동기구(ILO) 및 RBA에서 요구하는 항목에 대해 정책을 적절하게 운영하고 있는지 <br>
                    연 1회 자체 점검을 하고 있습니다. 만일 일부 미흡사항을 확인할 경우, 즉시 조치하고 있습니다.</p><br><br>
                </div>
            </div>
        </section>
    </div>
    <div class="content" id="page2">
        <figure class="vs">
            <img src="./img/3st_1.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel3" id="sel3" class="sel">
                    <option>지속가능경영</option>
                    <option value="1stmenu.jsp#page1">기업정보</option>
                    <option value="2stmenu.jsp#page1">제품기술</option>
                    <option value="4stmenu.jsp#page1">천안/아산인프라</option>
                    <option value="5stmenu.jsp#page1">인재/채용</option>   
                </select> &gt; 
                <select name="sel4" id="sel4" class="sel">
                    <option>녹색경영</option>
                    <option value="3stmenu.jsp#page1">인권정책</option>
                    <option value="3stmenu.jsp#page3">준법경영</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">녹색경영</h2>
                <div class="txt">
                    <p>삼성디스플레이는 윤리와 환경, 사회를 핵심가치로 삼는 지속가능경영을 하고 있습니다.</p><br><br>
                    <h2>녹색경영 기본이념 및 비전</h2><br>
                    <p>글로벌 안전ㆍ보건ㆍ환경 경영체계 강화<br>
                        - 안전보건, 환경, 에너지 관련 국내·외 법규 및 협약을 준수한다.<br>
                        - 모든 사업활동에 엄격한 내부 관리기준을 적용하고 충실히 이행한다.<br>
                        - 모든 종사자가 안전·보건·환경 경영체계를 이해하고 실천할 수 있도록 교육을 실시한다.<br>
                        - 안전·보건·환경 경영 방침 및 경영성과를 대내·외 이해관계자에게 공개한다.</p><br><br>
                    <p>안전하고 건강한 사업장 구현<br>
                        - 모든 종사자가 동참하는 안전문화를 조성하여 안전한 작업환경을 확보한다.<br>
                        - 공정안전 선행관리를 생활화하여 유해 위험요인을 개선한다.<br>
                        - 모든 종사자의 건강증진과 감염병 예방을 위해 노력한다.<br>
                        - 외부 위험요인으로부터 종사자 및 지역주민을 보호하고, 사업연속성을 위하여 비상대응체계를 유지한다.</p><br><br>
                    <p>제품 전과정 책임주의 실천<br>
                        - 유해물질을 함유하지 않는 원자재, 부품, 포장재를 구매한다.<br>
                        - 제품의 개발, 제조, 물류, 사용, 폐기에 이르는 전 과정의 환경 영향을 최소화한다.</p><br><br>
                    <p>생산공정 친환경 실천<br>
                        - 생산 과정의 오염물질, 화학물질 배출과 에너지 및 수자원 사용을 저감하고, 폐수, 폐기물 재이용 및 재활용을 활성화한다.<br>
                        - 청정생산기술 도입을 확산하여 공정을 혁신하고 친환경 생산 역량을 강화한다.<br>
                        - 당사의 탄소중립 목표 달성과 글로벌 기후변화 대응을 위해 지속적으로 노력한다.</p><br><br>
                    <p>상생 파트너십 강화<br>
                        - 안전·보건·환경 경영체계 및 환경 안전 기술을 협력사와 공유하여 친환경적 사업 관계를 형성한다.<br>
                        - 지역사회 환경 및 생태 보전을 지속적으로 관리하고, 이해관계자 소통을 기반으로 한 긍정적 가치를 창출한다.</p><br><br><br>
                </div>
            </div>
        </section>
    </div>
    <div class="content" id="page3">
        <figure class="vs">
            <img src="./img/3st_1.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <option>지속가능경영</option>
                    <option value="1stmenu.jsp#page1">기업정보</option>
                    <option value="2stmenu.jsp#page1">제품기술</option>
                    <option value="4stmenu.jsp#page1">천안/아산인프라</option>
                    <option value="5stmenu.jsp#page1">인재/채용</option>  
                </select> &gt; 
                <select name="sel6" id="sel6" class="sel">
                    <option>준법경영</option>
                    <option value="3stmenu.jsp#page1">인권정책</option>
                    <option value="3stmenu.jsp#page2">준법경영</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">준법경영</h2>
                <div class="txt">
                    <p>국내외 법규를 철저히 준수하는 삼성디스플레이가 되겠습니다.</p><br><br><br>
                    <p>삼성디스플레이는 준법경영이 기업경영의 필수 조건임을 인식하고,<br>
                    법적 문제로 인한 경영리스크 발생을 예방하기 위해 Compliance Program을 운영하고 있습니다.<br><br>   
                    삼성디스플레이 임직원 모두는 국내외 법규를 철저히 준수하여<br>
                    신뢰받는 정직한 기업으로 글로벌 시장에 우뚝 설 수 있도록 최선의 노력을 다하겠습니다.</p><br><br>
                    <h2>Compliance 제보</h2><br>
                    <p>임직원이 법규를 위반하였거나 위반할 우려가 있는 행위에 대한 제보를 받아,<br>
                        비공개 방식으로 처리합니다. 제보자의 인적사항과 제보 내용은 절대적으로 비밀로 보호되며,<br>
                        제보자는 제보로 인해 어떠한 인사상의 불이익도 받지 않습니다.<br><br>
                        위의 신원보호 원칙은 임직원의 사내 제보 및 사외 공익제보 뿐만 아니라, 임직원 외 제3자의 제보에도 동일하게 적용됩니다.</p><br><br>
                    <p>제보 대상<br>
                        · 공정거래법 위반 행위<br>
                        · 영업비밀 침해 행위<br>
                        · 반부패 법규 위반 행위<br>
                        · 개인정보보호법 위반 행위<br>
                        · 허위/과장광고 관련 위반 행위<br>
                        · 기타 법 위반 행위</p><br><br>
                    <p>제보 방법<br>
                        · E-mail : yg770427.kim@samsung.com<br>
                        · 전화 : 031-5181-0291<br>
                        · 팩스 : 031-5181-3636(사서함 0291)<br>
                        · 서면 :경기도 용인시 기흥구 삼성로1<br>
                        · 삼성디스플레이 Compliance팀</p><br><br>
                    <p>제보 처리<br>
                        제보 내용에 대한 처리 결과는 최대한 빠른 시일 내 전화나 E-mail로 회신해 드립니다.<br><br>                        
                        익명 제보의 내용이 구체적이지 않고
                        사실근거가 불분명한 경우,
                        조사를 진행하지 않을 수 있습니다.</p><br><br>
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