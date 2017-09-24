tests-scan
testScanACharOfChar
	"Example of a mismatch: considered as a collection."
	
	| scanner res |
	scanner := AltTypeCheckScanner on: (ReadStream on: 'aCharOfChar').
	self assert: (res := scanner scan) notNil.
	self assert: res class == AltCollectionType