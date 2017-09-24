tests-type-checking
testCheckChar
	self assert: ((AltTypeCheckScanner scan: 'aChar') check: $a)