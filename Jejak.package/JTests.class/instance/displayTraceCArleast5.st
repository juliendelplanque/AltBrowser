displaying
displayTraceCArleast5
	"Test tracing on the array."

	"JTests new displayTraceCArleast5"

	JCollecteur recorder: JRecorder new.
	#(#rleast: #reorder: #least:array2:)
		do: [ :e | JVariableProbesWriter analyse: JExampleArray >> e ].
	self testCArleast5.
	JViewer open.
	JProbesWriter uninstall