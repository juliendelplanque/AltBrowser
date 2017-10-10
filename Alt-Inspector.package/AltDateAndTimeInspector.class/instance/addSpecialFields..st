private
addSpecialFields: elements
	elements
		add:
			(AltDynamicEyeElement
				host: self object
				label: 'year'
				value: [ self object year ]).
	elements
		add:
			(AltDynamicEyeElement
				host: self object
				label: 'month of year'
				value: [ self object monthIndex ]).
	elements
		add:
			(AltDynamicEyeElement
				host: self object
				label: 'day of month'
				value: [ self object dayOfMonth ]).
	elements
		add:
			(AltDynamicEyeElement
				host: self object
				label: 'full hours'
				value: [ self object hours ]).
	elements
		add:
			(AltDynamicEyeElement
				host: self object
				label: 'full minutes'
				value: [ self object minutes ]).
	elements
		add:
			(AltDynamicEyeElement
				host: self object
				label: 'full seconds'
				value: [ self object seconds ]).
	elements
		add:
			(AltDynamicEyeElement
				host: self object
				label: 'utc'
				value: [ self object asUTC ])