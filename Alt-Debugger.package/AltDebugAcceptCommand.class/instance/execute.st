execution
execute
	"The execute may create an object or return us one."

	| result selection |
	target accept.
	selection := requestor selectedNode item.
	result := requestor session
		recompileMethodTo: target text
		inContext: selection
		notifying: target.
	requestor updateSession