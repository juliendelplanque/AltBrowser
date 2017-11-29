accessing
find: aNodeId inAST: anAST
	"Find a node in an ast in parameter."

	| c |
	c := self new.
	c target: aNodeId.
	[ c visitNode: anAST ]
		on: JCodeNodeFound
		do: [ :ex | ^ ex tag ].
	^ SubscriptOutOfBounds signal