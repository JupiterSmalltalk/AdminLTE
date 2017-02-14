uploaded metadata
imgphoto3Jpg
	^ WAFileLibraryResource
		filepath: 'img/photo3.jpg'
		mimeType: (WAMimeType main: 'image' sub: 'jpeg')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #imgphoto3JpgContent)