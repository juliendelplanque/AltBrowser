comparing
recordedItem
	^ object isImmediate
		ifTrue: [ object copy ]
		ifFalse: [ object ]