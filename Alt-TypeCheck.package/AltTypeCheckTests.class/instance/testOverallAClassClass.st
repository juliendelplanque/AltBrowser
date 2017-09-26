tests-overall
testOverallAClassClass
	"Use the type check overall on the class class"

	| method checker |
	method := AltTypeCheckTests class >> #compare1:with:.
	self deny: method ast hasMetalink.
	[ checker := AltTypeCheck on: self class class.
	self
		shouldnt: [ self class compare1: #($a $b) with: #(1 2) ]
		raise: AssertionFailure.
	self
		should: [ self class compare1: #(1 2) with: #($a $b) ]
		raise: AssertionFailure.
	self
		shouldnt: [ self class compare3: #($a $b) with: 2 ]
		raise: AssertionFailure.
	self
		should: [ self class compare3: #(1 2) with: #(1 2) ]
		raise: AssertionFailure ]
		ensure: [ checker unapply ].
	self deny: method ast hasMetalink.
	self assert: AltTypeCheck register isEmpty