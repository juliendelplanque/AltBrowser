tests-scan
testScanAnAltOfChar
	"Example of a ambiguity well handled: considered as a class test."

	| scanner res |
	scanner := AltTypeCheckScanner on: (ReadStream on: 'anAltOfChar').
	self assert: (res := scanner scan) notNil.
	self assert: res class == AltObjectType