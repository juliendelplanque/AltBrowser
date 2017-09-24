tests-guards
testRecoverSingleArgument
	"Test if we can recover a single argument."

	| method |
	method := AltTypeCheckTests >> #count:.
	self assert: method ast arguments size = 1.
	self assert: method ast arguments first name = 'anArrayOfChar'