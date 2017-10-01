execution graph
enter: object selector: sel arguments: anArrayOfObject node: nid
	"we are going into a method. Add a level."

	| n |
	n := JRecordMethod new
		object: object shallowCopy
		selector: sel
		node: nid.
	self addChild: n.
	stack addLast: n.
	nid arguments
		with: anArrayOfObject
		do: [ :aNode :aValue | self assign: aValue to: aNode name node: aNode ]