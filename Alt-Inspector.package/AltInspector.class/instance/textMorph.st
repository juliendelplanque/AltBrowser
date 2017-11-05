user interface
textMorph
	^ textMorph
		ifNil: [ textMorph := (AltPluggableTextMorph
				on: self
				text: #source
				accept: nil
				readSelection: nil
				menu: #buildTextMenu:)
				font: StandardFonts codeFont;
				hResizing: #spaceFill;
				vResizing: #spaceFill;
				yourself ]