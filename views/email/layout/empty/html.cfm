<cfparam name="args.body"        type="string" />
<cfparam name="args.layout_head" type="string" default="" />
<cfparam name="args.subject"     type="string" default="" />

<cfif Len( Trim( args.layout_head ) )>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<cfif Len( Trim( args.subject ) )><title><cfoutput>#args.subject#</cfoutput></title></cfif>

		<cfoutput>#args.layout_head#</cfoutput>
	</head>
	<body>
</cfif>
<cfoutput>#args.body#</cfoutput>
<cfif Len( Trim( args.layout_head ) )>
	</body>
</html>
</cfif>