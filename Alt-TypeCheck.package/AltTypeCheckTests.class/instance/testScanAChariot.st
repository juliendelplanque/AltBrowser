tests-scan
testScanAChariot
	| scanner res |
	scanner := AltTypeCheckScanner on: (ReadStream on: 'aChariot').
	self assert: (res := scanner scan) isNil