class variables
atClass: aClassName andSelector: aSelectorSymbol ifAbsent: aBlock
	^ self array
		at: (Array with: aClassName with: aSelectorSymbol)
		ifAbsent: aBlock