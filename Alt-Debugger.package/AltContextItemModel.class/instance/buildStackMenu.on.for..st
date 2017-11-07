commands
buildStackMenu: aMenu on: aStackMorph for: aRequestor
	"The item-based stack menu."

	((self
		pragmas: #stackAreaCommand
		from: item class
		to: AltAbstractEyeElement)
		sorted: [ :a :b | a methodSelector < b methodSelector ])
		do: [ :e | 
			(item perform: e methodSelector)
				do:
					[ :c | (c asClass on: aStackMorph for: aRequestor) addItemToMenu: aMenu ] ]
		separatedBy: [ aMenu addLine ].
	^ aMenu