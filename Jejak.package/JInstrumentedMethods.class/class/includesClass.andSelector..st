class variables
includesClass: aClassName andSelector: aSelectorSymbol
	^ self array
		includesKey: (Array with: aClassName with: aSelectorSymbol)