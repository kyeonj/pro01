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
    .hd {width: 100%; position:fixed; top: 0; left: 0; z-index: 91;
        background-color: #fff; height: 130px;}
    .hd_wrap {width: 1200px; margin: 0 auto;}
    .logo {display: block; width: 150px; height: 20px; margin-top: 30px; margin-bottom: 40px; float: left;}
    .logo img {display: block; width: 100%; height: auto;}
    .tnb {float:right; margin: 30px 0px; margin-top: 35px;}
    .tnb a { padding: 1.5em; font-size:14px; color:#333; }
    .tnb a:hover { font-weight:700; text-decoration: underline; }
    .gnb { clear:both; width: 100%;}
    .gnb:after {content: ""; display: block; clear: both;}
    .gnb > ul:after {content: ""; display: block; clear: both; }
    .gnb > ul > li {float: left; width: 20%; line-height: 40px; height: 40px; position: relative;}
    .gnb .dp1 {display: block; color: #333; text-align: center; background-color:aliceblue; font-size: 16px;}
    .gnb li { float:left; }
    .gnb li .sub { display:none; }
    .gnb li:hover .dp1 {color: #333; background-color:aliceblue; }
    .gnb .sub {display:none; width: 100%; height: auto; position: absolute; top: 40px; 
        background-color :aliceblue; left: 0; z-index: 90; height: 124px; }
    .gnb li:hover .sub {display: block; }
    .gnb li .sub li {clear: both; height: 30px; line-height: 30px; border-bottom: 2px solid #fff; width: 100%;}
    .gnb li .sub li a{ background: aliceblue; color:rgb(117, 116, 116); font-size: 15px; display: block; 
    overflow: hidden; text-indent: 2em; white-space: nowrap;}
    .gnb li .sub li:hover a { color:lightpink }
    .content {clear: both; width: 100%; }
    .vs { clear: both; width: 100%; height: 100vh; overflow: hidden;}
    .vdo {display:block; width: 100%; height: auto; }

    /* content */
    .page { clear: both; width: 100%;}
    .page_wrap {width: 1200px; margin: 0 auto;}
    #page1, #page3 { background-color:azure; }
    .page_tit { text-align: center; font-size:25px; padding-top:1.2em; padding-bottom: 0.8em; }
    .lst { clear:both; width: 1200px; }
    .lst:after { content:""; display:block; clear: both;}
    .lst li {margin-bottom: 40px;}
    .lst li.left { float:left; width: 816px; height: 459px; }
    .lst li.right { float:right; width: 350px; height: 459px;}
    .ico_lst {clear:both; width: 100%; overflow: hidden;}
    .ico_lst li a {display: block; background-repeat: no-repeat; background-position: 0 center;
     padding-left: 55px; background-size:auto 90%; }
    .ico_lst li a.icon1 { background-image: url("./img/icon/ico.png");}
    .ico_lst li a.icon2 { background-image: url("./img/icon/ico.png");}
    .ico_lst li a.icon3 { background-image: url("./img/icon/ico.png");}
    .cate_tit { color: #333; font-style: 22px; padding-bottom: 0.5em; overflow: hidden; text-overflow: ellipsis; white-space:nowrap; }
    .cate_com { color: #333; font-size: 18px; text-overflow: ellipsis; white-space:nowrap; overflow: hidden;  }
    
    #page2 {background-color:rgba(255, 227, 255, 0.192);}
    .pic_lst {clear:both; width: 100%;}
    .pic_lst:after {content: ""; display: block; clear: both;}
    .pic_lst li {float:left; position: relative; margin-bottom: 40px;}
    .pic_lst li a {display: block; width: 360px; margin-right: 40px; overflow: hidden; height: 300px;}
    .pic_lst li img {display: block; width: 100%; margin-left: -50px; transition-duration: 0.8s;}
    .pic_lst li a:hover img { margin-left: 0; }
    .pic_lst li a .hv_box { width: 360px; height: 300px; color:#fff; opacity:0; position:absolute; top:0; left: 0; z-index:10; transition-duration:0.8s; background-color:transparent; }
    .pic_lst li a:hover .hv_box { opacity:1; }
    .pic_tit { position:absolute; top:30px; left: 30px; text-shadow: 0px 0px 6px navy}
    .pic_com { position:absolute; right:30px; bottom:30px; 
    text-shadow:0px 0px 5px navy; }

    #page3 { background-repeat: no-repeat; 
    background-size: cover; 
    background-position:center center; height: 100vh; background-image:url("./img/bg_partners.jpg"); overflow:hidden; }
    #page3 .page_wrap { width: 100%; }
    .circle_lst { clear:both; width: 4455px; }
    .circle_lst li { width: 200px; height: 200px; position:relative; border-radius:120px; overflow:hidden; background-color: #fff;
    float:left; margin:28px;  }
    .circle_lst.lst2 li { float:right; }
    .circle_lst li a { display:block; width: 100%; height: 100%; }
    .circle_lst li a img { display:block; width:160px; height:auto; 
    position:absolute; top:50%; left: 20px; z-index:11; margin-top: -28px; }
    
     /* footer */
    .ft { clear:both; width: 100%; height: 200px; background-color: #fff; padding-bottom: 50px; }
    .ft_wrap { clear:both; width: 1200px; margin: 0 auto; padding-top: 50px;  }
    .ft_wrap:after { content:""; display:block; clear:both; }
    .ft_logo { float:left; width: 150px; margin-top: -10px; }
    .mid_box { float:left; width: 760px; padding-left: 100px; }
    .fnb { clear:both; }
    .fnb a { color:#333; font-size:14px; padding: 24px; }
    .fnb a.dpc { color:cornflowerblue; }
    .addr { padding-left: 24px; color:#333; padding-top: 20px; 
    font-size:16px; line-height: 2; }
    .copyright { padding-left: 24px; color:cornflowerblue; padding-top: 10px; }
    .sel_box { float:right; border-bottom:1px solid #333;
    height: 44px; line-height: 44px; text-align:center; width: 140px; }
    #sel { border:none; outline: none; background-color: transparent; color:#333; }
    #sel option { color:#333 }
    </style>
    <link rel="stylesheet" href="footer.css">
    <script>
    $(document).ready(function(){
        $(window).scroll(function(){
            var ht = $(window).height();
            var tp = $(this).scrollTop();
            if(tp>=600){
                $(".hd").css("position","fixed");
            } else {
                $(".hd").css("position","absolute");
            }
        });
        $
        $("<ul class='circle_lst lst2'></ul>").insertAfter($(".circle_lst"));
        $lst1_obj = $(".circle_lst li").clone();
        $(".circle_lst.lst2").append($lst1_obj);
    });    
    </script>
</head>
<body>
<div class="wrap">
    <header class="hd">
		<%@ include file="nav.jsp" %>
	</header>
    <div class="content">
        <figure class="vs">
            <video src="./video/main_1.mp4" autoplay muted class="vdo"></video>
        </figure>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">QD-OLED ?<br>효율적인 빛의 활용과 간단한 구조로 <br>차세대 대형 디스플레이에 사용되고 있습니다.</h2>
                <ul class="lst">
                    <li class="left">
                        <iframe name="vdo2" id="vdo2" width="816" height="459" src="https://www.youtube.com/embed/LQr3trzS8Hk" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        <video src="./video/main_2.mp4" class="vdo2" width="816" height="459" autoplay muted ></video>
                    </li>
                    <li class="right">
                        <ul class="ico_lst">
                            <li>
                                <a href="https://www.youtube.com/embed/sAov8cIOBnk" class="icon1" target="vdo2">
                                    <h3 class="cate_tit">OLED Display</h3>
                                    <p class="cate_com">Why 삼성 OLED ?</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/embed/g8jSJ90J7Ps" class="icon2" target="vdo2">
                                    <h3 class="cate_tit">QD-OLED</h3>
                                    <p class="cate_com">Take The Quantum Leap</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/embed/hMHQnUuLPT0" class="icon3" target="vdo2">
                                    <h3 class="cate_tit">Galaxy Z Fold 4</h3>
                                    <p class="cate_com">디스플레이 혁신 기술이 집약된 OLED</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </section>
        <section class="page" id="page2">
            <div class="page_wrap">
                <h2 class="page_tit">제품 소개</h2>
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <img src="./img/kq85qnb900fxkr.webp" alt="Neo QLED 8K 214cm 인피니트 스크린" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">2022 Neo QLED 8K 214cm<br>인피니트 스크린</h3>
                                <p class="pic_com">KQ85QNB900FXKR</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/kq85qnb800fxkr.png" alt="Neo QLED 8K 214cm 스탠드형" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">2022 Neo QLED 8K 214cm<br>스탠드형</h3>
                                <p class="pic_com">KQ85QNB800FXKR</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/kq75qnb700fxkr.webp" alt="Neo QLED 8K 189cm 스탠드형" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">2022 Neo QLED 8K 189cm<br>스탠드형</h3>
                                <p class="pic_com">KQ75QNB700FXKR</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/nt930qed-ku71g.png" alt="갤럭시 북2 Pro 360" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">갤럭시 북2 Pro 360</h3>
                                <p class="pic_com">NT930QED-KU71G</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/nt930xed-ku71s.png" alt="갤럭시 북2 Pro" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">갤럭시 북2 Pro</h3>
                                <p class="pic_com">NT930XED-KU71S</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/nt-950qda-xc73z.png" alt="갤럭시 북 Flex2 39.6cm" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">갤럭시 북 Flex2 39.6cm<br>Core™ i7</h3>
                                <p class="pic_com">NT950QDA-XC73Z</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/sm-f936nzaakoo.png" alt="갤럭시Z폴드4 자급제" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">갤럭시Z폴드4 자급제</h3>
                                <p class="pic_com">SM-F936NZAAKOO</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/sm-f936ndrakoo.webp" alt="갤럭시Z폴드4 자급제" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">갤럭시Z폴드4 자급제<br>(단독컬러)</h3>
                                <p class="pic_com">SM-F936NDRAKOO</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/sm-f721nlvekoo.webp" alt="갤럭시Z플립4 자급제" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">갤럭시Z플립4 자급제</h3>
                                <p class="pic_com">SM-F721NLVEKOO</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/sm-s901nlvekoo.png" alt="갤럭시 S22 자급제" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">갤럭시 S22 자급제</h3>
                                <p class="pic_com">SM-S901NLVEKOO</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/sm-s906nlbwkoo.png" alt="갤럭시S22+ 자급제" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">갤럭시 S22+ 자급제<br>(삼성 단독컬러)</h3>
                                <p class="pic_com">SM-S906NLBWKOO</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/sm-s908nzarkoo.png" alt="갤럭시S22Ultra 자급제" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">갤럭시 S22 Ultra 자급제<br>(삼성 단독컬러)</h3>
                                <p class="pic_com">SM-S908NZARKOO</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </section>
        <section class="page" id="page3">
            <div class="page_wrap">
                <h2 class="page_tit">믿고 맡길 수 있는<br>SAMSUNG DISPLAY<br>전문 파트너스</h2>
                <ul class="circle_lst lst1">
                    <li><a href=""><img src="./img/thumb/partner01.png" alt="파트너스01" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner02.png" alt="파트너스02" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner03.png" alt="파트너스03" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner04.png" alt="파트너스04" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner05.png" alt="파트너스05" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner06.png" alt="파트너스06" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner07.png" alt="파트너스07" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner08.png" alt="파트너스08" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner09.png" alt="파트너스09" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner10.png" alt="파트너스10" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner11.png" alt="파트너스11" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner12.png" alt="파트너스12" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner13.png" alt="파트너스13" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner14.png" alt="파트너스14" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner15.png" alt="파트너스15" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner16.png" alt="파트너스16" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner17.png" alt="파트너스17" class="thumb"></a></li>
                </ul>
            </div>
        </section>
    </div>
    <footer class="ft">
        <%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>