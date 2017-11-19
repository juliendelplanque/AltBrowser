actions
whereIs
	(self session selectedCodeRangeForContext: self selectedItem item)
		in: [ :s | 
			textMorph
				ifNotNil: [ :t | 
					t selectFrom: s first to: s last.
					t scrollSelectionIntoView.
					t changed ] ]