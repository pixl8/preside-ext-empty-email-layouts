component {

	private string function html( event, rc, prc, args={} ) {
		var layoutHtml = args.layout_html ?: "";
		var layouthead = args.layout_head ?: "";

		if ( Len( Trim( layoutHtml ) ) ) {
			layoutHtml = ReplaceNoCase( layoutHtml, "${body}"           , ( args.body            ?: "" ) );
			layoutHtml = ReplaceNoCase( layoutHtml, "${subject}"        , ( args.subject         ?: "" ) );
			layoutHtml = ReplaceNoCase( layoutHtml, "${viewOnlineLink}" , ( args.viewOnlineLink  ?: "" ) );
			layoutHtml = ReplaceNoCase( layoutHtml, "${unsubscribeLink}", ( args.unsubscribeLink ?: "" ) );

			args.body = layoutHtml;
		}

		if ( Len( Trim( layouthead ) ) ) {
			args.body = renderView( view="/email/layout/empty/htmlWithHead", args={
				  body = args.body
				, head = layouthead
			} );
		}

		return args.body;
	}

	private string function text( event, rc, prc, args={} ) {
		return args.body ?: "";
	}
}