execution
execute
	| aClass |
	aClass := requestor selectedNode item itemClass.
	self requestorIsGuarded
		ifTrue: [ (AltTypeCheck register at: aClass ifAbsent: [  ])
				ifNotNil: [ :t | t unapply ] ]
		ifFalse: [ AltTypeCheck on: aClass ]