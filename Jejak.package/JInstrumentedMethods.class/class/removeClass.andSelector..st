class variables
removeClass: aClassName andSelector: aSelectorSymbol
	self array removeKey: (Array with: aClassName with: aSelectorSymbol).
	self
		announce: (JMethodRemoved onClass: aClassName andSelector: aSelectorSymbol)