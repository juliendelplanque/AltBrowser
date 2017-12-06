accessing
sourceCode
	^ item isMethod
		ifTrue: [ item methodSourceCode ]
		ifFalse: [ parent ifNil: [ '' ] ifNotNil: [ parent sourceCode ] ]