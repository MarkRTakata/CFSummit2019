<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>POOCHMATCH!</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/intercooler-js/1.2.2/intercooler.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</head>
<link rel="stylesheet" type="text/css" href="/css/poochmatch.css">
<body>
	<div class="endgamecover" id="endgamecover">
		<div class="endgamemessage">
			YOU WON <span id="winnum"></span> PUPPIES!
		</div>
	</div>
	<div class="buttoncontainer" id="buttoncontainer">
		<button id="btn_score" class="scorebutton btn btn-success btn-lg">You scored a point! (click to continue)</button>
	</div>
	
	<div class="scorecontainer">Your puppy score is: <b><span id="span_score">0</span></b></div>
	<div class="pupcountcontainer">
		Pup 1:<span id="span_pup1_count">0</span><br />
		Pup 2:<span id="span_pup2_count">0</span><br />
		Pup 3:<span id="span_pup3_count">0</span><br />
		Pup 4:<span id="span_pup4_count">0</span><br />
		Pup 5:<span id="span_pup5_count">0</span><br />
		Pup 6:<span id="span_pup6_count">0</span><br />
		Pup 7:<span id="span_pup7_count">0</span><br />
		Pup 8:<span id="span_pup8_count">0</span><br />
		Pup 9:<span id="span_pup9_count">0</span><br />
	</div>
<div class="flex-container">
	<div class="pupbuttoncolumn">
		<div id="div_pup_1_1" ic-get-from="/api/poochmatch/" class="pupbutton"></div>
		<div id="div_pup_2_1" ic-get-from="/api/poochmatch/" class="pupbutton"></div>
		<div id="div_pup_3_1" ic-get-from="/api/poochmatch/" class="pupbutton"></div>
	</div>
	<div class="pupbuttoncolumn">
		<div id="div_pup_1_1" ic-get-from="/api/poochmatch/" class="pupbutton"></div>
		<div id="div_pup_2_1" ic-get-from="/api/poochmatch/" class="pupbutton"></div>
		<div id="div_pup_3_1" ic-get-from="/api/poochmatch/" class="pupbutton"></div>
	</div>
	<div class="pupbuttoncolumn">
		<div id="div_pup_1_1" ic-get-from="/api/poochmatch/" class="pupbutton"></div>
		<div id="div_pup_2_1" ic-get-from="/api/poochmatch/" class="pupbutton"></div>
		<div id="div_pup_3_1" ic-get-from="/api/poochmatch/" class="pupbutton"></div>
	</div>
	
</div>
<script>
	function reset(){ // Resets the puppy counts and the image divs
		$("div[id^='div_pup_']").html("");
		$("span[id^='span_pup']").html("0");
	}
	function score(){ // Increases score by one and displays it
		var score = parseInt($("#span_score").html());
		score = score + 1;
		$("#span_score").html(score);
		$("#buttoncontainer").fadeIn();
	}
	$("#btn_score").click(function(){ // hides button container and trigger reset function
		$("#buttoncontainer").fadeOut();
		reset();
	})
	
	function endgame(){ // Overlays "win" text and locks out ui
		$("#winnum").html($("#span_score").html());
		$("#endgamecover").fadeIn();
	}
	
	function checkScore(){ // tests for win condition, then tests for score condition
		if(($("#span_pup1_count").html() == 1)&&($("#span_pup2_count").html() == 1)&&($("#span_pup3_count").html() == 1)&&($("#span_pup4_count").html() == 1)&&($("#span_pup5_count").html() == 1)&&($("#span_pup6_count").html() == 1)&&($("#span_pup7_count").html() == 1)&&($("#span_pup8_count").html() == 1)&&($("#span_pup9_count").html() == 1)){
			endgame();
		}
		if ($("#span_pup1_count").html() == 2){
			score();
		}
		if ($("#span_pup2_count").html() == 2){
			score();
		}
		if ($("#span_pup3_count").html() == 2){
			score();
		}
		if ($("#span_pup4_count").html() == 2){
			score();
		}
		if ($("#span_pup5_count").html() == 2){
			score();
		}
		if ($("#span_pup6_count").html() == 2){
			score();
		}
		if ($("#span_pup7_count").html() == 2){
			score();
		}
		if ($("#span_pup8_count").html() == 2){
			score();
		}
		if ($("#span_pup9_count").html() == 2){
			score();
		}
	}
	function addPupNum(pupnum){ // adds one to the pup count for the pup you just displayed, triggers check score function
		var pupscorespantemp = "span_pup" +pupnum + "_count";
		var pupscoretemp = 0;
		pupscoretemp = parseInt($("#" + pupscorespantemp).html()) + 1;
		$("#" + pupscorespantemp).text(pupscoretemp);
		checkScore();
	}
	</script>
</body>
</html>