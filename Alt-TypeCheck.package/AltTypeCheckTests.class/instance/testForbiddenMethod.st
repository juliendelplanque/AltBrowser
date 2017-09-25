tests-overall
testForbiddenMethod
	"Test that this method cannot be checked."

	| method checker |
	method := AltArrayOfChecks >> #checkAll:.
	self deny: method ast hasMetalink.
	checker := AltTypeCheck new.
	[ checker applyOnMethod: method.
	self deny: method ast hasMetalink ]
		ensure: [ checker unapply ].
	self deny: method ast hasMetalink