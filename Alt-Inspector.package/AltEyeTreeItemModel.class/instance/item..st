accessing
item: anItem
	anItem ifNotNil: [ copy := self inspector recordedItem ].
	^ super item: anItem