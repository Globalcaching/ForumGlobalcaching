<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Globalcaching.forum.Default" %>
<%@ Register TagPrefix="YAF" Assembly="YAF" Namespace="YAF" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="/Themes/InvisibleDog1/styles/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="/Themes/InvisibleDog1/Styles/site.css" rel="stylesheet" type="text/css" />
<link href="/Themes/InvisibleDog1/Content/Images/Imfuscator.ashx?i=39b24245-e3ea-496d-9e3e-16201c922f90-a7bfb579-7675-47f4-b32d-e25ddff93d12" rel="stylesheet" type="text/css" />
<link href="/Modules/Globalcaching/Styles/usersonline.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<script type="text/javascript">
	    if (typeof jQuery == 'undefined') { document.write('<script type="text/javascript" src="/Themes/InvisibleDog1/js/jquery.min.js"><' + '/script>'); }
	</script>
	<script type="text/javascript">
	    $('head').append('<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">');
	</script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="/Themes/InvisibleDog1/js/html5shiv.js"></script>
      <script src="/Themes/InvisibleDog1/js/respond.min.js"></script>
    <![endif]-->
	<script type="text/javascript" src="/Themes/InvisibleDog1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/Themes/InvisibleDog1/js/BindMENU.js"></script>
<script type="text/javascript" src="/Themes/InvisibleDog1/js/fix-responsive-WP8.js"></script>
<script type="text/javascript" src="/Themes/InvisibleDog1/js/populateSelectNav.js"></script>


	<!--Apply class to body with browser version-->
	<script type="text/javascript">
	    var nVer = navigator.appVersion; var nAgt = navigator.userAgent; var bN = navigator.appName; var fullV = "" + parseFloat(navigator.appVersion); var majorV = parseInt(navigator.appVersion, 10); var nameOffset, verOffset, ix; if ((verOffset = nAgt.indexOf("Opera")) !== -1) { bN = "Opera"; fullV = nAgt.substring(verOffset + 6); if ((verOffset = nAgt.indexOf("Version")) !== -1) { fullV = nAgt.substring(verOffset + 8) } } else { if ((verOffset = nAgt.indexOf("MSIE")) !== -1) { bN = "IE"; fullV = nAgt.substring(verOffset + 5) } else { if ((verOffset = nAgt.indexOf("Chrome")) !== -1) { bN = "Chrome"; fullV = nAgt.substring(verOffset + 7) } else { if ((verOffset = nAgt.indexOf("Safari")) !== -1) { bN = "Safari"; fullV = nAgt.substring(verOffset + 7); if ((verOffset = nAgt.indexOf("Version")) !== -1) { fullV = nAgt.substring(verOffset + 8) } } else { if ((verOffset = nAgt.indexOf("Firefox")) !== -1) { bN = "Firefox"; fullV = nAgt.substring(verOffset + 8) } else { if ((nameOffset = nAgt.lastIndexOf(" ") + 1) < (verOffset = nAgt.lastIndexOf("/"))) { bN = nAgt.substring(nameOffset, verOffset); fullV = nAgt.substring(verOffset + 1); if (bN.toLowerCase() == bN.toUpperCase()) { bN = navigator.appName } } } } } } } if ((ix = fullV.indexOf(";")) !== -1) { fullV = fullV.substring(0, ix) } if ((ix = fullV.indexOf(" ")) !== -1) { fullV = fullV.substring(0, ix) } majorV = parseInt("" + fullV, 10); if (isNaN(majorV)) { fullV = "" + parseFloat(navigator.appVersion); majorV = parseInt(navigator.appVersion, 10) }
	    document.getElementsByTagName("body")[0].className += " " + bN + " " + bN + majorV + " cmsORX cmsORX1";
	</script>
<!--[if lte IE 7]>
<link rel="stylesheet" href="css/ie7.css" type="text/css"/>
<![endif]-->

<script type="text/javascript">
    (function ($) {
        $('head').append('<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,700">');
    })(jQuery);
