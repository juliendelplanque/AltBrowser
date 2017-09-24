testing
checkAll: anArrayOfObject
	checks
		with: anArrayOfObject
		do: [ :c :o | self assert: (c check: o) ]