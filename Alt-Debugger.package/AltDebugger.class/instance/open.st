user interface
open
	"Open the window, as simple as that. Still missing the inspector part."

	| pane subPane right |
	pane := AlignmentMorph newColumn
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		cellPositioning: #leftCenter;
		color: Color transparent;
		layoutInset: 0;
		yourself.
	subPane := Morph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		fillStyle: Color transparent;
		changeProportionalLayout;
		yourself.	"non pane color tracking"
	pane addMorph: subPane.
	pane addMorph: self buttons.
	right := Morph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: 0;
		changeProportionalLayout;
		color: Color transparent;
		yourself.	"non pane color tracking"
	window := Smalltalk ui theme
		newWindowIn: World
		for: self
		title: self title.
	window
		addMorph: pane
		fullFrame:
			(AltLayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				topLeftOffsets: 0 @ 0
				bottomRightOffsets: 0 @ 0).
	right
		addMorph: self inspectorMorph
		fullFrame:
			(AltLayoutFrame
				fractions: (0 @ 1 corner: 1 @ 1)
				topLeftOffsets: 0 @ -198
				bottomRightOffsets: 0 @ 0).
	right
		addMorph: self textMorph
		fullFrame:
			(AltLayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				topLeftOffsets: 0 @ 0
				bottomRightOffsets: 0 @ -201).
	self stackMorph
		on: #keyStroke
		send: #startSearch:for:
		to: AltKeyboardSearchInTree.
	subPane
		addMorph: self stackMorph
		fullFrame:
			(AltLayoutFrame
				fractions: (0.0 @ 0.0 corner: 0.3 @ 1.0)
				topLeftOffsets: 1 @ 0
				bottomRightOffsets: -1 @ 0).
	subPane
		addMorph: right
		fullFrame:
			(AltLayoutFrame
				fractions: (0.3 @ 0.0 corner: 1.0 @ 1.0)
				topLeftOffsets: 1 @ 1
				bottomRightOffsets: -1 @ 0).
	subPane
		addMorph:
			(ProportionalSplitterMorph new
				layoutFrame:
					(AltLayoutFrame
						fractions: (0.3 @ 0.0 corner: 0.3 @ 1.0)
						topLeftOffsets: -1 @ 0
						bottomRightOffsets: 1 @ 0);
				addLeftOrTop: self stackMorph;
				addRightOrBottom: self textMorph).
	window minimumExtent: 200 @ 300.
	window announcer when: WindowClosed send: #release to: self.
	window open.
	self
		updateStackKeymap;
		updateTextKeymap;
		updateSelection.
	self stackMorph takeKeyboardFocus