</script>

<div id="Wrapper">
	<header>
		<div class="container">
			<div class="row">
				<div class="col-sm-5" id="Logo"><h1><a href="/" title="Go to Home">Globalcaching</a></h1>Het geocaching portaal!</div>
			</div>
		</div>
	</header>

	<section id="ColorHeader">
		<nav>
			<div class="container">
				<div class="row">
					<div class="col-sm-10">
						<div id="MenuH"><div class="zone zone-navigation">    <div class="widget-control">
        <div class="manage-actions"></div>
    
<article class="widget-navigation widget-menu-widget widget">
	<div>
		
<nav>
    <ul class="menu menu-main-menu">
        
        
<li class="dropdown first"><a href="/Persoonlijk">Persoonlijk</a>
                <ul>
                    
<li>

    <a href="/GlobalcachingPage.aspx?p=Instellingen">Instellingen</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=LiveAPI">Live API</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=CCCInstellingen">CCC Instellingen</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=LiveAPIDownload">Geocache downloads</a> 
</li>
                </ul>
</li>
<li class="dropdown">

    <a href="/GlobalcachingPage.aspx?p=SocialMedia">Forum</a> 
                <ul>
                    
<li><a href="/forum/">Forum</a>
</li>
<li><a href="https://www.facebook.com/globalcaching.geocaching">Facebook</a>
</li>
                </ul>
</li>
<li class="dropdown"><a href="/Geocaches">Geocaches</a>
                <ul>
                    
<li><a href="/GlobalcachingPage.aspx?p=GlobalcachingPage.aspx?p=GeocacheKaart">Kaart</a>
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=SnelGeocachesZoeken">Eenvoudig zoeken</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=ZoekenOpEigenschappen">Uitgebreid zoeken</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=FavoriteGeocaches">Favorite Geocaches</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=LogFotoStats">Logfoto statistieken</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=GeocacheFilterMacro">Filter macro</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=GeocacheSeries">Series</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=Events">Events</a> 
</li>
<li class="dropdown">

    <a href="/Parelgalerij">Parels</a> 
                <ul>
                    
<li>

    <a href="/GlobalcachingPage.aspx?p=Parelgalerij">Nederland</a> 
</li>
                </ul>
</li>
<li class="dropdown"><a href="/Geocaches">Land</a>
                <ul>
                    
<li><a href="/GlobalcachingPage.aspx?p=RecenteCachesLand/141">Nederland</a>
</li>
<li><a href="/GlobalcachingPage.aspx?p=RecenteCachesLand/4">Belgie</a>
</li>
<li><a href="/GlobalcachingPage.aspx?p=RecenteCachesLand/8">Luxemburg</a>
</li>
                </ul>
</li>
<li class="dropdown">

    <a href="/GlobalcachingPage.aspx?p=GeocacheStatistieken">Statistieken</a> 
                <ul>
                    
<li>

    <a href="/GlobalcachingPage.aspx?p=GepubliceerdeCachesPerJaar">Gepubliceerd per jaar</a> 
</li>
                </ul>
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=LiveAPIDownload">Downloaden</a> 
</li>
                </ul>
</li>
<li class="dropdown">

    <a href="/GlobalcachingPage.aspx?p=Geocachers">Geocachers</a> 
                <ul>
                    
<li><a href="/GlobalcachingPage.aspx?p=ZoekGeocacher">Zoek Geocacher</a>
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=ZoekLogsVanGeocacher">Zoek logs</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=FTFRanglijst">FTF Ranglijst</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=LogFotos">Logfoto&#39;s</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=FavoriteGeocachers">Favorite Geocachers</a> 
</li>
                </ul>
</li>
<li class="dropdown"><a href="/Hulpmiddelen">Hulpmiddelen</a>
                <ul>
                    
<li>

    <a href="/GlobalcachingPage.aspx?p=CCCHulp">CCC hulp</a> 
</li>
<li>

    <a href="/onlinetools">Online tools</a> 
