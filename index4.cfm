<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>CFSummit2019 - Puppies!</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/intercooler-js/1.2.2/intercooler.js"></script>
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</head>
<body>
<!---<body ic-trigger-on="load" ic-get-from="/api/getallpuppies/" ic-target="#div_viewport">--->
	<img src="/img/logo.png" alt="Puppies!" />
	<button ic-get-from="/api/getallpuppies/" ic-target="#div_viewport">Get All Puppies</button>
<div id="div_viewport"></div>
</body>
</html>
