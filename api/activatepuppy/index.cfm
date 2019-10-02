<!--- API ACTIVATE PUPPY --->
<!--- SETS ACTIVE FLAG TO 1 FOR ONE PUPPY --->
<cfif FORM.pupid NEQ "">

<cfquery name="inactivatepuppy"><!--- Set inacative flag --->
	UPDATE tbl_puppies
	SET pupactive = 1
	WHERE pupid = <cfqueryparam value="#FORM.pupid#" cfsqltype="CF_SQL_INTEGER" />
</cfquery>
<cfquery name="getpuppy">
	SELECT pupid, pupname, pupbreed,pupage,pupactive,pupgroup, groupname
	FROM tbl_puppies
	INNER JOIN tbl_groups
	ON tbl_puppies.pupgroup = tbl_groups.groupid 
	WHERE pupid = <cfqueryparam value="#FORM.pupid#" cfsqltype="CF_SQL_INTEGER" />
</cfquery>
<cfoutput query="getpuppy">
	<td>#pupname#</td>
	<td>#pupbreed#</td>
	<td>#pupage#</td>
	<td>#groupname#</td>
	<td>
	<cfscript>
		if(pupactive eq 1){
			WriteOutput("Yes");
		}
		else {
			WriteOutput("No");
		}
	</cfscript>
	</td>
	<td>
		<form>
			<input type="hidden" id="pupid" name="pupid" value="#pupid#" />
			<cfscript>
				if(pupactive eq 1){
					WriteOutput('<button class="btn btn-warning btn-sm" ic-target="##tr_puppy_#pupid#" ic-post-to="/api/inactivatepuppy/" id="btn_inactive_#pupid#">INACTIVATE</button>');
				}
				else {
					WriteOutput('<button class="btn btn-primary btn-sm" ic-target="##tr_puppy_#pupid#" ic-post-to="/api/activatepuppy/" id="btn_inactive_#pupid#">ACTIVATE</button>');
				}
			</cfscript>
		</form>
	</td>
	<td><form><input type="hidden" id="pupid" name="pupid" value="#pupid#" /><button class="btn btn-success btn-sm" ic-target="##div_viewport" ic-post-to="/api/editpuppy/" id="btn_inactive_#pupid#">EDIT</button></form></td>	
</cfoutput>
</cfif>