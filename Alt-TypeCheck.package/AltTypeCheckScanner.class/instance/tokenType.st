accessing
tokenType
	| s result |
	s := self token contents.
	result := true.
	[ result ]
		whileTrue: [ s = 'Char'
				ifTrue: [ ^ type := AltObjectType on: Character ].
			s = 'Int'
				ifTrue: [ ^ type := AltObjectType on: Integer ].
			s = 'Any'
				ifTrue: [ ^ type := AltAnyType new ].
			(Smalltalk at: s asSymbol ifAbsent: [  ])
				ifNotNil: [ :aClass | ^ type := AltObjectType on: aClass ].
			result := s last isDigit.
			s := s allButLast ].
	^ nil