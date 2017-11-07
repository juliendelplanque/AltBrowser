initialization
release
	stack ifNotNil: [ stack announcer unsubscribe: self ].
	window ifNotNil: [ window announcer unsubscribe: self ].
	stackMorph ifNotNil: [ stackMorph release ].
	EditorFindReplaceDialogWindow initialize.
	super release