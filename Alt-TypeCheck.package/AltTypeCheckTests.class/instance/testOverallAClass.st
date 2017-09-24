tests-overall
testOverallAClass
	"Use the type check overall on the method"

	| method checker |
	method := AltTypeCheckTests >> #compare:with:.
	self deny: method ast hasMetalink.
	[ checker := AltTypeCheck new.
	checker applyOn: self class.
	self
		shouldnt: [ self compare: #($a $b) with: #(1 2) ]
		raise: AssertionFailure.
	self
		should: [ self compare: #(1 2) with: #($a $b) ]
		raise: AssertionFailure ]
		ensure: [ checker unapply ].
	self deny: method ast hasMetalink