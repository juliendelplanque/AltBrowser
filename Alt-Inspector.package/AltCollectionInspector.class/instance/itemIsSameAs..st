comparing
itemIsSameAs: aValue
	^ aValue isArray
		and: [ object == aValue first and: [ object size = aValue second ] ]