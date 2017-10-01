visiting
visitMethodNode: aRBMethodNode
	"I record the entry into a method. Necessary: events are hierarchically scoped. I need also to find a place where to add a return node."

	| stats |
	super visitMethodNode: aRBMethodNode.
	self
		before: aRBMethodNode
		send: #enter:selector:arguments:node:
		arguments: #(receiver selector arguments node).
	stats := aRBMethodNode body statements.
	(stats last isKindOf: RBReturnNode)
		ifFalse: [ self after: stats last send: #return: arguments: #(object) ]