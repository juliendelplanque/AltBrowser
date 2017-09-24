tests
testScanACharOrInt
	| scanner res |
	scanner := AltTypeCheckScanner on: (ReadStream on: 'aCharOrInt').
	self assert: (res := scanner scan) notNil.
	self assert: res class == AltOrType