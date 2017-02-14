uploaded metadata
imgphoto4Jpg
	^ WAFileLibraryResource
		filepath: 'img/photo4.jpg'
		mimeType: (WAMimeType main: 'image' sub: 'jpeg')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #imgphoto4JpgContent)