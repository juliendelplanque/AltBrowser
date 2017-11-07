user interface
open
	"Open the window, as simple as that. Still missing the inspector part."

	| pane group |
	pane := PanelMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		fillStyle: Color transparent;
		changeTableLayout;
		cellInset: 3 @ 3;
		cellPositioning: #leftCenter;
		yourself.	"non pane color tracking"
	group := Morph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		fillStyle: Color transparent;
		changeProportionalLayout;
		yourself.	"non pane color tracking"
	window := Smalltalk ui theme
		newWindowIn: World
		for: self
		title: self title.
	window addMorph: pane frame: (0 @ 0 corner: 1 @ 1).
	self textMorph styler workspace: self.
	self stackMorph
		on: #keyStroke
		send: #startSearch:for:
		to: AltKeyboardSearchInTree.
	pane addMorph: group.
	group
		addMorph: self stackMorph
		fullFrame:
			(AltLayoutFrame
				fractions: (0.0 @ 0.0 corner: 0.3 @ 1.0)
				topLeftOffsets: 1 @ 0
				bottomRightOffsets: -1 @ 0).
	group
		addMorph: self textMorph
		fullFrame:
			(AltLayoutFrame
				fractions: (0.3 @ 0.0 corner: 1.0 @ 1.0)
				topLeftOffsets: 1 @ 1
				bottomRightOffsets: -1 @ 0).
	group
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