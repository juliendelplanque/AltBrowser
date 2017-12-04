selection
updateSelection
	"Update from the model."

	| modelSelection |
	modelSelection := self selectedNode.
	modelSelection isNil
		ifTrue: [ self source contents: ''.
			textMorph ifNotNil: [ :t | t classOrMetaClass: nil ] ]
		ifFalse: [ textMorph
				ifNotNil: [ :t | t classOrMetaClass: modelSelection styleClass ].
			self source aboutToStyle: true.
			self source contents: modelSelection sourceCode.
			modelSelection astNode
				ifNotNil: [ :n | 
					textMorph
						ifNotNil: [ :t | 
							t selectFrom: n sourceInterval first to: n sourceInterval last.
							t scrollSelectionIntoView ] ] ]