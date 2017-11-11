user interface
groupMorph
	"Build the group morph containing the two sub-windows."

	| group |
	group := Morph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		fillStyle: Color transparent;
		changeProportionalLayout;
		yourself.	"non pane color tracking"
	self textMorph styler workspace: self.
	self treeMorph
		on: #keyStroke
		send: #startSearch:for:
		to: AltKeyboardSearchInTree.
	group
		addMorph: self treeMorph
		fullFrame:
			(AltLayoutFrame
				fractions: (0.0 @ 0.0 corner: 1.0 @ 0.8)
				topLeftOffsets: 1 @ 0
				bottomRightOffsets: -1 @ -1).
	group
		addMorph: self textMorph
		fullFrame:
			(AltLayoutFrame
				fractions: (0.0 @ 0.8 corner: 1.0 @ 1.0)
				topLeftOffsets: 1 @ 1
				bottomRightOffsets: -1 @ 0).
	group
		addMorph:
			(ProportionalSplitterMorph new
				beSplitsTopAndBottom;
				layoutFrame:
					(AltLayoutFrame
						fractions: (0.0 @ 0.8 corner: 1.0 @ 0.8)
						topLeftOffsets: -1 @ -1
						bottomRightOffsets: 1 @ 1);
				addLeftOrTop: self treeMorph;
				addRightOrBottom: self textMorph).
	group minimumExtent: 200 @ 200.
	self
		updateTreeKeymap;
		updateTextKeymap;
		updateSelection.
	^ group