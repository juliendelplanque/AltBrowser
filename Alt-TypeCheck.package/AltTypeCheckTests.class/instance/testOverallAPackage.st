tests-overall
testOverallAPackage
	"Use the type check overall on the package"

	| method checker |
	method := AltTypeCheckTests >> #compare:with:.
	self deny: method ast hasMetalink.
	[ checker := AltTypeCheck new.
	checker applyOn: self class package.
	self
		shouldnt: [ self compare: #($a $b) with: #(1 2) ]
		raise: AssertionFailure.
	self
		should: [ self compare: #(1 2) with: #($a $b) ]
		raise: AssertionFailure.
	self
		shouldnt: [ self compare3: #($a $b) with: 2 ]
		raise: AssertionFailure.
	self
		should: [ self compare3: #(1 2) with: #(1 2) ]
		raise: AssertionFailure ]
		ensure: [ checker unapply ].
	self deny: method ast hasMetalink