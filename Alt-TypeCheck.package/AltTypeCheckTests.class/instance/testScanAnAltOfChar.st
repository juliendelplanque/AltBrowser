tests-scan
testScanAnAltOfChar
	"Example of a mismatch: considered as a collection."

	| scanner res |
	scanner := AltTypeCheckScanner on: (ReadStream on: 'anAltOfChar').
	self assert: (res := scanner scan) notNil.
	self assert: res class == AltObjectType