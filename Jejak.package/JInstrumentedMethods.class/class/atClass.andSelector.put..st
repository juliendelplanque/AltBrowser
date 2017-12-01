class variables
atClass: aClassName andSelector: aSelectorSymbol put: aMCMethodDefinition
	self array
		at: (Array with: aClassName with: aSelectorSymbol)
		put: aMCMethodDefinition.
	AltMethodNode
		at: aClassName
		and: aSelectorSymbol
		putMethod: aMCMethodDefinition source.
	self
		announce: (JMethodAdded onClass: aClassName andSelector: aSelectorSymbol)