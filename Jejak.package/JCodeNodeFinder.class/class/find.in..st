accessing
find: aNodeId in: aCompiledMethod
	"Find a node in an ast in parameter."

	| c ast |
	aCompiledMethod ifNil: [ ^ nil ].
	c := self new.
	c target: aNodeId.
	ast := RBParser parseMethod: aCompiledMethod sourceCode.
	ast doSemanticAnalysisIn: aCompiledMethod methodClass.
	[ c visitNode: ast ]
		on: JCodeNodeFound
		do: [ :ex | ^ ex tag ].
	^ SubscriptOutOfBounds signal