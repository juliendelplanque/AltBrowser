testing
requestorIsGuarded
	| aClass |
	aClass := requestor selectedNode item itemClass.
	^ (AltTypeCheck register includesKey: aClass)
		or: [ AltTypeCheck register includesKey: aClass package ]