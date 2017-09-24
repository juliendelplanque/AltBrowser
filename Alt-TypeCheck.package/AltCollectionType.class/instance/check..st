testing
check: anObject
	^ (collectionType check: anObject)
		and: [ (anObject respondsTo: #allSatisfy:)
				and: [ anObject allSatisfy: [ :each | elementType check: each ] ] ]