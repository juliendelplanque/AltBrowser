testing
testNodeFinder3
	"Test finding a node in the AST."

	| n m |
	m := JExampleArray >> #rleast:.
	n := JCodeNodeFinder find: 22 in: m.
	self
		assert:
			(n source copyFrom: n sourceInterval first to: n sourceInterval last)
				= 'n == 1'