uploaded metadata
cssskinsskingreenminCss
	^ WAFileLibraryResource
		filepath: 'css/skins/skin-green.min.css'
		mimeType: (WAMimeType main: 'text' sub: 'css')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #cssskinsskingreenminCssContent)