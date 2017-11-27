examples
exampleTree3
	"AltTreeTests exampleTree1"

	"This is exactly the same example than the FT tree one."

	<example>
	| tree morph |
	tree := AltBlockItemExample new.
	tree contents: #().
	morph := AltListMorph new.
	morph model: tree.
	morph extent: 300 @ 700.
	morph openInWindow.
	^ morph