commands
buildStackMenu: aMenu on: aStackMorph with: aRequestor
	"The item-based stack menu."

	((self
		pragmas: #stackAreaCommand
		from: self class
		to: AltContextItemModel)
		sorted: [ :a :b | a methodSelector < b methodSelector ])
		do: [ :e | 
			(self perform: e methodSelector)
				do:
					[ :c | (c asClass on: aStackMorph for: aRequestor) addItemToMenu: aMenu ] ]
		separatedBy: [ aMenu addLine ].
	^ aMenu