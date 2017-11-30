user interface
buttons
	"Create the command buttons as required. Maybe plug it into the command framework later."

	| anEraseEventsButton aRemoveProbesButton anUpdateButton |
	anEraseEventsButton := self
		pluggableButtonDo: #eraseEvents
		named: 'Erase events'.
	aRemoveProbesButton := self
		pluggableButtonDo: #removeProbes
		named: 'Remove Probes'.
	anUpdateButton := self pluggableButtonDo: #update named: 'Update'.
	^ AlignmentMorph newRow
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		layoutInset: 0;
		addMorph: anUpdateButton;
		addMorph: aRemoveProbesButton;
		addMorph: anEraseEventsButton;
		yourself