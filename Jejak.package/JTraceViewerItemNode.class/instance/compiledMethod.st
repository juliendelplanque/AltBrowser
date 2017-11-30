accessing
compiledMethod
	| a mclass mselector |
	mclass := self methodClass.
	mselector := self methodSelector.
	a := mclass lookupSelector: mselector.
	a isNil
		ifTrue: [ ^ nil ].
	^ JInstrumentedMethods
		at: (Array with: a methodClass with: mselector)
		ifAbsent: [ a ]