execution
execute
	| aCompiledMethod |
	aCompiledMethod := requestor selectedNode item compiledMethod.
	(JInstrumentedMethods
		includesKey:
			(Array
				with: aCompiledMethod methodClass
				with: aCompiledMethod selector))
		ifTrue: [ aCompiledMethod methodClass
				addSelector: aCompiledMethod selector
				withMethod: (JInstrumentedMethods at: aCompiledMethod) ]
		ifFalse: [ JVariableProbesWriter analyse: aCompiledMethod ]