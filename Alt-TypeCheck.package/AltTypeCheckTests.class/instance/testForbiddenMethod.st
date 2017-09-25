tests-overall
testForbiddenMethod
	"Use the type check overall on the package"

	| method checker |
	method := AltAnyType >> #check:.
	self deny: method ast hasMetalink.
	checker := AltTypeCheck new.
	[ checker applyOnMethod: method.
	self deny: method ast hasMetalink ]
		ensure: [ checker unapply ].
	self deny: method ast hasMetalink