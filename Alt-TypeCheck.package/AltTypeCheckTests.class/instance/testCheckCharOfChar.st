tests-type-checking
testCheckCharOfChar
	self deny: ((AltTypeCheckScanner scan: 'aCharOfChar') check: $a)