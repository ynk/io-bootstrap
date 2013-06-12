<!DOCTYPE html>
<html lang="fr" manifest="cfg/cache.php">
	
	<head>
		<title>io.bootstrap</title>
		
		<meta charset="utf-8" />
		<meta name="description" content="" />

		<script src="js/swfobject.js" type="text/javascript"></script>
		<script src="js/bond.min.js" type="text/javascript"></script>
		
		<script type="text/javascript">
			var params =
			{
				menu: "false",
				scale: "noScale",
				allowFullscreen: "true",
				allowScriptAccess: "always",
				bgcolor: "#FFFFFF"
			};
			
			swfobject.embedSWF( "main.swf",
                                "wrapper",
                                "100%",
                                "100%",
                                "10.0.0",
                                "expressInstall.swf",
                                {},
                                params);
		</script>
		
		<style type="text/css">
			html, body { width:100%; height:100%; overflow:hidden; }
			* { margin:0; padding:0; }
		</style>
	</head>
	
	<body>
		<div id="wrapper">
			<h1>io.bootstrap</h1>
			<p>
                <!--<a href="http://www.adobe.com/go/getflashplayer"><img
				src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" 
				alt="Get Adobe Flash player" /></a>-->
            </p>
		</div>
	</body>
</html>