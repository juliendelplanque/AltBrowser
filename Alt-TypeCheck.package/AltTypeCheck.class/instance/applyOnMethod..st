accessing
applyOnMethod: aMethod
	| checks link |
	(self forbiddenMethods includes: aMethod)
		ifTrue: [ ^ self ].
	aMethod ast arguments isEmpty
		ifTrue: [ ^ self ].
	checks := AltArrayOfChecks new
		checks:
			(aMethod ast arguments
				collect: [ :each | AltTypeCheckScanner scan: each name ]).
	checks isAnyType
		ifTrue: [ ^ self ].
	self assert: aMethod ast hasMetalink not.
	link := MetaLink new
		metaObject: checks;
		selector: #checkAll:;
		arguments: #(arguments);
		control: #before.
	aMethod ast link: link.
	self links add: link