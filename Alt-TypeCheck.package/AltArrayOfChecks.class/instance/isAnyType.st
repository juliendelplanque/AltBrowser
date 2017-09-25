testing
isAnyType
	^ checks isEmpty
		or: [ checks allSatisfy: [ :each | each isAnyType ] ]