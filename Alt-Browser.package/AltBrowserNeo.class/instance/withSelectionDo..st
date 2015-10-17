private
withSelectionDo: aBlock
	"While doing a block, make sure we maintain our selection and state."

	| selAbstractItem prev |
	(selection isNil or: [ selection selectedNodePath isNil ])
		ifTrue: [ ^ aBlock value ].
	selAbstractItem := selection selectedNodePath last complexContents item.
	prev := isSelectionUpdate.
	isSelectionUpdate := true.
	aBlock
		ensure: [ 
			(self findMorphNodeForAbstractItem: selAbstractItem)
				ifNil: [ 
					isSelectionUpdate := prev.
					self deselectAll ]
				ifNotNil: [ :selMorph | 
					treeMorph
						setSelectedMorph: selMorph;
						scrollSelectionIntoView.
					isSelectionUpdate := prev ] ]