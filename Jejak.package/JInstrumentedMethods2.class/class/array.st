accessing
array
	array isNil
		ifTrue: [ array := IdentityDictionary new ].
	^ array