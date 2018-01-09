initialization
release
	object
		ifNotNil: [ object announcer unsubscribe: self.
			object release ].
	window ifNotNil: [ window announcer unsubscribe: self ].
	treeMorph ifNotNil: [ treeMorph release ].
	EditorFindReplaceDialogWindow initialize.
	super release