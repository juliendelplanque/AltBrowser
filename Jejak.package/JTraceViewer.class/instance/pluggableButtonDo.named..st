private
pluggableButtonDo: aSymbol named: aString
	| aButton |
	aButton := PluggableButtonMorph
		on: self
		getState: nil
		action: aSymbol.
	aButton
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		label: aString.
	^ aButton