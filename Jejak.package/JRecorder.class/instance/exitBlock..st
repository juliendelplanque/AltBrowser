execution graph
exitBlock: aNode
	"I'm going out of a block. Check that our last item is the one we're expecting."

	self assert: stack last isMethod not.
	stack removeLast.
	^ aNode