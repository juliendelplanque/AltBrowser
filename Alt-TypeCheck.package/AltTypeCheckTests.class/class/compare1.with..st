resources
compare1: anArrayOfChar with: anArrayOfInt
	anArrayOfChar size = anArrayOfInt size
		ifTrue: [ ^ true ].
	anArrayOfChar
		with: anArrayOfInt
		do: [ :c :i | 
			c asciiValue = i
				ifFalse: [ ^ false ] ].
	^ true