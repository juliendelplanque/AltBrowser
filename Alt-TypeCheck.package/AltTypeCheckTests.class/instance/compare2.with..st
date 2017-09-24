resources
compare2: anArrayOfChar with: somethingElse
	somethingElse isCollection
		ifFalse: [ ^ false ].
	anArrayOfChar size = somethingElse size
		ifTrue: [ ^ true ].
	anArrayOfChar
		with: somethingElse
		do: [ :c :i | 
			c asciiValue = i
				ifFalse: [ ^ false ] ].
	^ true