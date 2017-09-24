tests-guards
testGuardSingleArgument
	"Test if we can scan a single argument."

	| method check link |
	method := AltTypeCheckTests >> #count:.
	self assert: method ast arguments size = 1.
	self assert: method ast arguments first name = 'anArrayOfChar'.
	check := AltTypeCheckScanner scan: method ast arguments first name.
	self assert: check class == AltCollectionType.
	link := MetaLink new
		metaObject: ((AltObjectType on: Array) of: check);
		selector: #check:;
		arguments: #(arguments);
		control: #before.
	method ast link: link.
	[ self count: #($1 $2) ]
		ensure: [ link uninstall ]