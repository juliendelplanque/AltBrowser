tests-overall
testDynamicVariableRecursion
	"I want to stop a recursion in a limited way."

	| block |
	block := [ :v | 
	v > 1
		ifTrue: [ AltTypeCheckVariable value
				ifNil: [ AltTypeCheckVariable value: #active during: [ block value: v - 1 ] ]
				ifNotNil: [ v ] ]
		ifFalse: [ 0 ] ].
	self assert: (block value: 5) = 4