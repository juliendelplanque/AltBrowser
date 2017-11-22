examples
altDebuggerExtensions: anAltDebugger
	"This is a way to add buttons to a debugger, to extend it based on the receiver."

	| aButton |
	aButton := PluggableButtonMorph
		on: anAltDebugger
		getState: nil
		action: #nothing.
	aButton
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		label: 'Nothing'.
	^ Array with: aButton