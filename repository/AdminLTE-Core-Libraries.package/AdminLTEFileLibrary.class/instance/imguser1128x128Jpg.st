uploaded metadata
imguser1128x128Jpg
	^ WAFileLibraryResource
		filepath: 'img/user1-128x128.jpg'
		mimeType: (WAMimeType main: 'image' sub: 'jpeg')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #imguser1128x128JpgContent)