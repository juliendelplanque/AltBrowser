accessing
label
	| aMethod |
	aMethod := requestor selectedNode item compiledMethod.
	(JInstrumentedMethods
		includesClass: aMethod methodClass name
		andSelector: aMethod selector)
		ifTrue: [ ^ 'Trace off' ]
		ifFalse: [ ^ 'Trace on' ]