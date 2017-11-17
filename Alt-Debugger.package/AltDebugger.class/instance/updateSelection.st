selection
updateSelection
	"Update from the model."

	| modelSelection |
	modelSelection := self selectedItem.
	modelSelection isNil
		ifTrue: [ textMorph ifNotNil: [ :t | t classOrMetaClass: nil ] ]
		ifFalse: [ textMorph
				ifNotNil: [ :t | t classOrMetaClass: modelSelection styleClass ].
			self source aboutToStyle: true.
			self source contents: modelSelection sourceCode.
			(self session selectedCodeRangeForContext: modelSelection item)
				in: [ :s | 
					textMorph
						ifNotNil: [ :t | 
							t selectFrom: s first to: s last.
							t scrollSelectionIntoView ] ].
			self inspector object item: modelSelection item.
			self inspector object contents: nil.
			self inspector object changed ]