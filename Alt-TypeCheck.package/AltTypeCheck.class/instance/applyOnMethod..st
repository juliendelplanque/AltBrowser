accessing
applyOnMethod: aMethod
	| checks link |
	aMethod ast arguments isEmpty
		ifTrue: [ ^ self ].
	checks := AltArrayOfChecks new
		checks:
			(aMethod ast arguments
				collect: [ :each | AltTypeCheckScanner scan: each name ]).
	link := MetaLink new
		metaObject: checks;
		selector: #checkAll:;
		arguments: #(arguments);
		control: #before.
	aMethod ast link: link.
	self links add: link