<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Globalcaching.forum.Default" %>
<%@ Register TagPrefix="YAF" Assembly="YAF" Namespace="YAF" %>

<!DOCTYPE html> 
<html lang="nl-NL" class="static detail-page contents"> 
<head runat="server"> 
    <meta charset="utf-8" />
    <title>Globalcaching - Welkom op globalcaching!</title> 
    <link href="/Modules/Globalcaching/Styles/usersonline.css" rel="stylesheet" type="text/css" />
<link href="/Themes/wepro1/styles/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="/Themes/wepro1/Styles/site.css" rel="stylesheet" type="text/css" />
<link href="/Themes/wepro1/Content/Images/4101edcc-6de5-4f40-b863-43776f0f2264-a322bb28-eca8-417f-a97f-2be54b66e85e.css" rel="stylesheet" type="text/css" />
<link href="/gcicon.ico" rel="shortcut icon" type="image/x-icon" />
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-19422045-3', 'auto');
  ga('send', 'pageview');

</script>
</head> 
<body>


	<script type="text/javascript">
	    if (typeof jQuery == 'undefined') { document.write('<script type="text/javascript" src="/Themes/wepro1/js/jquery.min.js"><' + '/script>'); }
	    var style_mobile_path = '/Themes/wepro1/styles/css/'; // path for mobile nav css files, ORX-specific
	</script>
	<script type="text/javascript">
	    $('head').append('<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">');
	</script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="/Themes/wepro1/js/html5shiv.js"></script>
      <script src="/Themes/wepro1/js/respond.min.js"></script>
    <![endif]-->
	<script type="text/javascript" src="/Themes/wepro1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/Themes/wepro1/js/BindMENU.js"></script>
<script type="text/javascript" src="/Themes/wepro1/js/fix-responsive-WP8.js"></script>


	<!--Apply class to body with browser version-->
	<script type="text/javascript">
	    var nVer = navigator.appVersion; var nAgt = navigator.userAgent; var bN = navigator.appName; var fullV = "" + parseFloat(navigator.appVersion); var majorV = parseInt(navigator.appVersion, 10); var nameOffset, verOffset, ix; if ((verOffset = nAgt.indexOf("Opera")) !== -1) { bN = "Opera"; fullV = nAgt.substring(verOffset + 6); if ((verOffset = nAgt.indexOf("Version")) !== -1) { fullV = nAgt.substring(verOffset + 8) } } else { if ((verOffset = nAgt.indexOf("MSIE")) !== -1) { bN = "IE"; fullV = nAgt.substring(verOffset + 5) } else { if ((verOffset = nAgt.indexOf("Chrome")) !== -1) { bN = "Chrome"; fullV = nAgt.substring(verOffset + 7) } else { if ((verOffset = nAgt.indexOf("Safari")) !== -1) { bN = "Safari"; fullV = nAgt.substring(verOffset + 7); if ((verOffset = nAgt.indexOf("Version")) !== -1) { fullV = nAgt.substring(verOffset + 8) } } else { if ((verOffset = nAgt.indexOf("Firefox")) !== -1) { bN = "Firefox"; fullV = nAgt.substring(verOffset + 8) } else { if ((nameOffset = nAgt.lastIndexOf(" ") + 1) < (verOffset = nAgt.lastIndexOf("/"))) { bN = nAgt.substring(nameOffset, verOffset); fullV = nAgt.substring(verOffset + 1); if (bN.toLowerCase() == bN.toUpperCase()) { bN = navigator.appName } } } } } } } if ((ix = fullV.indexOf(";")) !== -1) { fullV = fullV.substring(0, ix) } if ((ix = fullV.indexOf(" ")) !== -1) { fullV = fullV.substring(0, ix) } majorV = parseInt("" + fullV, 10); if (isNaN(majorV)) { fullV = "" + parseFloat(navigator.appVersion); majorV = parseInt(navigator.appVersion, 10) }
	    document.getElementsByTagName("body")[0].className += " " + bN + " " + bN + majorV + " cmsORX cmsORX1 BT-pk";
	</script>

