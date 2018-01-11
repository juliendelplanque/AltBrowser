accessing
item: anItem
	item := anItem.
	anItem ifNotNil: [ copy := self inspector recordedItem ]