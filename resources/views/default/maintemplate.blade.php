<!DOCTYPE html>
<html lang="ru" prefix="og: http://ogp.me/ns#">
<head>

    <title></title>
    <meta name="keywords" content="">
    <meta name="description" content="">


    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">


    <link rel="stylesheet" href="http://corp.loc/css/bootstrap.css">
    <link rel="stylesheet" href="http://corp.loc/css/style.css">
    <link rel="stylesheet" href="http://corp.loc/css/style2.css">


</head>
<body>

<header>

    <div class="container-fluid px-0">
        <div class="w-100 d-inline-block mx-0" style="height: 35px; background-color: #b8b8b8;">

            <div class="container">

                <p class="float-left mt-1">+3 8(095) 000-00-00</p>
                <img class="float-left ml-2 mt-2" src="../images/telegr-icon.png" alt="stydy in ukraine">
                <img class="float-left ml-2 mt-2" src="../images/viber-icon.png" alt="stydy in ukraine">

                <p class="float-left ml-4 mt-1">aston.ukraine@gmail.com</p>

                <div class="float-right" style="height:50px; width: 220px;">
                    <a href="viber://add?number=380952045758" target="_blank" rel="noopener"
                       title="Задай вопрос в о создании сайтов через viber">
                        <div class="sprite headerrline_sontsiconki_viber"></div>
                    </a>
                    <a href="https://telegram.me/kra_sof" target="_blank" rel="noopener"
                       title="Задай вопрос о создании сайтов через чат в telegram">
                        <div class="sprite headerrline_sontsiconki_telegram"></div>
                    </a>
                    <a href="https://api.whatsapp.com/send?phone=380952045758" target="_blank" rel="noopener"
                       title="Задай вопрос о создании сайтов через whatsapp">
                        <div class="sprite headerrline_sontsiconki_wats"></div>
                    </a>
                    <a href="https://www.facebook.com/01webseo" target="_blank" rel="noopener"
                       title="Задай вопрос о создании сайтов через massanger">
                        <div class="sprite headerrline_sontsiconki_facebook"></div>
                    </a>
                    <a href="https://www.instagram.com/kra_sof/" target="_blank" rel="noopener"
                       title="Задай вопрос о создании сайтов через instagram">
                        <div class="sprite headerrline_sontsiconki_instagram"></div>
                    </a>

                </div>


            </div>


        </div>

        <div class="container-fluid px-0 headderslogo">
            <div class="jumbotron-foto pt-4 pb-4" style="background-color: rgba(98, 98, 98, 0.15);height: 153px;">
                <img class="lazyy fonimg" style="filter: grayscale(10%);"
                     data-src="../images/study-in-ukraine-fon-logo.jpg" alt=" ">


                <div class="container">

                    <div class="sprite headerrlogo">
                        <? echo $glavnlogolink; ?>
                    </div>

                </div>
            </div>
        </div>

        @section('navbar')






            <nav class="navbar navbar-expand-lg navbar-light bg-light">

                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>


                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div class="container">   {{menu('Main_menu')}} </div>

                </div>
            </nav>
        @show


    </div>

</header>
<main>
    <article>
        <h2 class="semantics_info">Основной контент на сайте</h2>

        @section('header')

        @show

        @yield('content')

    </article>
