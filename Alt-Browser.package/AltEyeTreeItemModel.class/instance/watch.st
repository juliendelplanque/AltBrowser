updating
watch
	"In practice: return false if myself or any of my contents signal a change."

	parent
		ifNil: [ (self contents
				inject: false
				into: [ :s :e | 
					e watch
						ifTrue: [ true ]
						ifFalse: [ s ] ])
				ifTrue: [ ^ self changed ] ].
	item value == copy
		ifFalse: [ copy := item value.
			contents := nil.
			^ true ].
	^ self contents
		inject: false
		into: [ :s :e | 
			e watch
				ifTrue: [ true ]
				ifFalse: [ s ] ]