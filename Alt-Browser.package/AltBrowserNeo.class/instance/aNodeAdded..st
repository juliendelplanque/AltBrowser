updating
aNodeAdded: anEvent
	"Algorithm: look for the parent of the node. If this parent node is found, then add a node equivalent to the contents if they do exist."

	"Works, but in a better world, should be handled by an appropriate changed message."

	"Removed the invariant."

	| aNode |
	self
		withSelectionDo: [ 
			aNode := anEvent node.
			aNode parent
				ifNil: [ 
					rootItems := nil.
					self updateList ]
				ifNotNil: [ :pNode | 
					(self findMorphNodeForAbstractItem: pNode)
						ifNotNil: [ :aMorph | 
							aMorph complexContents rebuildContents.
							aMorph rebuildChildren ] ] ]