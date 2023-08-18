component {

	private string function html( event, rc, prc, args={} ) {
		var layoutHtml = args.layout_html ?: "";

		if ( Len( Trim( layoutHtml ) ) ) {
			layoutHtml = ReplaceNoCase( layoutHtml, "${body}"           , ( args.body            ?: "" ) );
			layoutHtml = ReplaceNoCase( layoutHtml, "${subject}"        , ( args.subject         ?: "" ) );
			layoutHtml = ReplaceNoCase( layoutHtml, "${viewOnlineLink}" , ( args.viewOnlineLink  ?: "" ) );
			layoutHtml = ReplaceNoCase( layoutHtml, "${unsubscribeLink}", ( args.unsubscribeLink ?: "" ) );

			args.body = layoutHtml;
		}

		return renderView( view="/email/layout/empty/html", args=args );
	}

	private string function text( event, rc, prc, args={} ) {
		return args.body ?: "";
	}
}