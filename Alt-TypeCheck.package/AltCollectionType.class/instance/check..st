testing
check: anObject
	^ (collectionType check: anObject)
		and: [ anObject allSatisfy: [ elementType check: anObject ] ]