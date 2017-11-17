instance creation
openOn: aDebugSession withFullView: aBool andNotification: aString
	| debugger |
	debugger := self on: aDebugSession.
	aBool | self alwaysOpenFullDebugger
		ifTrue: [ debugger open ]
		ifFalse: [ debugger openWithNotification: aString ]