<script type="text/javascript">
    (function ($) {
        $('head').append('<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">');
    })(jQuery);
</script>

<div class="container">
	<header>
        <div id="Logo"><table><tr><td><img src="/Themes/wepro1/content/images/globalcaching.png" width="48" height="48" /></td><td width="10"></td><td><h1><a href="/" title="Go to Home">Globalcaching</a></h1>Het geocaching portaal!</td><td width="10"><td><a href="http://www.geocaching.com/live/" target="_blank"><img src="/Themes/wepro1/content/images/Geocaching_LIVE_poweredby_48.png" width="48" height="48" /></a>&nbsp;<a href="http://www.geocaching.com/" target="_blank"><img src="/Themes/wepro1/content/images/geocaching.gif" width="48" height="48" /></a></td></tr></table></div>
		<div class="navbar-collapse collapse-user collapse">
			<div class="header-aux">
				<span id="Language"></span>
				<span id="Login">		<span class="user-actions">
		</span>
</span>
				<span id="User">
</span>
			</div>
		</div>
		<div class="BannerZone1"></div>
	</header>

	<nav>
		<button data-target=".collapse-nav" data-toggle="collapse" class="navbar-toggle btn-navbar-menuh" type="button"><i class="fa fa-bars"></i></button>
		<button data-target=".collapse-search" data-toggle="collapse" class="navbar-toggle" type="button"><i class="fa fa-search"></i></button>
		<button data-target=".collapse-user" data-toggle="collapse" class="navbar-toggle" type="button"><i class="fa fa-user"></i></button>
		<div class="clearfix visible-xs visible-sm"></div>
		<div class="row">
			<div class="col-sm-12">
				<div class="navbar-collapse collapse-nav collapse">
					<div id="MenuH"><div class="zone zone-navigation">    <div class="widget-control">
    
<article class="widget-navigation widget-menu-widget widget">
	<div>
		
<nav>
    <ul class="menu menu-main-menu">
        
        
<li class="dropdown first"><a href="/GlobalcachingPage.aspx?p=">Home</a>
                <ul>
                    
<li><a href="/GlobalcachingPage.aspx?p=">Home</a>
</li>
                </ul>
</li>
<li class="dropdown"><a href="/GlobalcachingPage.aspx?p=Persoonlijk">Persoonlijk</a>
                <ul>
                    
<li class="dropdown">

    <a href="/GlobalcachingPage.aspx?p=Banners">Banners</a> 
                <ul>
                    
<li>

    <a href="/GlobalcachingPage.aspx?p=FTFBanner">FTF Banner</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=GevondenPerLandBanner">Gevonden Per Land Banner</a> 
</li>
                </ul>
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=BewerkCodeChecker">Bewerk Code Checker</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=BewerkCoordinatenChecker">Bewerk Co&#246;rdinaten Checker</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=BewerkTrackableGroepen">Bewerk Trackable Groepen</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=CCCInstellingen">CCC Instellingen</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=LiveAPIDownload">Geocache downloads</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=Instellingen">Instellingen</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=LiveAPI">Live API</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=Logcorrectie">Logcorrectie</a> 
</li>
                </ul>
</li>
<li class="dropdown current"><a href="/forum/">Forum</a>
                <ul>
                    
<li class="current"><a href="/forum/">Forum</a>
</li>
                </ul>
</li>
<li class="dropdown"><a href="/GlobalcachingPage.aspx?p=Geocaches">Geocaches</a>
                <ul>
                    
<li>

    <a href="/GlobalcachingPage.aspx?p=LiveAPIDownload">Downloaden</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=Events">Events</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=FavoriteGeocaches">Favorite Geocaches</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=GeocacheFilterMacro">Filter macro</a> 
</li>
<li><a href="/GlobalcachingPage.aspx?p=GeocacheKaart">Kaart</a>
</li>
<li class="dropdown">

    <a href="/GlobalcachingPage.aspx?p=Land">Land</a> 
                <ul>
                    
