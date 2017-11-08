selection
updateSelection
	"Update from the model."

	| modelSelection |
	modelSelection := self selectedItem.
	modelSelection isNil
		ifTrue: [ textMorph ifNotNil: [ :t | t classOrMetaClass: nil ] ]
		ifFalse: [ textMorph
				ifNotNil: [ :t | 
					t classOrMetaClass: modelSelection styleClass.
					t styler isForWorkspace: false ].
			self source aboutToStyle: true.
			self source contents: modelSelection sourceCode ]