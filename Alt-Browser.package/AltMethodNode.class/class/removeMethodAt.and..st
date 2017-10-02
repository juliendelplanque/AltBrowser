accessing
removeMethodAt: aClassName and: aSelector
	"Add this method to the register."

	| key |
	key := Array with: aClassName with: aSelector.
	self assert: (self protectedMethods includesKey: key).
	self protectedMethods removeKey: key