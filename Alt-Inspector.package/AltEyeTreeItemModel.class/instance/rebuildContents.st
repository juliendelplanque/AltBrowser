updating
rebuildContents
	"Rebuild the contents, considering our item has changed, but try not to recreate everything."

	| oldContents |
	oldContents := contents.
	self
		contents:
			(self childrenItems
				collect: [ :ci | 
					oldContents
						detect: [ :oc | oc item = ci ]
						ifNone: [ self childNodeFromItem: ci ] ]).
	oldContents
		do: [ :each | 
			(contents includes: each)
				ifFalse: [ each release ] ].
	self changed