private
addSpecialFields: elements
	elements
		add:
			(AltDynamicEyeElement
				host: self object
				label: 'sign'
				value: [ self object sign ]).
	elements
		add:
			(AltDynamicEyeElement
				host: self object
				label: 'significand'
				value: [ self object significand ]).
	elements
		add:
			(AltDynamicEyeElement
				host: self object
				label: 'exponent'
				value: [ self object exponent ]).
	elements
		add:
			(AltDynamicEyeElement
				host: self object
				label: 'binary'
				value: [ self object binaryLiteralString ])