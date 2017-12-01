initialization
release
	records ifNotNil: [ records announcer unsubscribe: self ].
	window ifNotNil: [ window announcer unsubscribe: self ].
	treeMorph ifNotNil: [ treeMorph release ].
	JInstrumentedMethods announcer unsubscribe: self.
	EditorFindReplaceDialogWindow initialize.
	super release