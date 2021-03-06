updating
aNodeRemoved: anEvent
	"Beware : a node is not an instance of ABTreeNodeModel"

	| aNode |
	aNode := anEvent node.
	self assert: aNode isTreeNodeModel not.
	treeMorph nodeList
		do: [ :e | 
			| r |
			(r := e findItem: aNode) notNil
				ifTrue: [ 
					r == e
						ifTrue: [ 
							rootItems := nil.
							self changed: #rootNodes ]
						ifFalse: [ 
							| n |
							r parentNode contents remove: r.
							(n := self findMorphNodeForItem: r) notNil
								ifTrue: [ 
									self changed: #deselectAll.
									n rebuildChildren ] ] ] ]