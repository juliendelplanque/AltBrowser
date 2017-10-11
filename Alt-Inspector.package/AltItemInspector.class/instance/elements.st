accessing
elements
	| elements |
	elements := OrderedCollection new.
	self addSpecialFields: elements.
	self addInstanceVariables: elements.
	self addVariableFields: elements.
	^ elements