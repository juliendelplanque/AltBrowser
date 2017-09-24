tests
testScanAnArray
	| scanner res |
	scanner := AltTypeCheckScanner on: (ReadStream on: 'anArray').
	self assert: (res := scanner scan) notNil.
	self assert: res objectClass == Array