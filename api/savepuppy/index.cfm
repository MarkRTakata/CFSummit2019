<!--- API EDITPUPPY --->
<!---SAVES PUPPY INFO AND RETURNS YOU TO MAIN SCREEN --->
<cfquery name="savepuppy"><!--- save puppy info --->
	UPDATE tbl_puppies
	SET pupname = <cfqueryparam value="#FORM.pupname#" cfsqltype="CF_SQL_VARCHAR" />, pupbreed = <cfqueryparam value="#FORM.pupbreed#" cfsqltype="CF_SQL_VARCHAR" />,pupage = <cfqueryparam value="#FORM.pupage#" cfsqltype="CF_SQL_INTEGER" />,pupgroup = <cfqueryparam value="#FORM.pupgroup#" cfsqltype="CF_SQL_INTEGER" />
	WHERE pupid = <cfqueryparam value="#FORM.pupid#" cfsqltype="CF_SQL_INTEGER" />
</cfquery>
<cflocation url="/api/getallpuppies/" addtoken="No" />