visiting
visitAssignmentNode: aRBAssignmentNode
	"Replace the assignment by a message node holding the assignment as one of the arguments."

	| link |
	super visitAssignmentNode: aRBAssignmentNode.
	self
		after: aRBAssignmentNode
		send: #assign:to:node:
		arguments: #(newValue name node)