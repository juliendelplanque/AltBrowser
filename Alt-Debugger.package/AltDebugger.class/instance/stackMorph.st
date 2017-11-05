user interface
stackMorph
	^ stackMorph
		ifNil: [ stackMorph := AltListMorph new
				model: self stack;
				yourself ]