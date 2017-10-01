visiting
visitReturnNode: aRBReturnNode
	"I record the exit of a method."

	| link |
	super visitReturnNode: aRBReturnNode.
	self
		before: aRBReturnNode
		send: #return:node:
		arguments: #(value node)