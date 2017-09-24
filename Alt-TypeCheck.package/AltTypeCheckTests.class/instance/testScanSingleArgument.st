tests-guards
testScanSingleArgument
	"Test if we can scan a single argument."

	| method check |
	method := AltTypeCheckTests >> #count:.
	self assert: method ast arguments size = 1.
	self assert: method ast arguments first name = 'anArrayOfChar'.
	check := AltTypeCheckScanner scan: method ast arguments first name.
	self assert: check class == AltCollectionType