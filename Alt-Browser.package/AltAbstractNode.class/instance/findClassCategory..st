querying
findClassCategory: aCat
	"Return the node if the item matches. By default, search among the kids. Is lazy and will avoid triggering child building."

	"Make it lazy : do not trigger contents generation."

	| res |
	contents notNil
		ifTrue: [ 
			self contents
				do: [ :each | 
					(res := each findClassCategory: aCat) notNil
						ifTrue: [ ^ res ] ] ].
	^ nil