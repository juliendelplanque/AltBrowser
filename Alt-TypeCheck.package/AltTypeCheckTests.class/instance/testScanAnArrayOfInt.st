tests
testScanAnArrayOfInt
	| scanner res |
	scanner := AltTypeCheckScanner on: (ReadStream on: 'anArrayOfInt').
	self assert: (res := scanner scan) notNil.
	self assert: res collectionType objectClass == Array