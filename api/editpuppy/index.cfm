<!--- API EDITPUPPY --->
<!--- PULLS DATA FOR ONE PUPPY AND LETS YOU EDIT IT --->
<cfif FORM.pupid NEQ "">
	<cfquery name="getpuppy">
		SELECT pupid, pupname, pupbreed,pupage,pupactive,pupgroup, groupname
		FROM tbl_puppies
		INNER JOIN tbl_groups
		ON tbl_puppies.pupgroup = tbl_groups.groupid 
		WHERE pupid = <cfqueryparam value="#FORM.pupid#" cfsqltype="CF_SQL_INTEGER" />
	</cfquery>
	<cfquery name="getAllGroups">
		SELECT groupid, groupname, groupactive
		FROM tbl_groups
		WHERE groupactive = 1
	</cfquery>
</cfif>
<cfoutput query="getpuppy">
<h1>Edit Puppy #pupname#</h1>
	<form ic-post-to="/api/savepuppy/" target="##div_viewport">
		<input type="hidden" name="pupid" id="pupid" value="#pupid#" />
	<label>Pup name</label>
		<input type="text" name="pupname" id="pupname" value="#pupname#" />
	<br /><br />
	<label>Pup breed</label>
		<input type="text" name="pupbreed" id="pupbreed" value="#pupbreed#" />
	<br /><br />	
	
		<label>Pup Group</label>
		<select name="pupgroup" id="pupgroup">
			<cfloop query="getAllGroups">
				<option value="#getAllGroups.groupid#" <cfif getpuppy.pupgroup EQ #getAllGroups.groupid#> SELECTED</cfif>>#getAllGroups.groupname#</option>
			</cfloop>
		</select><br /><br />
	<label>Pup age</label>
			<input type="num" name="pupage" id="pupage" value="#pupage#" />
		<br /><br />
		<input type="submit" name="submit" value="Edit Puppy" />
	</form>
</cfoutput>
