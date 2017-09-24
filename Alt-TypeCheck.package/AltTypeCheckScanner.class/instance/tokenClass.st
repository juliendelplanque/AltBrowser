accessing
tokenClass
	| s |
	s := self token contents.
	s = 'Char'
		ifTrue: [ ^ Character ].
	s = 'Int'
		ifTrue: [ ^ Integer ].
	^ Smalltalk at: s asSymbol ifAbsent: [  ]