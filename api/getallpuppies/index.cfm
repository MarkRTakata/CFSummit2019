<!--- API GETALLPUPPIES --->
<!--- RETURNS ALL INFORMATION ABOUT PUPPIES --->
<cfquery name="getallpuppies">
	SELECT pupid, pupname, pupbreed,pupage,pupactive,pupgroup, groupname
	FROM tbl_puppies
	INNER JOIN tbl_groups
	ON tbl_puppies.pupgroup = tbl_groups.groupid 
</cfquery>
<h1>All Puppies</h1>
<table class="table table-striped table-bordered">
	<thead>
		<th>Puppy Name</th>
		<th>Puppy Breed</th>
		<th>Age (in weeks)</th>
		<th>Puppy Group Name</th>
		<th>Active?</th>
		<th></th>
		<th></th>
	</thead>
	<tbody>
	<cfoutput query="getallpuppies">
		<tr id="tr_puppy_#pupid#">
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
			<td><form>
				<input type="hidden" id="pupid" name="pupid" value="#pupid#" />
				<cfscript>
				if(pupactive eq 1){
					WriteOutput('<button class="btn btn-warning btn-sm" ic-target="##tr_puppy_#pupid#" ic-post-to="/api/inactivatepuppy/" id="btn_inactive_#pupid#">INACTIVATE</button>');
				}
				else {
					WriteOutput('<button class="btn btn-primary btn-sm" ic-target="##tr_puppy_#pupid#" ic-post-to="/api/activatepuppy/" id="btn_inactive_#pupid#">ACTIVATE</button>');
				}
			</cfscript>
				</form></td>
			<td><form><input type="hidden" id="pupid" name="pupid" value="#pupid#" /><button class="btn btn-success btn-sm" ic-target="##div_viewport" ic-post-to="/api/editpuppy/" id="btn_inactive_#pupid#">EDIT</button></form></td>
		</tr>
	</cfoutput>
	</tbody>
	<tr>
	
	</tr>
</table>