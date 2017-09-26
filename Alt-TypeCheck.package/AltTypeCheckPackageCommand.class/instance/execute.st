execution
execute
	| aPackage |
	aPackage := requestor selectedNode item rpackage.
	self requestorIsGuarded
		ifTrue: [ (AltTypeCheck register at: aPackage ifAbsent: [  ])
				ifNotNil: [ :t | t unapply ] ]
		ifFalse: [ AltTypeCheck on: aPackage ]