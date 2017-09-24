tests-guards
testGuardWithAnyArgument
	"Test if we can add the guard with an any argument."

	| method checks link |
	method := AltTypeCheckTests >> #compare3:with:.
	self assert: method ast arguments size = 2.
	self assert: method ast arguments first name = 'anArrayOfChar'.
	checks := AltArrayOfChecks new
		checks:
			(method ast arguments
				collect: [ :each | AltTypeCheckScanner scan: each name ]).
	link := MetaLink new
		metaObject: checks;
		selector: #checkAll:;
		arguments: #(arguments);
		control: #before.
	method ast link: link.
	[ self
		shouldnt: [ self compare3: #($a $b) with: 2 ]
		raise: AssertionFailure.
	self
		should: [ self compare3: #(1 2) with: #($a $b) ]
		raise: AssertionFailure ]
		ensure: [ link uninstall ]