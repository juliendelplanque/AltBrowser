stepping
stepAt: aTime in: aSystemWindow
	| lastTimeStep |
	lastTimeStep := DateAndTime now.
	object ifNotNil: [ object watch ].
	(DateAndTime now - lastTimeStep) asMilliSeconds > 1000
		ifTrue: [ window stopStepping ]