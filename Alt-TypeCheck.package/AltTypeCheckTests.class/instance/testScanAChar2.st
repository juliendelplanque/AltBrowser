tests
testScanAChar2
	| scanner res |
	scanner := AltTypeCheckScanner on: (ReadStream on: 'aChar2').
	self assert: (res := scanner scan) notNil