accessing
value
	^ [ self host tempNamed: self tempName ]
		on: Error
		do: [  ]