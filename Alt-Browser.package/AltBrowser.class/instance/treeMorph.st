view
treeMorph
	^ treeMorph
		ifNil: [ treeMorph := AltListMorph new
				model: self root;
				yourself ]