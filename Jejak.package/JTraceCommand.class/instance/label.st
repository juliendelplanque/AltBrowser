accessing
label
	| aMethod |
	aMethod := requestor selectedNode item compiledMethod.
	(JInstrumentedMethods includesKey: (Array with: aMethod methodClass name with: aMethod selector))
		ifTrue: [ ^ 'Trace off' ]
		ifFalse: [ ^ 'Trace on' ]