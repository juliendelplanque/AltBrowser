tests
testScanACharacter
	| scanner res |
	scanner := AltTypeCheckScanner on: (ReadStream on: 'aCharacter').
	self assert: (res := scanner scan) notNil.
	self assert: res objectClass == Character