testing
isProtected
	^ self compiledMethod
		in: [ :aCompiledMethod | 
			self class protectedMethods
				includesKey:
					(Array
						with: aCompiledMethod methodClass name
						with: aCompiledMethod selector) ]