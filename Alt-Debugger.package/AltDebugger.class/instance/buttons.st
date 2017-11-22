user interface
buttons
	"Create the command buttons as required. Maybe plug it into the command framework later."
	
	| aDebuggerProceedButton aDebuggerRestartButton aDebuggerIntoButton aDebuggerOverButton aDebuggerThroughButton aDebuggerRunToHereButton aDebuggerWhereIsButton |
	aDebuggerProceedButton := self pluggableButtonDo: #proceed named: 'Proceed'.
	aDebuggerRestartButton := self pluggableButtonDo: #restart named: 'Restart'.
	aDebuggerIntoButton := self pluggableButtonDo: #into named: 'Into'.	
	aDebuggerOverButton := self pluggableButtonDo: #over named: 'Over'.
	aDebuggerThroughButton := self pluggableButtonDo: #through named: 'Through'.
	aDebuggerRunToHereButton := self pluggableButtonDo: #runToHere named: 'Run to here'.	
	aDebuggerWhereIsButton := self pluggableButtonDo: #whereIs named: 'Where is?'.	
	^ (toolbar := AlignmentMorph newRow
				vResizing: #shrinkWrap;
				hResizing: #spaceFill;
				layoutInset: 0;
				addMorph: aDebuggerWhereIsButton;
				addMorph: aDebuggerRunToHereButton;
				addMorph: aDebuggerThroughButton;
				addMorph: aDebuggerOverButton;
				addMorph: aDebuggerIntoButton;
				addMorph: aDebuggerRestartButton;
				addMorph: aDebuggerProceedButton;
				yourself)