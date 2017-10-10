private
addSpecialFields: elements
	elements
		add:
			(AltDynamicEyeElement
				host: self object
				label: 'hex bytes'
				description: [ self objectAsHexBytes ]
				value: [ self object ]).
	elements
		add:
			(AltDynamicEyeElement
				host: self object
				label: 'hex string'
				value: [ self objectAsHexString ]).
	elements
		add:
			(AltDynamicEyeElement
				host: self object
				label: 'latin-1 string'
				value: [ self objectAsLatin1String ]).
	elements
		add:
			(AltDynamicEyeElement
				host: self object
				label: 'utf-8 string'
				value: [ [ self objectAsUTF8String ]
						on: ZnInvalidUTF8
						do: [ :exception | exception asString ] ])