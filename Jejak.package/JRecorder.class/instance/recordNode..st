execution graph
recordNode: n
	"Record that we have gone through a node."

	| r |
	r := JRecordItem new selector: nil node: n.
	self addChild: r