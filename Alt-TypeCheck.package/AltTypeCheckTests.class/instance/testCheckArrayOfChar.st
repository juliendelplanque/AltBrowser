tests-type-checking
testCheckArrayOfChar
	self deny: ((AltTypeCheckScanner scan: 'anArrayOfChar') check: $a).
	self
		assert: ((AltTypeCheckScanner scan: 'anArrayOfChar') check: #($a $b))