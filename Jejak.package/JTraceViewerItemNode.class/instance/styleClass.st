accessing
styleClass
	^ item isMethod
		ifTrue: [ item mclass ]
		ifFalse: [ parent ifNil: [  ] ifNotNil: [ parent styleClass ] ]