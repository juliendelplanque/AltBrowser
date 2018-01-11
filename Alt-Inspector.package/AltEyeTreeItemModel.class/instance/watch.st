updating
watch
	"In practice: return false if myself or any of my contents signal a change."

	parent
		ifNil: [ self contents
				do: [ :e | 
					e watch
						ifTrue: [ self changed.
							false ] ] ].
	item isNil
		ifTrue: [ ^ copy notNil ].
	(self inspector itemIsSameAs: copy)
		ifFalse: [ copy := self inspector recordedItem.
			contents := nil.
			^ true ].
	self contents
		do: [ :e | 
			e watch
				ifTrue: [ self changed ] ].
	^ false