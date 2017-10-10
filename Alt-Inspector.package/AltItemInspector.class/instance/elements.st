accessing
elements
	| elements |
	elements := OrderedCollection new.
	self addSpecialFields: elements.
	self addInstancesVariable: elements.
	self addVariableFields: elements.
	^ elements