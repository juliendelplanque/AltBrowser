tests-guards
testOverallOneMethod
	"Use the type check overall on the method"

	| method checker |
	method := AltTypeCheckTests >> #compare:with:.
	[ checker := AltTypeCheck new.
	checker applyOnMethod: method.
	self
		shouldnt: [ self compare: #($a $b) with: #(1 2) ]
		raise: AssertionFailure.
	self
		should: [ self compare: #(1 2) with: #($a $b) ]
		raise: AssertionFailure ]
		ensure: [ checker unapply ]