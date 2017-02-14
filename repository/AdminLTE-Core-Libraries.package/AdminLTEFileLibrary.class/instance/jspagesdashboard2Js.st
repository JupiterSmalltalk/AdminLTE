uploaded metadata
jspagesdashboard2Js
	^ WAFileLibraryResource
		filepath: 'js/pages/dashboard2.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jspagesdashboard2JsContent)