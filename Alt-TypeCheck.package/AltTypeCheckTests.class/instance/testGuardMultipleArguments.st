tests-guards
testGuardMultipleArguments
	"Test if we can guard multiple arguments."

	| method check link |
	method := AltTypeCheckTests >> #compare:with:.
	self assert: method ast arguments size = 2.
	self assert: method ast arguments first name = 'anArrayOfChar'.
	check := AltArrayOfChecks new
		checks:
			(method ast arguments
				collect: [ :each | AltTypeCheckScanner scan: each name ]).
	link := MetaLink new
		metaObject: check;
		selector: #checkAll:;
		arguments: #(arguments);
		control: #before.
	method ast link: link.
	[ self
		shouldnt: [ self compare: #($a $b) with: #(1 2) ]
		raise: AssertionFailure.
	self
		should: [ self compare: #(1 2) with: #(1 2) ]
		raise: AssertionFailure ]
		ensure: [ link uninstall ]