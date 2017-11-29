testing
testNodeFinder2
	"Test finding a node in the AST."

	| n m |
	m := JExampleArray >> #rleast:.
	n := JCodeNodeFinder find: 10 in: m.
	self
		assert:
			(n source copyFrom: n sourceInterval first to: n sourceInterval last)
				= '((self size + k - 1) / k) truncated'