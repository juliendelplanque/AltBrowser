resources
compare3: anArrayOfChar with: anAny
	anAny isCollection
		ifFalse: [ ^ false ].
	anArrayOfChar size = anAny size
		ifTrue: [ ^ true ].
	anArrayOfChar
		with: anAny
		do: [ :c :i | 
			c asciiValue = i
				ifFalse: [ ^ false ] ].
	^ true