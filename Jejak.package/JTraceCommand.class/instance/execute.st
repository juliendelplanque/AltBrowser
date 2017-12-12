execution
execute
	| aCompiledMethod methodClass methodSelector |
	aCompiledMethod := requestor selectedNode item compiledMethod.
	methodClass := aCompiledMethod methodClass name.
	methodSelector := aCompiledMethod selector.
	(JInstrumentedMethods
		includesClass: methodClass
		andSelector: methodSelector)
		ifTrue: [ | additions |
			additions := OrderedCollection new.
			(JInstrumentedMethods
				atClass: methodClass
				andSelector: methodSelector) addMethodAdditionTo: additions.
			additions do: [ :each | each installMethod ].
			additions do: [ :each | each notifyObservers ].
			JInstrumentedMethods
				removeClass: methodClass
				andSelector: methodSelector.
			AltMethodNode removeMethodAt: methodClass and: methodSelector ]
		ifFalse: [ JVariableProbesWriter analyse: aCompiledMethod ]