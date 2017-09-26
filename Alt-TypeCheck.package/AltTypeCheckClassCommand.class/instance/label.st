accessing
label
	self requestorIsGuarded
		ifTrue: [ ^ 'un-type-check' ]
		ifFalse: [ ^ 'type-check' ]