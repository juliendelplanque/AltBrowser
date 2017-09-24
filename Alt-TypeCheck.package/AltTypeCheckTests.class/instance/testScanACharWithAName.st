tests
testScanACharWithAName
	| scanner res |
	scanner := AltTypeCheckScanner on: (ReadStream on: 'aCharWithAName').
	self assert: (res := scanner scan) notNil.
	self assert: res objectClass == Character