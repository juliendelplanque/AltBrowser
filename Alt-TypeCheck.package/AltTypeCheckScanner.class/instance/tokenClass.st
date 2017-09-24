accessing
tokenClass
	| s result |
	s := self token contents.
	result := true.
	[ result ]
		whileTrue: [ s = 'Char'
				ifTrue: [ ^ Character ].
			s = 'Int'
				ifTrue: [ ^ Integer ].
			(Smalltalk at: s asSymbol ifAbsent: [  ])
				ifNotNil: [ :aClass | ^ aClass ].
			result := s last isDigit.
			s := s allButLast ].
	^ nil