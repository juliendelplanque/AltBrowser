user interface
textMorph
	^ textMorph
		ifNil: [ PluggableTextMorph stylingClass isNil
				ifTrue: [ PluggableTextMorph stylingClass: SHTextStylerST80 ].
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