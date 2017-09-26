testing
requestorIsGuarded
	| aPackage |
	aPackage := requestor selectedNode item rpackage.
	^ AltTypeCheck register includesKey: aPackage