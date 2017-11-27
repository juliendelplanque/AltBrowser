accessing
sourceCode
	^ item isMethod
		ifTrue: [ self compiledMethod
				in: [ :m | 
					AltMethodNode protectedMethods
						at: (Array with: m methodClass name with: m selector)
						ifAbsent: [ m sourceCode ] ] ]
		ifFalse: [ parent ifNil: [ '' ] ifNotNil: [ parent sourceCode ] ]