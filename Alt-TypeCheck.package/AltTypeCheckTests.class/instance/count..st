resources
count: anArrayOfChar
	| i |
	i := 0.
	anArrayOfChar do: [ :e | i := i + 1 ].
	^ i