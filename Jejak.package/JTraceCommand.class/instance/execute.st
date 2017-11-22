execution
execute
	| aCompiledMethod aKey |
	aCompiledMethod := requestor selectedNode item compiledMethod.
	(JInstrumentedMethods
		includesKey:
			(aKey := Array
				with: aCompiledMethod methodClass name
				with: aCompiledMethod selector))
		ifTrue: [ | additions |
			additions := OrderedCollection new.
			(JInstrumentedMethods at: aKey) addMethodAdditionTo: additions.
			additions do: [ :each | each installMethod ].
			additions do: [ :each | each notifyObservers ].
			JInstrumentedMethods array removeKey: aKey.
			AltMethodNode removeMethodAt: aKey first and: aKey second ]
		ifFalse: [ JVariableProbesWriter analyse: aCompiledMethod ]