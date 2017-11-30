accessing
methodSelector
	^ item isMethod
		ifTrue: [ item selector ]
		ifFalse: [ parent ifNil: [  ] ifNotNil: [ parent methodSelector ] ]