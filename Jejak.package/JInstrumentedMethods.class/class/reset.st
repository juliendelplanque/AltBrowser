class variables
reset
	array
		keysAndValuesDo:
			[ :key :value | AltMethodNode removeMethodAt: key first and: key second ].
	array := nil