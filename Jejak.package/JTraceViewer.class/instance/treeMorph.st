user interface
treeMorph
	^ treeMorph
		ifNil: [ treeMorph := AltListMorph new
				model: self records;
				yourself ]