<li><a href="/GlobalcachingPage.aspx?p=RecenteCachesLand/4">Belgie</a>
</li>
<li><a href="/GlobalcachingPage.aspx?p=RecenteCachesLand/8">Luxemburg</a>
</li>
<li><a href="/GlobalcachingPage.aspx?p=RecenteCachesLand/141">Nederland</a>
</li>
                </ul>
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=LogFotoStats">Logfoto statistieken</a> 
</li>
<li><a href="/GlobalcachingPage.aspx?p=Parels">Parels</a>
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=Selectiebewerker">Selectiebewerker</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=GeocacheSeries">Series</a> 
</li>
<li class="dropdown">

    <a href="/GlobalcachingPage.aspx?p=GeocacheStatistieken">Statistieken</a> 
                <ul>
                    
<li>

    <a href="/GlobalcachingPage.aspx?p=GepubliceerdeCachesPerJaar">Gepubliceerd per jaar</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=GeocacheTypeStatistieken">Per geocache type</a> 
</li>

                </ul>
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=SnelGeocachesZoeken">Zoeken eenvoudig</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=ZoekenOpEigenschappen">Zoeken uitgebreid</a> 
</li>
                </ul>
</li>
<li class="dropdown">

    <a href="/GlobalcachingPage.aspx?p=Geocachers">Geocachers</a> 
                <ul>
<li>

    <a href="/GlobalcachingPage.aspx?p=CombiRanglijst">Combi Ranglijst</a> 
</li>                    
<li>

    <a href="/GlobalcachingPage.aspx?p=FavoriteGeocachers">Favorite statistieken</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=FTFRanglijst">FTF Ranglijst</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=LogFotos">Logfoto&#39;s</a> 
</li>
<li>
    <a href="/GlobalcachingPage.aspx?p=RanglijstPerLand">Ranglijst per land</a> 
</li>
<li class="dropdown">

    <a href="/GlobalcachingPage.aspx?p=GeocachersStatistieken">Statistieken</a> 
                <ul>
                    
<li>

    <a href="/GlobalcachingPage.aspx?p=LogStatistieken">Log statistieken</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=GeocacheTypeStatistieken">Per geocache type</a> 
</li>
                </ul>
</li>

<li><a href="/GlobalcachingPage.aspx?p=ZoekGeocacher">Zoek Geocacher</a>
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=ZoekLogsVanGeocacher">Zoek logs</a> 
</li>
                </ul>
</li>
<li class="dropdown">

    <a href="/GlobalcachingPage.aspx?p=TrackableGroepen">Trackables</a> 
                <ul>
                    
<li>

    <a href="/GlobalcachingPage.aspx?p=TrackableGroepen">Trackable Groepen</a> 
</li>
                </ul>
</li>
<li class="dropdown"><a href="/GlobalcachingPage.aspx?p=Hulpmiddelen">Hulpmiddelen</a>
                <ul>
                    
<li>

    <a href="/GlobalcachingPage.aspx?p=CCCHulp">CCC hulp</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=CodeChecker">Code checker</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=CoordinatenChecker">Co&#246;rdinaten Checker</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=GAPP">GAPP</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=GeocacheBatchLog">Geocache Batch Log</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=onlinetools">Online tools</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=TrackableBatchLog">Trackable batch log</a> 
</li>
                </ul>
</li>
<li class="dropdown"><a href="/GlobalcachingPage.aspx?p=info">Info</a>
                <ul>
                    
<li>

    <a href="/GlobalcachingPage.aspx?p=financiele-status-en-donaties">Financi&#235;le status</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=Gebiedsinformatie">Gebiedsinformatie</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=links">Links</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=wiezijnwij">Wie zijn wij</a> 
</li>
                </ul>
</li>
<li class="dropdown last">

    <a href="/GlobalcachingPage.aspx?p=Contactformulier">Contact</a> 
                <ul>
                    
<li>

    <a href="/GlobalcachingPage.aspx?p=Contactformulier">Contact</a> 
</li>
                </ul>
</li>
    </ul>
</nav>
</div>
</article>

    </div>
</div></div>
				</div>
			</div>
		</div>
	</nav>

	<div class="bt-slider"></div>



	<div id="Main" role="main">
		<div class="row">
            <div id="bt-content" class="col-md-12">
                <div class="row">
                    <div></div>
                </div>
                <div class="row">
