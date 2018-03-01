settings
defaultDebugger: aBoolean
	aBoolean
		ifTrue: [ self register ]
		ifFalse: [ Smalltalk tools
				register: (Smalltalk tools recentDebuggerTools detect: [ :e | e ~~ self ])
				as: #debugger ]