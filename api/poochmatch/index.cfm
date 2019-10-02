<cfscript>
randomnumber = RandRange(1, 9);
WriteOutput("<img src='/img/pup" & randomnumber & ".jpg' width='100%' />");
</cfscript>
<script>
	addPupNum(<cfoutput>#randomnumber#</cfoutput>);
</script>