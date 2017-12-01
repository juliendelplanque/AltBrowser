accessing
compiledMethod
	| a mclass mselector |
	mclass := self methodClass.
	mselector := self methodSelector.
	a := mclass lookupSelector: mselector.
	a isNil
		ifTrue: [ ^ nil ].
	^ JInstrumentedMethods
		atClass: a methodClass
		andSelector: mselector
		ifAbsent: [ a ]