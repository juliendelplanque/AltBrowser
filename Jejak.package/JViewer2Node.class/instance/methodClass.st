accessing
methodClass
	^ item isMethod
		ifTrue: [ item mclass ]
		ifFalse: [ parent ifNil: [  ] ifNotNil: [ parent methodClass ] ]