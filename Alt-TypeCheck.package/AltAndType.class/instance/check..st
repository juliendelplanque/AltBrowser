testing
check: anObject
	^ (left check: anObject) and: [ right check: anObject ]