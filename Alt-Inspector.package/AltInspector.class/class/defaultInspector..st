settings
defaultInspector: aBoolean
	aBoolean
		ifTrue: [ Smalltalk tools register: self as: #inspector ]
		ifFalse: [ Smalltalk tools
				register: (Smalltalk tools recentInspectorTools detect: [ :e | e ~~ self ])
				as: #inspector ]