<div class="col-md-12" runat="server" id="BeforeContent"><div class="zone zone-before-content">    <div class="widget-control">
    
<article class="widget-before-content widget-globalcaching-messages-widget widget">
	<div>
		


	</div>
</article>

    </div>
</div></div>                </div>
                <div class="row">
                </div>
                <div class="row">


                </div>
                <div class="row">


                </div>
                <div class="row">
<div class="col-md-12" runat="server" id="Content"><div class="zone zone-content"> 
    <div class="widget-control">
    
<article class="widget-content widget-featured-item-slider-widget widget">
	<div>
		



    <div id="slideNav"></div>

	</div>
</article>

    </div>
    <div class="widget-control">
    
<article class="widget-content widget-html-widget widget">
    <form id="form2" runat="server" enctype="multipart/form-data">
    <YAF:Forum runat="server" ID="forum1" BoardID="1">
    </YAF:Forum>
    </form>
</article>

    </div>
</div></div>                </div>
                <div class="row">


                </div>
                <div class="row">
                                    </div>
                <div class="row">



                </div>
                <div class="row">
                </div>
                <div class="row">
                                                        </div>
            </div>
		</div>
	</div>



	<div id="Breadcrumb"></div>

	<footer>
		<div id="FooterWidgets">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-3"></div>
				<div class="col-md-3"></div>
				<div class="col-md-3"></div>
			</div>
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4"></div>
				<div class="col-md-4"></div>
			</div>
			<div class="row">
				<div class="col-md-6"></div>
				<div class="col-md-6"></div>
			</div>
			<div class="row">
				<div class="col-md-12"><div id="Footer"><div class="zone zone-footer">    <div class="widget-control">
    
<article class="widget-footer widget-users-online-widget widget">
	<div>
		<center>

<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</center>
	</div>
</article>

    </div>
    <div class="widget-control">
    
<article class="widget-footer widget-html-widget widget">
	<div>
		<center><small><span style="color: #000000;">Official partner of Groundspeak and Geocaching Cache Icons Copyright 2015, Groundspeak Inc. Used with Permission</span><br /><span style="color: #000000;"> <a href="/forum/Default.aspx?g=register"><span style="color: #000000;">Registreer</span></a> en profiteer van een speciale aanbieding op <a href="http://www.geocachingshop.nl/actions.php" target="_blank"><span style="color: #000000;">geocachingshop.nl</span></a>,&nbsp;<a href="http://www.geocachingunited.nl/geocaching-info/globalcaching-eu.html" target="_blank"><span style="color: #000000;">geocachingunited</span></a> en op <a href="http://www.csillagos-hely.nl/geocaching.html" target="_blank"><span style="color: #000000;">Csillagos Hely</span></a></span></small></center>
	</div>
</article>

    </div>
</div></div></div>
			</div>
		</div><!-- End Footer Widgets-->
		<div id="FooterCopyright">
			<span id="Copyright"><span class="Copyright">&copy; 2015 Globalcaching. All rights reserved.</span></span>
			<span id="Sitemap"></span>
			<span id="Privacy"></span>
			<span id="Terms"></span>
			<span id="Cart"></span>
		</div>
	</footer>
</div>
<div id="BgLayer1"></div>

<script type="text/javascript">
    (function ($) {
        $(document).ready(function () {
            //Tooltips
            $('*[data-toggle=tooltip]').tooltip();

            //Popovers
            $('*[data-toggle=popover]').popover({
                trigger: 'hover'
            });
        });
    })(jQuery);
</script>

<!--[if lte IE 8]>
	<script type="text/javascript" src="/Themes/wepro1/js/fix-search-ie8.js"></script>
<![endif]-->

	<script type="text/javascript" >
	    (function ($) {
	        $("#MenuH .menu").BindMENU({ MenuStyle: "DefaultMenu", Orientation: "Horizontal" });
	        //$("#MenuV .menu").BindMENU({ MenuStyle: "DefaultMenu", Orientation: "Vertical" });
	    })(jQuery);
	</script>

</body>
</html>