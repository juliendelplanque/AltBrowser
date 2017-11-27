commands
buildTreeMenu: aMenu on: aTreeMorph with: aRequestor
	"The item-based stack menu."

	((self
		pragmas: #treeAreaCommand
		from: self class
		to: AltTreeItemModel)
		sorted: [ :a :b | a methodSelector < b methodSelector ])
		do: [ :e | 
			(self perform: e methodSelector)
				do:
					[ :c | (c asClass on: aTreeMorph for: aRequestor) addItemToMenu: aMenu ] ]
		separatedBy: [ aMenu addLine ].
	^ aMenu