view
textMorph
	^ textMorph
		ifNil: [ PluggableTextMorph stylingClass isNil
				ifTrue: [ PluggableTextMorph stylingClass: SHRBTextStyler ].
			textMorph := (AltPluggableTextMorph
				on: self source
				text: #contents
				accept: #contents:
				readSelection: nil
				menu: #buildTextMenu:)
				font: StandardFonts codeFont;
				hResizing: #spaceFill;
				vResizing: #spaceFill;
				yourself ]