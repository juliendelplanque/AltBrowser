querying
sourceCode
	"Get the source code through the parent."

	| aCompiledMethod |
	aCompiledMethod := self compiledMethod.
	^ self class protectedMethods
		at:
			(Array
				with: aCompiledMethod methodClass name
				with: aCompiledMethod selector)
		ifAbsent: [ aCompiledMethod sourceCode ]