uploaded metadata
imgdefault50x50Gif
	^ WAFileLibraryResource
		filepath: 'img/default-50x50.gif'
		mimeType: (WAMimeType main: 'image' sub: 'gif')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #imgdefault50x50GifContent)