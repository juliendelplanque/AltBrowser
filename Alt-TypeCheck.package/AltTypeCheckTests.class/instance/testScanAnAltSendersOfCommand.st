tests
testScanAnAltSendersOfCommand
	| scanner res |
	scanner := AltTypeCheckScanner
		on: (ReadStream on: 'anAltSendersOfCommand').
	self assert: (res := scanner scan) notNil.
	self assert: res objectClass == AltSendersOfCommand