accessing
sourceCode
	^ item isMethod
		ifTrue: [ self compiledMethod
				ifNil: [ 'Source code not found' ]
				ifNotNil: [ :m | 
					AltMethodNode protectedMethods
						at: (Array with: m methodClass name with: m selector)
						ifAbsent: [ m sourceCode ] ] ]
		ifFalse: [ parent ifNil: [ '' ] ifNotNil: [ parent sourceCode ] ]