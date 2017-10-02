accessing
at: aClassName and: aSelector putMethod: aMethodSource
	"Add this method to the register."

	| key |
	key := Array with: aClassName with: aSelector.
	self assert: (self protectedMethods includesKey: key) not.
	self protectedMethods at: key put: aMethodSource