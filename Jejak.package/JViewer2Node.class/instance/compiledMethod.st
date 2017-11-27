accessing
compiledMethod
	| a |
	item isMethod
		ifFalse: [ ^ nil ].
	a := item mclass lookupSelector: item selector.
	a isNil
		ifTrue: [ ^ nil ].
	^ JInstrumentedMethods
		at: (Array with: a methodClass with: item selector)
		ifAbsent: [ a ]