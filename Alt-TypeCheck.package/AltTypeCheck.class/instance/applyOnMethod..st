accessing
applyOnMethod: aMethod
	| checks link |
	aMethod ast arguments isEmpty
		ifTrue: [ ^ self ].
	(self forbiddenMethods includes: aMethod)
		ifTrue: [ ^ self ].
	self incrementVisited.
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