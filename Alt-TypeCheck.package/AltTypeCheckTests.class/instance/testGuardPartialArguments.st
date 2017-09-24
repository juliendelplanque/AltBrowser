tests-guards
testGuardPartialArguments
	"Test if we can scan a single argument."

	| method checks link |
	method := AltTypeCheckTests >> #compare2:with:.
	self assert: method ast arguments size = 2.
	self assert: method ast arguments first name = 'anArrayOfChar'.
	checks := AltArrayOfChecks new
		checks:
			(method ast arguments
				collect: [ :each | AltTypeCheckScanner scan: each name ]).
	self assert: checks checks second class == AltAnyType.
	link := MetaLink new
		metaObject: checks;
		selector: #checkAll:;
		arguments: #(arguments);
		control: #before.
	method ast link: link.
	[ self
		shouldnt: [ self compare2: #($a $b) with: 1 ]
		raise: AssertionFailure.
	self
		should: [ self compare2: #(1 2) with: #($a $b) ]
		raise: AssertionFailure ]
		ensure: [ link uninstall ]