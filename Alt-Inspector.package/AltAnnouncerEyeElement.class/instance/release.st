initialize-release
release
	announcements ifNotNil: [ host unsubscribe: announcements ].
	super release