selection
updateSelection
	"Update from the model."

	| modelSelection |
	modelSelection := self selectedItem.
	self extensions do: [ :e | e delete ].
	extensions := nil.
	self updateTextKeymap.
	self updateStackKeymap.
	modelSelection isNil
		ifTrue: [ textMorph ifNotNil: [ :t | t classOrMetaClass: nil ] ]
		ifFalse: [ textMorph
				ifNotNil: [ :t | t classOrMetaClass: modelSelection styleClass ].
			self source aboutToStyle: true.
			self source contents: modelSelection sourceCode.
			(modelSelection item receiver respondsTo: #altDebuggerExtensions:)
				ifTrue: [ extensions := modelSelection item receiver
						altDebuggerExtensions: self.
					self extensions do: [ :e | toolbar addMorphBack: e ] ].
			(self session selectedCodeRangeForContext: modelSelection item)
				in: [ :s | 
					textMorph
						ifNotNil: [ :t | 
							t selectFrom: s first to: s last.
							t scrollSelectionIntoView ] ].
			self inspector object item: modelSelection item.
			self inspector object rebuildContents ]