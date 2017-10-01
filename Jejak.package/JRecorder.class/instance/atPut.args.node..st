execution graph
atPut: anObject args: anArrayOfObjects node: n
	| anIndex aValue aName |
	anIndex := anArrayOfObjects first.
	aValue := anArrayOfObjects last.
	aName := n receiver name.
	self
		addChild:
			(JRecordAssignment new
				var: aName , '[' , anIndex printString , ']'
				node: n
				value: aValue shallowCopy).
	^ anObject at: anIndex put: aValue