</main>
@section('footer')
    <footer>
        <h2 class="semantics_info">Футер сайта</h2>
        <div class="d-flex flex-row">
            <div class="col-5 p-1" style="background-color:#486fb3"></div>
            <div class="col-4 p-1" style="background-color:#63add0"></div>
            <div class="col-2 p-1" style="background-color:#936CD6"></div>
            <div class="col-1 p-1" style="background-color:#FF9500"></div>
        </div>
        <div class="jumbotron-foto pt-4 pb-4" style="background-color: rgba(98, 98, 98, 0.15);">
            <img class="lazyy fonimg" data-src="../images/sozdanie-saitov-kharkov-fon-footer.jpg"
                 alt="создание сайтов Харьков фон">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-9 col-md-6 col-lg-3 ml-5 ml-md-0">
                        <div class="sprite footerlogo mt-5">
                        </div>
                        <ul class="footercont" itemscope itemtype="http://schema.org/LocalBusiness">
                            <li itemprop="telephone"><a style="color: #212529;" href="tel:+380952045758">+38 (095)
                                                                                                         204-57-58</a><span
                                        style="font-size: 0.7em;font-weight: 400;"> (Viber,Teleg)</span>
                            </li>
                            <li itemprop="telephone"><a style="color: #212529;" href="tel:+380935744525">+38 (093)
                                                                                                         574-45-25</a>
                            </li>
                            <span itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
										<li><span itemprop="addressCountry">Украина</span>, <span
                                                    itemprop="addressLocality">Харьков</span></li>
										<li itemprop="streetAddress">Полтавский шлях 31</li>
										</span>
                            <li itemprop="email">mail@razrabotka-saitov.com</li>
                            <li style="font-size:0.80em;color:#bcc2f6!important;" itemprop="url">
                                www.razrabotka-saitov.com
                            </li>
                            <li style="font-size:0.80em;color:#bcc2f6!important;"><span
                                        itemprop="name">Гуд web студия</span><span itemprop="aggregateRating" itemscope
                                                                                   itemtype="http://schema.org/AggregateRating"><span
                                            itemprop="worstRating">0</span><span itemprop="bestRating">5</span><span
                                            itemprop="ratingValue">4.8</span><span
                                            itemprop="ratingCount">68</span> </span>
                            </li>
                        </ul>
                    </div>
                    <div class="col-8 col-md-6 col-lg-3 align-self-center ml-5 ml-md-0">
                        <div class="p-2" style="height:50px; width: 220px;">
                            <a href="viber://add?number=380952045758" target="_blank" rel="noopener"
                               title="Задай вопрос в о создании сайтов через viber">
                                <div class="sprite headerrline_sontsiconki_viber"></div>
                            </a>
                            <a href="https://telegram.me/kra_sof" target="_blank" rel="noopener"
                               title="Задай вопрос о создании сайтов через чат в telegram">
                                <div class="sprite headerrline_sontsiconki_telegram"></div>
                            </a>
                            <a href="https://api.whatsapp.com/send?phone=380952045758" target="_blank" rel="noopener"
                               title="Задай вопрос о создании сайтов через whatsapp">
                                <div class="sprite headerrline_sontsiconki_wats"></div>
                            </a>
                            <a href="https://www.facebook.com/01webseo" target="_blank" rel="noopener"
                               title="Задай вопрос о создании сайтов через massanger">
                                <div class="sprite headerrline_sontsiconki_facebook"></div>
                            </a>
                            <a href="https://www.instagram.com/kra_sof/" target="_blank" rel="noopener"
                               title="Задай вопрос о создании сайтов через instagram">
                                <div class="sprite headerrline_sontsiconki_instagram"></div>
                            </a>
                            <a href="https://vk.com/01webseo" target="_blank" rel="noopener"
                               title="Задай вопрос в о создании сайтов контакте">
                                <div class="sprite headerrline_sontsiconki_vk"></div>
                            </a>
                        </div>
                        <ul class="footermenu">
                            <li><?echo $glavnfooterlink?></li>
                            <li><?echo $magfooterlink?></li>
                            <li><?echo $uslugifooter?></li>
                            <li><?echo $vizitkafooter?></li>
                            <li><?echo $prodfooterlink?></li>
                            <li><?echo $contfooterlink?></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="sprite scroller"></div>
    </footer>
@show

<script src="http://www.corp.loc/js/java-griobanij-skript.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>

<script>
    $(function () {
        $("#accordion").accordion({heightStyle: "content"})
    });
    $(function () {
        $('.lazyy').lazy({effect: "fadeIn", effectTime: 1000, threshold: 0})
    });
    $(function () {
        $('.lazyyy').lazy({combined: true, delay: 20000})
    });
    $(function () {
        $('.lazyyyy').lazy({delay: 3000})
    });
    $(function () {
        $('.lazy-direktor').lazy({effect: "fadeIn", effectTime: 500, delay: 1500})
    });
    $(function () {
        $('.lazy').lazy({combined: true, delay: 4000})
    });
    $(function () {
        var $elements = $('.animateBlock.notAnimated');
        var $window = $(window);
        $window.on('scroll', function (e) {
            $elements.each(function (i, elem) {
                if ($(this).hasClass('animated'))
                    return;
                animateMe($(this))
            })
        })
    });

    function animateMe(elem) {
        var winTop = $(window).scrollTop();
        var winBottom = winTop + $(window).height();
        var elemTop = $(elem).offset().top;
        var elemBottom = elemTop + $(elem).height();
        if ((elemBottom <= winBottom) && (elemTop >= winTop)) {
            $(elem).removeClass('notAnimated').addClass('animated')
        }
    }
    ;
    $(".demo01").animatedModal({
        animatedIn: 'lightSpeedIn',
        animatedOut: 'bounceOutDown',
        color: '#d2f0ee'
    });
</script>


</body>
</html>

