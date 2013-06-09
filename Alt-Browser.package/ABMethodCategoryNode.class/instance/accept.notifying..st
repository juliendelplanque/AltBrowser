actions
accept: aText notifying: aController
	"Compile the method. Return a target methodNode object for the method. We know it should be one of our children."

	| aSelector aMethodNode |
	aSelector := self sourceClass compile: aText classified: self methodCategory notifying: aController.	"New node should have been added in there."
	aMethodNode := self contents detect: [ :each | each item == aSelector ].
	^ aMethodNode