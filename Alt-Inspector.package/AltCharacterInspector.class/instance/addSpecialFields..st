private
addSpecialFields: elements
	elements
		add:
			(AltDynamicEyeElement
				host: self object
				label: 'unicode'
				description: [ self objectAsUnicodeCodePoint ]
				value: [ self object codePoint ])