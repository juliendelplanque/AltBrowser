accessing
find: aNodeId inSource: aString andClass: aClass
	"Find a node in an ast in parameter."

	| c ast |
	c := self new.
	c target: aNodeId.
	ast := RBParser parseMethod: aString.
	ast doSemanticAnalysisIn: aClass.
	[ c visitNode: ast ]
		on: JCodeNodeFound
		do: [ :ex | ^ ex tag ].
	^ SubscriptOutOfBounds signal