</li>
<li>

    <a href="/GlobalcachingPage.aspx?p=TrackableBatchLog">Trackable batch log</a> 
</li>
<li><a href="http://gapp.globalcaching.eu">GAPP</a>
</li>
                </ul>
</li>
<li class="dropdown last"><a href="/info">Info</a>
                <ul>
                    
<li>

    <a href="/GlobalcachingPage.aspx?p=Gebiedsinformatie">Gebiedsinformatie</a> 
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
		<div id="HomeSlider"></div>
	</section>



	<div role="main" id="Main">
		<div class="container">
			<div id="ContentArea">
				<div hidden-xs">
					<div id="MenuV"><script type="text/javascript">					                    $("#MenuV").html($("#MenuH nav").parent().html());</script></div>
					
				</div>
				<div>
					<div class="row">
    <div></div>					
</div>
<div class="row">
	</div>
<div class="row">
	
	
</div>
<div class="row">
	
	
</div>
<div class="row">
<div class="col-md-12" runat="server" id="Content"><div class="zone zone-content">    <div class="content-control">
        <div class="manage-actions"></div>
    
<article class="page content-item">

    <form id="form1" runat="server" enctype="multipart/form-data">
    <YAF:Forum runat="server" ID="forum" BoardID="1">
    </YAF:Forum>
    </form>

</article>
    </div>
</div></div></div>
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
	</div>



	<footer>
		<div id="FooterWidgets" class="container">
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
        <div class="manage-actions"></div>
    
<article class="widget-footer widget-users-online-widget widget">
	<div>
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
	</div>
</article>

    </div>
    <div class="widget-control">
        <div class="manage-actions"></div>
    
<article class="widget-footer widget-html-widget widget">
	<div>
		<center><small><span style="color: #000000;">Official partner of Groundspeak and Geocaching Cache Icons Copyright 2012, Groundspeak Inc. Used with Permission</span><br /><span style="color: #000000;"> <a href="/forum/Default.aspx?g=register"><span style="color: #000000;">Registreer</span></a> en profiteer van een speciale aanbieding op <a href="http://www.geocachingshop.nl/actions.php" target="_blank"><span style="color: #000000;">geocachingshop.nl</span></a>,&nbsp;<a href="http://www.geocachingunited.nl/geocaching-info/globalcaching-eu.html" target="_blank"><span style="color: #000000;">geocachingunited</span></a> en op <a href="http://www.csillagos-hely.nl/geocaching.html" target="_blank"><span style="color: #000000;">Csillagos Hely</span></a></span></small></center>
	</div>
</article>

    </div>
</div></div></div>
			</div>
			<div class="row" id="FooterCopyright">
				<div class="col-md-7">
					<span id="Copyright"><span class="Copyright">&copy; 2014 Globalcaching. All rights reserved.</span></span>
					<span id="Sitemap"></span>
					<span id="Privacy"></span>
					<span id="Terms"></span>
				</div>
				<div class="col-md-5">
					<div class="pull-right"></div>
				</div>
			</div>
		</div>
</div></footer>
</div>

<script type="text/javascript">
    (function ($) {
        $(document).ready(function () {
            //Always on bottom footer
            $('#Main').css('padding-bottom', $('footer').outerHeight(true));

            //Tooltips
            $('*[data-toggle=tooltip]').tooltip();

            //Popovers
            $('*[data-toggle=popover]').popover({
                trigger: 'hover'
            });
        });
    })(jQuery);
</script>

	<script type="text/javascript" >
	    (function ($) {
	        $("#MenuH .menu").BindMENU({ MenuStyle: "DefaultMenu", Orientation: "Horizontal" });
	        $("#MenuV .menu").BindMENU({ MenuStyle: "DefaultMenu", Orientation: "Vertical" });
	    })(jQuery);
	</script>
	<!-- powered by BIND TUNING 2013 // http://www.bindtuning.com -->


<script type="text/javascript" src="/Themes/InvisibleDog1/js/script.js"></script>

</body>
</html>
