user interface
buttons
	"Create the command buttons as required. Maybe plug it into the command framework later."

	| anEraseEventsButton anUpdateButton |
	anEraseEventsButton := self
		pluggableButtonDo: #eraseEvents
		named: 'Erase events'.
	removeProbesButton := self
		pluggableButtonDo: #removeProbes
		named: 'Remove Probes'.
	JInstrumentedMethods announcer
		when: JMethodAdded , JMethodRemoved , JAllMethodsRemoved
		send: #updateProbes
		to: self.
	self updateProbes.
	anUpdateButton := self pluggableButtonDo: #update named: 'Update'.
	^ AlignmentMorph newRow
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		layoutInset: 0;
		addMorph: anUpdateButton;
		addMorph: removeProbesButton;
		addMorph: anEraseEventsButton;
		yourself