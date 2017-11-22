actions
runToHere
	"Still has to implement this."

	self session
		runToSelection: textMorph trueSelectionInterval
		inContext: self currentContext.
	self whereIs.
	self updateSelection