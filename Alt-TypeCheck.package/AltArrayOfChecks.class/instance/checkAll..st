accessing
checkAll: anArrayOfObject
	AltTypeCheckVariable value
		ifNil: [ AltTypeCheckVariable
				value: #active
				during: [ checks
						with: anArrayOfObject
						do: [ :c :o | self assert: (c check: o) ] ] ]