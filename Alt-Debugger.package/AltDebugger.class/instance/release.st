initialization
release
	stack ifNotNil: [ stack announcer unsubscribe: self ].
	window ifNotNil: [ window announcer unsubscribe: self ].
	stackMorph ifNotNil: [ stackMorph release ].
	inspector ifNotNil: [ inspector release ].
	EditorFindReplaceDialogWindow initialize.
	super release