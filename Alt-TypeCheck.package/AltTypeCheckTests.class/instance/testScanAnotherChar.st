tests-scan
testScanAnotherChar
	| scanner res |
	scanner := AltTypeCheckScanner on: (ReadStream on: 'anotherChar').
	self assert: (res := scanner scan) notNil.
	self assert: res objectClass == Character