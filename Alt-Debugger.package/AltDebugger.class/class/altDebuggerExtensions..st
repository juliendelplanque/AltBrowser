examples
altDebuggerExtensions: anAltDebugger
	"This is a way to add buttons to a debugger, to extend it based on the receiver."
	
	"How does this works? Each time a context is selected, the receiver of the context
	is tested to see if it holds that method. If yes, the method is executed and the resulting
	morphs are added to the GUI. When that context is deselected, the morphs are deleted."
	
	"Why don't I use a pragma for that? Because pragmas, used in that way, are the
	same as testing for #respondsTo:. The only thing pragmas allow when used in that
	way is multi-package extensibility... pragmas aren't used anymore in the way
	expected by the pragmas creator."
	
	"Beware: any error there triggers an overall failure. I will try to find a way to encapsulate that into a better approach."

	| aButton |
	aButton := PluggableButtonMorph
		on: self class >> #altDebuggerExtensions:
		getState: nil
		action: #browse.
	aButton
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		label: 'Browse'.
	^ Array with: aButton