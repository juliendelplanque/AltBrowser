tests
testScanAnInt
	| scanner res |
	scanner := AltTypeCheckScanner on: (ReadStream on: 'anInt').
	self assert: (res := scanner scan) notNil.
	self assert: res objectClass == Integer