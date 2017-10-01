visiting
visitMessageNode: aRBMessageNode
	"Detect at: put: and record it via a new, specific collector message. Note that, to simplify the code, the effective at:put: is sent in the Collecteur instance and not in the original code."

	| receiver arguments nodeId |
	super visitMessageNode: aRBMessageNode.
	(aRBMessageNode selector == #at:put:
		and: [ aRBMessageNode receiver isKindOf: RBVariableNode ])
		ifTrue:
			[ self after: aRBMessageNode send: #recordNode: arguments: #(node) ]