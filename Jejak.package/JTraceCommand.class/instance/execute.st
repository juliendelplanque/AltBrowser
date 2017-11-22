execution
execute
	| aCompiledMethod aKey |
	aCompiledMethod := requestor selectedNode item compiledMethod.
	(JInstrumentedMethods
		includesKey:
			(aKey := Array
				with: aCompiledMethod methodClass name
				with: aCompiledMethod selector))
		ifTrue: [ JInstrumentedMethods at: aKey ]
		ifFalse: [ JVariableProbesWriter analyse: aCompiledMethod ]