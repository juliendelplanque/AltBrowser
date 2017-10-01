visiting
visitBlockNode: aRBBlockNode
	super visitBlockNode: aRBBlockNode.
	self
		before: aRBBlockNode statements first
		send: #enterBlock:
		arguments: #(node).
	(aRBBlockNode statements last isKindOf: RBReturnNode)
		ifFalse: [ self
				after: aRBBlockNode statements last
				send: #exitBlock:
				arguments: #(node) ]