comparing
itemIsSameAs: aValue
	| eval o s s1 s2 |
	eval := aValue.
	^ aValue isArray
		and: [ (o := object == aValue first)
				and: [ s := (s1 := object size) = (s2 := aValue second) ] ]